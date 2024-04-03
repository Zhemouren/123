module godson_mcu_top (
	input         CLK50M,
	input         RSTN, 
	output        pps_led,
	
	input  		  LJTAG_TRST,
	inout  		  LJTAG_TMS, LJTAG_TDO, LJTAG_TDI, LJTAG_TCK,

	output        led0
);

	parameter ADDR_APB = 32,
			  DATA_APB_8 = 8,
			  DATA_APB_32 = 32;
    parameter RESET_TIME = 40000000;// 5s

	wire    		clk_ext8m;
    wire 	[5:0]  	interrupt = 6'h00;

	reg 	[29:0] 	rst_cnt = 0;
	reg 	[22:0] 	cnt = 0;
	
	always @(posedge CLK50M or negedge RSTN)
	begin
        if(!RSTN) rst_cnt <= 0;
		else if(rst_cnt==RESET_TIME) rst_cnt <= rst_cnt;
		else rst_cnt <= rst_cnt + 1;
	end
	
	wire por_rst_n = (rst_cnt == RESET_TIME) ? 1'b1 : 1'b0;
	
	always @(posedge clk_ext8m)
		begin
			cnt <= cnt + 1;
		end
		
	assign pps_led = cnt[21];

    wire 			pll_lock;
    
	Gowin_PLL  pll_CLK50M_to_8M(
        .lock		(pll_lock),    //output lock
        .clkout0	(clk_ext8m),//output clkout0
        .clkin		(CLK50M), 	//input clkin
        .reset		(~por_rst_n)  //input reset
    );

	wire          			  apb0_psel;
	wire [ADDR_APB-1:0]       apb0_paddr;
	wire           			  apb0_pwrite;
	wire           			  apb0_penable;
	wire [DATA_APB_32-1:0]    apb0_pwdata;
	wire [DATA_APB_32-1:0]    apb0_prdata;
	wire           apb0_ack = apb0_penable;

	godson_mcu_cpu A_cpu
	(
		.reset            (pll_lock         ),// (por_rst_n        ),
		.clock            (clk_ext8m        ),

		.ljtag_trst_i     (LJTAG_TRST       ),
		.ljtag_tms_i      (LJTAG_TMS        ),
		.ljtag_tdo_o      (LJTAG_TDO        ),
		.ljtag_tdi_i      (LJTAG_TDI        ),
		.ljtag_tck_i      (LJTAG_TCK        ),

		.apb0_psel        (apb0_psel        ),
		.apb0_paddr       (apb0_paddr       ),
		.apb0_pwrite      (apb0_pwrite      ),
		.apb0_penable     (apb0_penable     ),
		.apb0_pwdata      (apb0_pwdata      ),
		.apb0_prdata      (apb0_prdata      ),
		.apb0_ack         (apb0_ack         ),

		.interrupt        (interrupt        )
	);
	
	

	assign led0 = apb0_pwdata[0];

endmodule


