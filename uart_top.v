// Copyright 2017 ETH Zurich and University of Bologna.
// -- Adaptable modifications made for hbirdv2 SoC. -- 
// Copyright 2020 Nuclei System Technology, Inc.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the 鈥淟icense鈥�); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an 鈥淎S IS鈥� BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

module UART_TOP 
#(
    parameter APB_ADDR_WIDTH = 32  
)
(
    input  wire                        apb_pclk,     	
    input  wire                        apb_prstn,    	
    input  wire [APB_ADDR_WIDTH - 1:0] apb_paddr,   	
    input  wire [31:0]                 apb_pwdata,  	
    input  wire                        apb_pwrite,  	
    input  wire                        apb_psel,    
    input  wire                        apb_penable, 	
    output reg [31:0]                  apb_prdata,  	
    //output wire                        PREADY,
    //output wire                        PSLVERR,
    input  wire                        RsRx,     // Receiver input
    output wire                        RsTx,     // Transmitter output
    output wire                        uart_irq   // interrupt/event output

);

    // register addresses
    parameter RBR = 3'h0, THR = 3'h0, DLL = 3'h0, IER = 3'h1, DLM = 3'h1, IIR = 3'h2,
              FCR = 3'h2, LCR = 3'h3, MCR = 3'h4, LSR = 3'h5, MSR = 3'h6, SCR = 3'h7;

    parameter TX_FIFO_DEPTH = 16; // in bytes
    parameter RX_FIFO_DEPTH = 16; // in bytes


    wire [2:0]  register_adr;
    reg  [79:0] regs_q, regs_n;
    reg  [1:0]  trigger_level_n, trigger_level_q;


    // receive buffer register, read only
    wire [7:0]  rx_data;
    // parity error
    wire        parity_error;
    wire [3:0]  IIR_o;
    reg  [3:0]  clr_int;
    // tx flow control
    wire        tx_ready;
    // rx flow control
    reg         apb_rx_ready;
    wire        rx_valid;

    reg         tx_fifo_clr_n, tx_fifo_clr_q;
    reg         rx_fifo_clr_n, rx_fifo_clr_q;

    reg         fifo_tx_valid;
    wire        tx_valid;
    wire        fifo_rx_valid;
    reg         fifo_rx_ready;
    wire        rx_ready;

    reg  [7:0]  fifo_tx_data;
    wire [8:0]  fifo_rx_data;
    wire [7:0]  tx_data;

    wire [$clog2(TX_FIFO_DEPTH):0] tx_elements;
    wire [$clog2(RX_FIFO_DEPTH):0] rx_elements;

    // TODO: check that stop bits are really not necessary here
    uart_rx uart_rx_i(
        .clk_i            ( apb_pclk                                                      ),
        .rstn_i           ( apb_prstn                                                     ),
        .rx_i             ( RsRx                                                     ),
        .cfg_en_i         ( 1'b1                                                     ),
        .cfg_div_i        ( {regs_q[(DLM + 'd8) * 8+:8], regs_q[(DLL + 'd8) * 8+:8]} ),
        .cfg_parity_en_i  ( regs_q[(LCR * 8) + 3]                                    ),
        .cfg_parity_sel_i ( regs_q[(LCR * 8) + 5-:2]                                 ),
        .cfg_bits_i       ( regs_q[(LCR * 8) + 1-:2]                                 ),
        // .cfg_stop_bits_i    ( regs_q[(LCR * 8) + 2]                               ),
        .busy_o           (                                                          ),
        .err_o            ( parity_error                                             ),
        .err_clr_i        ( 1'b0                                                     ),
        .rx_data_o        ( rx_data                                                  ),
        .rx_valid_o       ( rx_valid                                                 ),
        .rx_ready_i       ( rx_ready                                                 )
    );

    uart_tx uart_tx_i(
        .clk_i            ( apb_pclk                                                      ),
        .rstn_i           ( apb_prstn                                                     ),
        .tx_o             ( RsTx                                                     ),
        .busy_o           (                                                          ),
        .cfg_en_i         ( 1'b1                                                     ),
        .cfg_div_i        ( {regs_q[(DLM + 'd8) * 8+:8], regs_q[(DLL + 'd8) * 8+:8]} ),
        .cfg_parity_en_i  ( regs_q[(LCR * 8) + 3]                                    ),
        .cfg_parity_sel_i ( regs_q[(LCR * 8) + 5-:2]                                 ),
        .cfg_bits_i       ( regs_q[(LCR * 8) + 1-:2]                                 ),
        .cfg_stop_bits_i  ( regs_q[(LCR * 8) + 2]                                    ),
        .tx_data_i        ( tx_data                                                  ),
        .tx_valid_i       ( tx_valid                                                 ),
        .tx_ready_o       ( tx_ready                                                 )
    );

    io_generic_fifo #(
        .DATA_WIDTH       (9),
        .BUFFER_DEPTH     (RX_FIFO_DEPTH)
    ) uart_rx_fifo_i(
        .clk_i            ( apb_pclk                                    ),
        .rstn_i           ( apb_prstn                                   ),
        .clr_i            ( rx_fifo_clr_q                          ),
        .elements_o       ( rx_elements                            ),
        .data_o           ( fifo_rx_data                           ),
        .valid_o          ( fifo_rx_valid                          ),
        .ready_i          ( fifo_rx_ready                          ),
        .valid_i          ( rx_valid                               ),
        .data_i           ( {parity_error, rx_data}                ),
        .ready_o          ( rx_ready                               )
    );

    io_generic_fifo #(
        .DATA_WIDTH       (8),
        .BUFFER_DEPTH     (TX_FIFO_DEPTH)
    ) uart_tx_fifo_i(
        .clk_i            ( apb_pclk                                    ),
        .rstn_i           ( apb_prstn                                   ),
        .clr_i            ( tx_fifo_clr_q                          ),
        .elements_o       ( tx_elements                            ),
        .data_o           ( tx_data                                ),
        .valid_o          ( tx_valid                               ),
        .ready_i          ( tx_ready                               ),
        .valid_i          ( fifo_tx_valid                          ),
        .data_i           ( fifo_tx_data                           ),
        // not needed since we are getting the status via the fifo population
        .ready_o          (                                        )
    );

    uart_interrupt #(
        .TX_FIFO_DEPTH    (TX_FIFO_DEPTH),
        .RX_FIFO_DEPTH    (RX_FIFO_DEPTH)
    ) uart_interrupt_i(
        .clk_i            ( apb_pclk                                    ),
        .rstn_i           ( apb_prstn                                   ),
        .IER_i            ( regs_q[(IER * 8) + 2-:3]               ),    // interrupt enable register
        .error_i          ( regs_n[(LSR * 8) + 2]                  ),
        .rx_elements_i    ( rx_elements                            ),
        .tx_elements_i    ( tx_elements                            ),
        .trigger_level_i  ( trigger_level_q                        ),
        .clr_int_i        ( clr_int                                ),    // one hot
        .interrupt_o      ( uart_irq                                ),
        .IIR_o            ( IIR_o                                  )
    );

    // UART Registers
    // register write and update logic
    always @(*) begin
        regs_n          = regs_q;
        trigger_level_n = trigger_level_q;

        fifo_tx_valid   = 1'b0;        
        tx_fifo_clr_n   = 1'b0; // self clearing
        rx_fifo_clr_n   = 1'b0; // self clearing

        // rx status
        regs_n[LSR * 8] = fifo_rx_valid; // fifo is empty

        // parity error on receiving part has occured
        regs_n[(LSR * 8) + 2] = fifo_rx_data[8];            // parity error is detected when element is retrieved

        // tx status register
        regs_n[(LSR * 8) + 5] = ~(|tx_elements);            // fifo is empty
        regs_n[(LSR * 8) + 6] = tx_ready & ~(|tx_elements); // shift register and fifo are empty

        if (apb_psel && apb_penable && apb_pwrite)
        begin
            case (register_adr)
                THR: // either THR or DLL
                begin
		    if (regs_q[(LCR * 8) + 7]) begin // Divisor Latch Access Bit (DLAB)
                        regs_n[(DLL + 'd8) * 8+:8] = apb_pwdata[7:0];
		    end else begin
                        fifo_tx_data  = apb_pwdata[7:0];
                        fifo_tx_valid = 1'b1;
                    end
                end

                IER: // either IER or DLM
                begin
                    if (regs_q[(LCR * 8) + 7]) // Divisor Latch Access Bit (DLAB)
                        regs_n[(DLM + 'd8) * 8+:8] = apb_pwdata[7:0];
                    else
                        regs_n[IER * 8+:8] = apb_pwdata[7:0];
                end

                LCR:
                    regs_n[LCR * 8+:8] = apb_pwdata[7:0];

                FCR: // write only register, fifo control register
                begin
                    rx_fifo_clr_n   = apb_pwdata[1];
                    tx_fifo_clr_n   = apb_pwdata[2];
                    trigger_level_n = apb_pwdata[7:6];
                end
            endcase
        end

    end


    // register read logic
    always @(*) begin
        apb_prdata        = 'b0;
        apb_rx_ready  = 1'b0;
        fifo_rx_ready = 1'b0;
        clr_int       = 4'b0;

        if (apb_psel && apb_penable && !apb_pwrite)
        begin
            case (register_adr)
                RBR: // either RBR or DLL
                begin
                    if (regs_q[(LCR * 8) + 7]) // Divisor Latch Access Bit (DLAB)
                        apb_prdata = {24'b0, regs_q[(DLL + 'd8) * 8+:8]};
		    else begin
                        fifo_rx_ready = 1'b1;
                        apb_prdata        = {24'b0, fifo_rx_data[7:0]};
                        clr_int       = 4'b1000; // clear Received Data Available interrupt
                    end
                end

                LSR: // Line Status Register
                begin
                    apb_prdata  = {24'b0, regs_q[LSR * 8+:8]};
                    clr_int = 4'b1100; // clear parrity interrupt error
                end

                LCR: // Line Control Register
                    apb_prdata = {24'b0, regs_q[LCR * 8+:8]};

                IER: // either IER or DLM
                begin
                    if (regs_q[(LCR * 8) + 7]) // Divisor Latch Access Bit (DLAB)
                        apb_prdata = {24'b0, regs_q[(DLM + 'd8) * 8+:8]};
                    else
                        apb_prdata = {24'b0, regs_q[IER * 8+:8]};
                end

                IIR: // interrupt identification register read only
                begin
                    apb_prdata  = {24'b0, 1'b1, 1'b1, 2'b0, IIR_o};
                    clr_int = 4'b0100; // clear Transmitter Holding Register Empty
                end

                default: 
                    apb_prdata = 'b0;
            endcase
        end
    end


    // synchronouse part
    always @(posedge apb_pclk or negedge apb_prstn) begin
	if(~apb_prstn) begin

            regs_q[IER * 8+:8] <= 8'h00;
            regs_q[IIR * 8+:8] <= 8'h01;
            regs_q[LCR * 8+:8] <= 8'h00;
            regs_q[MCR * 8+:8] <= 8'h00;
            regs_q[LSR * 8+:8] <= 8'h60;
            regs_q[MSR * 8+:8] <= 8'h00;
            regs_q[SCR * 8+:8] <= 8'h00;
            regs_q[(DLM + 'd8) * 8+:8] <= 8'h00;
            regs_q[(DLL + 'd8) * 8+:8] <= 8'h00;

            trigger_level_q   <= 2'b00;
            tx_fifo_clr_q     <= 1'b0;
            rx_fifo_clr_q     <= 1'b0;

        end else begin
            regs_q          <= regs_n;
            trigger_level_q <= trigger_level_n;
            tx_fifo_clr_q   <= tx_fifo_clr_n;
            rx_fifo_clr_q   <= rx_fifo_clr_n;
        end
    end	  


    assign register_adr = {apb_paddr[2:0]};
    // APB logic: we are always ready to capture the data into our regs
    // not supporting transfare failure
    //assign PREADY       = 1'b1;
    //assign PSLVERR      = 1'b0;

endmodule
