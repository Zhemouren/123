`include"H:/GOWIN/Project/loongxin3/src/hw/config.v"
`timescale 1ns/1ps
module godson_mcu_cpu (
    input         clock,
    input         reset,
	input			soft_reset,
    input         ljtag_trst_i,
    input         ljtag_tms_i,
    output        ljtag_tdo_o,
    input         ljtag_tdi_i,
    input         ljtag_tck_i,
	// output        led0,

	inout		  GPIO01,
	inout         GPIO13,
	inout           GPIO14,
	inout           GPIO15,
	inout           GPIO16,
	inout           GPIO17,
	inout         GPIO18,
	inout         GPIO19,
	inout         GPIO20,
	inout         GPIO34,
	inout         GPIO35,
	inout         GPIO36,
	inout         GPIO37,
	inout         GPIO38,
	inout         GPIO39,
	inout         GPIO40,

	// inout [31:0]  GPIOA,
	// inout [31:0]  GPIOB, 
	output wire 	SPI_CLK,  
	input  wire 	SPI_MISO, 
	output wire 	SPI_MOSI, 
	output wire 	SPI_CSN1, 
	output wire 	SPI_CSN2, 
	output wire 	SPI_CSN3,
	
    input 			fft_clk   ,
    input 			dac_clk   ,
    input			comp_in   ,
    output 	wire	ad_pwm    ,	

	inout	wire  	I2C_SCL,
	inout   wire  	I2C_SDA,
	inout	wire	SDA,
	output	wire	SCL,
	output	wire	PWM01,
	input	wire  	RsRx,
	output	wire  	RsTx

);
	
	wire[31:0]  				GPIOB;
	wire						RsRx0;
	wire						RsTx0;
	wire					  uart_irq;
	wire 					  i2c_int;
	wire					  spi_int;
	wire					  timer_int;
  //wire					  i2c_int;		//前面有了
	wire					  uart1_int;
	wire					  uart0_int;


	//AXI
	wire [`LID         -1 :0] s1_awid	;
	wire [`Lawaddr     -1 :0] s1_awaddr	;
	wire [`Lawlen      -1 :0] s1_awlen	;
	wire [`Lawsize     -1 :0] s1_awsize	;
	wire [`Lawburst    -1 :0] s1_awburst;
	wire [`Lawlock     -1 :0] s1_awlock	;
	wire [`Lawcache    -1 :0] s1_awcache;
	wire [`Lawprot     -1 :0] s1_awprot	;
	wire                      s1_awvalid;
	wire                      s1_awready;
	wire [`LID         -1 :0] s1_wid	;
	wire [`Lwdata      -1 :0] s1_wdata	;
	wire [`Lwstrb      -1 :0] s1_wstrb	;
	wire                      s1_wlast	;
	wire                      s1_wvalid	;
	wire                      s1_wready	;
	wire [`LID         -1 :0] s1_bid	;
	wire [`Lbresp      -1 :0] s1_bresp	;
	wire                      s1_bvalid	;
	wire                      s1_bready	;
	wire [`LID         -1 :0] s1_arid	;
	wire [`Laraddr     -1 :0] s1_araddr	;
	wire [`Larlen      -1 :0] s1_arlen	;
	wire [`Larsize     -1 :0] s1_arsize	;
	wire [`Larburst    -1 :0] s1_arburst;
	wire [`Larlock     -1 :0] s1_arlock	;
	wire [`Larcache    -1 :0] s1_arcache;
	wire [`Larprot     -1 :0] s1_arprot	;
	wire                      s1_arvalid;
	wire                      s1_arready;
	wire [`LID         -1 :0] s1_rid	;
	wire [`Lrdata      -1 :0] s1_rdata	;
	wire [`Lrresp      -1 :0] s1_rresp	;
	wire                      s1_rlast	;
	wire                      s1_rvalid	;
	wire                      s1_rready	;

	wire [`LID         -1 :0] cpu_awid;
	wire [`Lawaddr     -1 :0] cpu_awaddr;
	wire [`Lawlen      -1 :0] cpu_awlen;
	wire [`Lawsize     -1 :0] cpu_awsize;
	wire [`Lawburst    -1 :0] cpu_awburst;
	wire [`Lawlock     -1 :0] cpu_awlock;
	wire [`Lawcache    -1 :0] cpu_awcache;
	wire [`Lawprot     -1 :0] cpu_awprot;
	wire                      cpu_awvalid;
	wire                      cpu_awready;
	wire [`LID         -1 :0] cpu_wid;
	wire [`Lwdata      -1 :0] cpu_wdata;
	wire [`Lwstrb      -1 :0] cpu_wstrb;
	wire                      cpu_wlast;
	wire                      cpu_wvalid;
	wire                      cpu_wready;
	wire [`LID         -1 :0] cpu_bid;
	wire [`Lbresp      -1 :0] cpu_bresp;
	wire                      cpu_bvalid;
	wire                      cpu_bready;
	wire [`LID         -1 :0] cpu_arid;
	wire [`Laraddr     -1 :0] cpu_araddr;
	wire [`Larlen      -1 :0] cpu_arlen;
	wire [`Larsize     -1 :0] cpu_arsize;
	wire [`Larburst    -1 :0] cpu_arburst;
	wire [`Larlock     -1 :0] cpu_arlock;
	wire [`Larcache    -1 :0] cpu_arcache;
	wire [`Larprot     -1 :0] cpu_arprot;
	wire                      cpu_arvalid;
	wire                      cpu_arready;
	wire [`LID         -1 :0] cpu_rid;
	wire [`Lrdata      -1 :0] cpu_rdata;
	wire [`Lrresp      -1 :0] cpu_rresp;
	wire                      cpu_rlast;
	wire                      cpu_rvalid;
	wire                      cpu_rready;

	wire [`LID         -1 :0] apb_awid;
	wire [`Lawaddr     -1 :0] apb_awaddr;
	wire [`Lawlen      -1 :0] apb_awlen;
	wire [`Lawsize     -1 :0] apb_awsize;
	wire [`Lawburst    -1 :0] apb_awburst;
	wire [`Lawlock     -1 :0] apb_awlock;
	wire [`Lawcache    -1 :0] apb_awcache;
	wire [`Lawprot     -1 :0] apb_awprot;
	wire                      apb_awvalid;
	wire                      apb_awready;
	wire [`LID         -1 :0] apb_wid;
	wire [`Lwdata      -1 :0] apb_wdata;
	wire [`Lwstrb      -1 :0] apb_wstrb;
	wire                      apb_wlast;
	wire                      apb_wvalid;
	wire                      apb_wready;
	wire [`LID         -1 :0] apb_bid;
	wire [`Lbresp      -1 :0] apb_bresp;
	wire                      apb_bvalid;
	wire                      apb_bready;
	wire [`LID         -1 :0] apb_arid;
	wire [`Laraddr     -1 :0] apb_araddr;
	wire [`Larlen      -1 :0] apb_arlen;
	wire [`Larsize     -1 :0] apb_arsize;
	wire [`Larburst    -1 :0] apb_arburst;
	wire [`Larlock     -1 :0] apb_arlock;
	wire [`Larcache    -1 :0] apb_arcache;
	wire [`Larprot     -1 :0] apb_arprot;
	wire                      apb_arvalid;
	wire                      apb_arready;
	wire [`LID         -1 :0] apb_rid;
	wire [`Lrdata      -1 :0] apb_rdata;
	wire [`Lrresp      -1 :0] apb_rresp;
	wire                      apb_rlast;
	wire                      apb_rvalid;
	wire                      apb_rready;
	

	wire 					  apd_clk;		//add by zhemou
	wire					  apb_reset_n;	//add by zhemou
	wire                      apb_ack;
	wire                      apb_rw;
	wire                      apb_psel;
	wire                      apb_enab;
	wire [`ADDR_APB-1:0]      apb_addr;
	wire [`DATA_APB-1:0]      apb_datai;
	wire [`DATA_APB-1:0]      apb_datao;



	wire                      inst_sram_en;
	wire [ 3:0]               inst_sram_strb;
	wire [31:0]               inst_sram_wdata;
	wire [31:0]               inst_sram_rdata;
	wire                      inst_sram_wr;
	wire                      inst_sram_fetch;
	wire [31:0]               inst_sram_addr;
	wire                      inst_sram_rrdy = 1'b1;
	wire                      inst_sram_ack  = 1'b1;
	wire                      inst_sram_resp = 1'b0;
	wire                      inst_ram_clk = clock;

	wire                      data_sram_en;
	wire [ 3:0]               data_sram_strb;
	wire [31:0]               data_sram_wdata;
	wire [31:0]               data_sram_rdata;
	wire                      data_sram_wr;
	wire                      data_sram_fetch;
	wire [31:0]               data_sram_addr;
	wire                      data_sram_ack = 1'b1;
	wire                      data_sram_rrdy = 1'b1;
	wire                      data_sram_resp = 1'b0;
	wire                      data_ram_clk = clock;

	wire        apb0_psel		;
    wire [31:0] apb0_paddr	;
    wire        apb0_pwrite	;
	wire        apb0_penable	;
    wire [31:0] apb0_pwdata	;
    wire [31:0] apb0_prdata	;
    wire        apb0_ack		;
    wire        apb1_psel		;
    wire [31:0] apb1_paddr	;
    wire        apb1_pwrite	;
	wire        apb1_penable	;
    wire [31:0] apb1_pwdata	;
    wire [31:0] apb1_prdata	;
    wire        apb1_ack		;

    wire        apb2_psel		;
    wire [31:0] apb2_paddr	;
    wire        apb2_pwrite	;
	wire        apb2_penable	;
    wire [31:0] apb2_pwdata	;
    wire [31:0] apb2_prdata	;
    wire        apb2_ack		;

    wire        apb3_psel		;
    wire [31:0] apb3_paddr	;
    wire        apb3_pwrite	;
	wire        apb3_penable	;
    wire [31:0] apb3_pwdata	;
    wire [31:0] apb3_prdata	;
    wire        apb3_ack		;

    wire        apb4_psel		;
    wire [31:0] apb4_paddr	;
    wire        apb4_pwrite	;
	wire        apb4_penable	;
    wire [31:0] apb4_pwdata	;
    wire [31:0] apb4_prdata	;
    wire        apb4_ack		;

    wire        apb5_psel		;
    wire [31:0] apb5_paddr	;
    wire        apb5_pwrite	;
	wire        apb5_penable	;
    wire [31:0] apb5_pwdata	;
    wire [31:0] apb5_prdata	;
    wire        apb5_ack		;

	wire        apb6_psel		;
    wire [31:0] apb6_paddr	;
    wire        apb6_pwrite	;
	wire        apb6_penable	;
    wire [31:0] apb6_pwdata	;
    wire [31:0] apb6_prdata	;
    wire        apb6_ack		;

	wire        apb7_psel		;
    wire [31:0] apb7_paddr	;
    wire        apb7_pwrite	;
	wire        apb7_penable	;
    wire [31:0] apb7_pwdata	;
    wire [31:0] apb7_prdata	;
    wire        apb7_ack		;

	wire        apb8_psel		;
    wire [31:0] apb8_paddr	;
    wire        apb8_pwrite	;
	wire        apb8_penable	;
    wire [31:0] apb8_pwdata	;
    wire [31:0] apb8_prdata	;
    wire        apb8_ack		;






	Flash_64k A_flash
    (
		.CLKin            (inst_ram_clk          ),
		.DO               (inst_sram_rdata       ),
		.AD               (inst_sram_addr        ),
		.STRB             (inst_sram_strb        ),
		.DI               (inst_sram_wdata       ),
		.EN               (inst_sram_en          ),
		.R_WB             (inst_sram_wr          ),
		.reset            (reset	&	soft_reset		 ) 
    );
	
    Dram_8k A_dram
    (
		.CLKin            (data_ram_clk          ),
		.DO               (data_sram_rdata       ),
		.AD               (data_sram_addr        ),
		.STRB             (data_sram_strb        ),
		.DI               (data_sram_wdata       ),
		.EN               (data_sram_en          ),
		.R_WB             (data_sram_wr          ),
		.reset            (reset	&soft_reset			 ) 
    );

	wire [31:0] fetch_pc;
	wire        sleeping_o;
	wire [31:0]   debug_pc;


	la132_top  A_la132
	(
		.boot_pc          (32'h1c000000        ),
		.clk              (clock           	   ),
		.clk_count        (clock           	   ),
		.hard_resetn      (reset               ),
		.soft_resetn      (soft_reset			),

		.sleeping         (sleeping_o          ),
		.cpu_fetch_pc     (fetch_pc            ),
		.wb_pc            (debug_pc            ),
		.mode_lisa        (1'b1                ), 
		.inst_xor         (32'b0               ),

		.nmi              (1'b0                ),
		.ext_int          (interrupt           ),

		.arid             (cpu_arid[3:0]       ),
		.araddr           (cpu_araddr          ),
		.arlen            (cpu_arlen           ),
		.arsize           (cpu_arsize          ),
		.arburst          (cpu_arburst         ),
		.arlock           (cpu_arlock          ),
		.arcache          (cpu_arcache         ),
		.arprot           (cpu_arprot          ),
		.arvalid          (cpu_arvalid         ),
		.arready          (cpu_arready         ),

		.rid              (cpu_rid[3:0]        ),
		.rdata            (cpu_rdata           ),
		.rresp            (cpu_rresp           ),
		.rlast            (cpu_rlast           ),
		.rvalid           (cpu_rvalid          ),
		.rready           (cpu_rready          ),

		.awid             (cpu_awid[3:0]       ),
		.awaddr           (cpu_awaddr          ),
		.awlen            (cpu_awlen           ),
		.awsize           (cpu_awsize          ),
		.awburst          (cpu_awburst         ),
		.awlock           (cpu_awlock          ),
		.awcache          (cpu_awcache         ),
		.awprot           (cpu_awprot          ),
		.awvalid          (cpu_awvalid         ),
		.awready          (cpu_awready         ),

		.wid              (cpu_wid[3:0]        ),
		.wdata            (cpu_wdata           ),
		.wstrb            (cpu_wstrb           ),
		.wlast            (cpu_wlast           ),
		.wvalid           (cpu_wvalid          ),
		.wready           (cpu_wready          ),

		.bid              (cpu_bid[3:0]        ),
		.bresp            (cpu_bresp           ),
		.bvalid           (cpu_bvalid          ),
		.bready           (cpu_bready          ),

		.inst_sram_en     (inst_sram_en        ),
		.inst_sram_wr     (inst_sram_wr        ),
		.inst_sram_fetch  (inst_sram_fetch     ),
		.inst_sram_strb   (inst_sram_strb      ),
		.inst_sram_addr   (inst_sram_addr      ),
		.inst_sram_wdata  (inst_sram_wdata     ),
		.inst_sram_rdata  (inst_sram_rdata     ),
		.inst_sram_ack    (inst_sram_ack      ),
		.inst_sram_rrdy   (inst_sram_rrdy     ),
		.inst_sram_resp   (inst_sram_resp      ),

		.data_sram_en     (data_sram_en        ),
		.data_sram_wr     (data_sram_wr        ),
		.data_sram_fetch  (data_sram_fetch     ),
		.data_sram_strb   (data_sram_strb      ),
		.data_sram_addr   (data_sram_addr      ),
		.data_sram_wdata  (data_sram_wdata     ),
		.data_sram_rdata  (data_sram_rdata     ),
		.data_sram_ack    (data_sram_ack       ),
		.data_sram_rrdy   (data_sram_rrdy      ),
		.data_sram_resp   (data_sram_resp      ),

		.trstn            (ljtag_trst_i        ),
		.tck              (ljtag_tck_i         ),
		.tdi              (ljtag_tdi_i         ),
		.tms              (ljtag_tms_i         ),
		.tdo              (ljtag_tdo_o         ),
		.ljtag_prrst      (ljtag_prrst_src     ),
		.ljtag_lock       (1'b0                ),

		.prid_revision    (4'd0  			   ),
		.cpunum           (10'b0         	   ),

		.ibus0_valid      (1'b1                ),
		.ibus0_base       (32'h1c00_0000       ), // va: 1c00_0000 & bfc0_0000
		.ibus0_mask       (32'h1f00_0000       ), // flash 128K, + 4 special page
		.ibus1_valid      (1'b1                ),
		.ibus1_base       (32'h9f00_0000       ), // va: 9fR0_0000 & bf00_0000
		.ibus1_mask       (32'hdff0_0000       ),
		.ibus2_valid      (1'b0            	   ), // flash_en
		.ibus2_base       (32'h9fe6_0000       ), // va: 9fe6_0000 & bfe6_0000
		.ibus2_mask       (32'hdfff_ff00       ),
		.ibus3_valid      (1'b0                ), // compact_mem&flash_en),
		.ibus3_base       (32'h8000_3000       ), // for va: 8000_30xx & 0000_00xx -> pa: 0000_30xx & 4000_00xx
		.ibus3_mask       (32'h7fff_ff00       ),
		.dbus0_valid      (1'b1                ),
		.dbus0_base       (32'h8000_0000       ),
		.dbus0_mask       (32'hdfff_e000       ), // 8K byte, for va: 8000_0000 & a000_0000 -> pa: 0000_0000
		.dbus1_valid      (1'b1                ),
		.dbus1_base       (32'h0000_0000       ),
		.dbus1_mask       (32'hffff_e000       ), // 8K byte, for va: 0000_0000             -> pa: 0000_0000
		.dbus2_valid      (1'b0                ), // unused
		.dbus2_base       (32'h0000_0000       ),
		.dbus2_mask       (32'h0000_0000       ),
		.dbus3_valid      (1'b0                ), // unused
		.dbus3_base       (32'h0000_0000       ),
		.dbus3_mask       (32'h0000_0000       ),

		.test_mode        (1'b0                )
	);


	axi_slave_mux_cpu A_cpu_mux
    (
		.axi_s_aclk       (clock               ),
		.axi_s_aresetn    (reset           	   ),
		.axi_s_awid       (cpu_awid            ),
		.axi_s_awaddr     (cpu_awaddr          ),
		.axi_s_awlen      (cpu_awlen           ),
		.axi_s_awsize     (cpu_awsize          ),
		.axi_s_awburst    (cpu_awburst         ),
		.axi_s_awlock     (cpu_awlock          ),
		.axi_s_awcache    (cpu_awcache         ),
		.axi_s_awprot     (cpu_awprot          ),
		.axi_s_awvalid    (cpu_awvalid         ),
		.axi_s_awready    (cpu_awready         ),
		.axi_s_wready     (cpu_wready          ),
		.axi_s_wid        (cpu_wid             ),
		.axi_s_wdata      (cpu_wdata           ),
		.axi_s_wstrb      (cpu_wstrb           ),
		.axi_s_wlast      (cpu_wlast           ),
		.axi_s_wvalid     (cpu_wvalid          ),
		.axi_s_bid        (cpu_bid             ),
		.axi_s_bresp      (cpu_bresp           ),
		.axi_s_bvalid     (cpu_bvalid          ),
		.axi_s_bready     (cpu_bready          ),
		.axi_s_arid       (cpu_arid            ),
		.axi_s_araddr     (cpu_araddr          ),
		.axi_s_arlen      (cpu_arlen           ),
		.axi_s_arsize     (cpu_arsize          ),
		.axi_s_arburst    (cpu_arburst         ),
		.axi_s_arlock     (cpu_arlock          ),
		.axi_s_arcache    (cpu_arcache         ),
		.axi_s_arprot     (cpu_arprot          ),
		.axi_s_arvalid    (cpu_arvalid         ),
		.axi_s_arready    (cpu_arready         ),
		.axi_s_rready     (cpu_rready          ),
		.axi_s_rid        (cpu_rid             ),
		.axi_s_rdata      (cpu_rdata           ),
		.axi_s_rresp      (cpu_rresp           ),
		.axi_s_rlast      (cpu_rlast           ),
		.axi_s_rvalid     (cpu_rvalid          ),

		.s0_awid          (apb_awid            ),
		.s0_awaddr        (apb_awaddr          ),
		.s0_awlen         (apb_awlen           ),
		.s0_awsize        (apb_awsize          ),
		.s0_awburst       (apb_awburst         ),
		.s0_awlock        (apb_awlock          ),
		.s0_awcache       (apb_awcache         ),
		.s0_awprot        (apb_awprot          ),
		.s0_awvalid       (apb_awvalid         ),
		.s0_awready       (apb_awready         ),
		.s0_wid           (apb_wid             ),
		.s0_wdata         (apb_wdata           ),
		.s0_wstrb         (apb_wstrb           ),
		.s0_wlast         (apb_wlast           ),
		.s0_wvalid        (apb_wvalid          ),
		.s0_wready        (apb_wready          ),
		.s0_bid           (apb_bid             ),
		.s0_bresp         (apb_bresp           ),
		.s0_bvalid        (apb_bvalid          ),
		.s0_bready        (apb_bready          ),
		.s0_arid          (apb_arid            ),
		.s0_araddr        (apb_araddr          ),
		.s0_arlen         (apb_arlen           ),
		.s0_arsize        (apb_arsize          ),
		.s0_arburst       (apb_arburst         ),
		.s0_arlock        (apb_arlock          ),
		.s0_arcache       (apb_arcache         ),
		.s0_arprot        (apb_arprot          ),
		.s0_arvalid       (apb_arvalid         ),
		.s0_arready       (apb_arready         ),
		.s0_rid           (apb_rid             ),
		.s0_rdata         (apb_rdata           ),
		.s0_rresp         (apb_rresp           ),
		.s0_rlast         (apb_rlast           ),
		.s0_rvalid        (apb_rvalid          ),
		.s0_rready        (apb_rready          ),
		
		.s1_awid          (s1_awid             ),
		.s1_awaddr        (s1_awaddr           ),
		.s1_awlen         (s1_awlen            ),
		.s1_awsize        (s1_awsize           ),
		.s1_awburst       (s1_awburst          ),
		.s1_awlock        (s1_awlock           ),
		.s1_awcache       (s1_awcache          ),
		.s1_awprot        (s1_awprot           ),
		.s1_awvalid       (s1_awvalid          ),
		.s1_awready       (s1_awready          ),
		.s1_wid           (s1_wid              ),
		.s1_wdata         (s1_wdata            ),
		.s1_wstrb         (s1_wstrb            ),
		.s1_wlast         (s1_wlast            ),
		.s1_wvalid        (s1_wvalid           ),
		.s1_wready        (s1_wready           ),
		.s1_bid           (s1_bid              ),
		.s1_bresp         (s1_bresp            ),
		.s1_bvalid        (s1_bvalid           ),
		.s1_bready        (s1_bready           ),
		.s1_arid          (s1_arid             ),
		.s1_araddr        (s1_araddr           ),
		.s1_arlen         (s1_arlen            ),
		.s1_arsize        (s1_arsize           ),
		.s1_arburst       (s1_arburst          ),
		.s1_arlock        (s1_arlock           ),
		.s1_arcache       (s1_arcache          ),
		.s1_arprot        (s1_arprot           ),
		.s1_arvalid       (s1_arvalid          ),
		.s1_arready       (s1_arready          ),
		.s1_rid           (s1_rid              ),
		.s1_rdata         (s1_rdata            ),
		.s1_rresp         (s1_rresp            ),
		.s1_rlast         (s1_rlast            ),
		.s1_rvalid        (s1_rvalid           ),
		.s1_rready        (s1_rready           )
    );

   // axi2apb
	axi2apb_bridge A_axi2apb
    (
		.clk              (clock               ),
		.rst_n            (reset               ),
		.axi_s_awid       (apb_awid            ),//
		.axi_s_awaddr     (apb_awaddr          ),//
		.axi_s_awlen      (apb_awlen           ),//
		.axi_s_awsize     (apb_awsize          ),//
		.axi_s_awburst    (apb_awburst         ),//
		.axi_s_awlock     (apb_awlock          ),//
		.axi_s_awcache    (apb_awcache         ),//
		.axi_s_awprot     (apb_awprot          ),//
		.axi_s_awvalid    (apb_awvalid         ),//
		.axi_s_awready    (apb_awready         ),//
		.axi_s_wid        (apb_wid             ),//
		.axi_s_wdata      (apb_wdata           ),//
		.axi_s_wstrb      (apb_wstrb           ),//
		.axi_s_wlast      (apb_wlast           ),//
		.axi_s_wvalid     (apb_wvalid          ),//
		.axi_s_wready     (apb_wready          ),//
		.axi_s_bid        (apb_bid             ),//
		.axi_s_bresp      (apb_bresp           ),//
		.axi_s_bvalid     (apb_bvalid          ),//
		.axi_s_bready     (apb_bready          ),//
		.axi_s_arid       (apb_arid            ),//
		.axi_s_araddr     (apb_araddr          ),//
		.axi_s_arlen      (apb_arlen           ),//
		.axi_s_arsize     (apb_arsize          ),//
		.axi_s_arburst    (apb_arburst         ),//
		.axi_s_arlock     (apb_arlock          ),//
		.axi_s_arcache    (apb_arcache         ),//
		.axi_s_arprot     (apb_arprot          ),//
		.axi_s_arvalid    (apb_arvalid         ),//
		.axi_s_arready    (apb_arready         ),//
		.axi_s_rid        (apb_rid             ),//
		.axi_s_rdata      (apb_rdata           ),//
		.axi_s_rresp      (apb_rresp           ),//
		.axi_s_rlast      (apb_rlast           ),//
		.axi_s_rvalid     (apb_rvalid          ),//
		.axi_s_rready     (apb_rready          ),//

		.apb_valid_cpu    (apb_valid           ),
		.apb_clk          (apd_clk             ),//add by zhemou
		.apb_reset_n      (apb_reset_n         ),
		.reg_psel         (apb_psel            ),
		.reg_enable       (apb_enab            ),
		.reg_rw           (apb_rw              ),
		.reg_addr         (apb_addr            ),
		.reg_datai        (apb_datai           ),
		.reg_ready_1      (apb_ack             ),
		.reg_datao        (apb_datao           )
    );

	apb_mux9 A_apb_mux_cpu
	(
		.apb_ack_cpu      (apb_ack             ),
		.apb_rw_cpu       (apb_rw              ),
		.apb_psel_cpu     (apb_psel            ),
		.apb_enab_cpu     (apb_enab            ),
		.apb_addr_cpu     (apb_addr            ),
		.apb_datai_cpu    (apb_datai           ),
		.apb_datao_cpu    (apb_datao           ),
		.apb_valid_cpu    (apb_valid           ),

		.apb0_req         (                    ),
		.apb0_ack         (apb0_ack            ),
		.apb0_rw          (apb0_pwrite         ),
		.apb0_psel        (apb0_psel           ),
		.apb0_enab        (apb0_penable        ),
		.apb0_addr        (apb0_paddr          ),
		.apb0_datai       (apb0_pwdata         ),
		.apb0_datao       (apb0_prdata         ),
		
		.apb1_req         (                    ),
		.apb1_ack         (apb1_ack            ),
		.apb1_rw          (apb1_pwrite         ),
		.apb1_psel        (apb1_psel           ),
		.apb1_enab        (apb1_penable        ),
		.apb1_addr        (apb1_paddr          ),
		.apb1_datai       (apb1_pwdata         ),
		.apb1_datao       (apb1_prdata         ),		
		
		.apb2_req         (                    ),
		.apb2_ack         (apb2_ack            ),
		.apb2_rw          (apb2_pwrite         ),
		.apb2_psel        (apb2_psel           ),
		.apb2_enab        (apb2_penable        ),
		.apb2_addr        (apb2_paddr          ),
		.apb2_datai       (apb2_pwdata         ),
		.apb2_datao       (apb2_prdata         ),		
		
		.apb3_req         (                    ),
		.apb3_ack         (apb3_ack            ),
		.apb3_rw          (apb3_pwrite         ),
		.apb3_psel        (apb3_psel           ),
		.apb3_enab        (apb3_penable        ),
		.apb3_addr        (apb3_paddr          ),
		.apb3_datai       (apb3_pwdata         ),
		.apb3_datao       (apb3_prdata         ),		
		
		.apb4_req         (                    ),
		.apb4_ack         (apb4_ack            ),
		.apb4_rw          (apb4_pwrite         ),
		.apb4_psel        (apb4_psel           ),
		.apb4_enab        (apb4_penable        ),
		.apb4_addr        (apb4_paddr          ),
		.apb4_datai       (apb4_pwdata         ),
		.apb4_datao       (apb4_prdata         ),		
	
		.apb5_req         (                    ),
		.apb5_ack         (apb5_ack            ),
		.apb5_rw          (apb5_pwrite         ),
		.apb5_psel        (apb5_psel           ),
		.apb5_enab        (apb5_penable        ),
		.apb5_addr        (apb5_paddr          ),
		.apb5_datai       (apb5_pwdata         ),
		.apb5_datao       (apb5_prdata         ),
		
		.apb6_req         (                    ),
		.apb6_ack         (apb6_ack            ),
		.apb6_rw          (apb6_pwrite         ),
		.apb6_psel        (apb6_psel           ),
		.apb6_enab        (apb6_penable        ),
		.apb6_addr        (apb6_paddr          ),
		.apb6_datai       (apb6_pwdata         ),
		.apb6_datao       (apb6_prdata         ),

		.apb7_req         (                    ),
		.apb7_ack         (apb7_ack            ),
		.apb7_rw          (apb7_pwrite         ),
		.apb7_psel        (apb7_psel           ),
		.apb7_enab        (apb7_penable        ),
		.apb7_addr        (apb7_paddr          ),
		.apb7_datai       (apb7_pwdata         ),
		.apb7_datao       (apb7_prdata         ),

		.apb8_req         (                    ),
		.apb8_ack         (apb8_ack            ),
		.apb8_rw          (apb8_pwrite         ),
		.apb8_psel        (apb8_psel           ),
		.apb8_enab        (apb8_penable        ),
		.apb8_addr        (apb8_paddr          ),
		.apb8_datai       (apb8_pwdata         ),
		.apb8_datao       (apb8_prdata         )
	);
	
	//GPIO by zhemou
	GPIO_TOP gpio1(
	.apb_pclk   		  (clock			),
	.apb_prstn  		  ( reset			),
	.apb_psel   		  (apb0_psel		),
	.apb_paddr  		  (apb0_paddr		),
	.apb_pwrite 		  (apb0_pwrite		),
	.apb_penable		  (apb0_penable		),
	.apb_pwdata 		  (apb0_pwdata		),
	.apb_prdata 		  (apb0_prdata		),

	.GPIO01				  (GPIO01			),
	.GPIO13				  (GPIO13			),
	.GPIO14				  (GPIO14			),
	.GPIO15				  (GPIO15			),
	.GPIO16				  (GPIO16			),
	.GPIO17				  (GPIO17			),
	.GPIO18				  (GPIO18			),
	.GPIO19				  (GPIO19			),
	.GPIO20				  (GPIO20			),
	.GPIO34				  (GPIO34			),
	.GPIO35				  (GPIO35			),
	.GPIO36				  (GPIO36			),
	.GPIO37				  (GPIO37			),
	.GPIO38				  (GPIO38			),
	.GPIO39				  (GPIO39			),
	.GPIO40				  (GPIO40			)	
	// .GPIOA					(GPIOA			) ,
	// .GPIOB					(GPIOB			) 
	
	);
	
	//PWM add by zhemou
	PWM_TOP pwm1(
	.apb_pclk			  (clock		),
	.apb_prstn			  (reset),
	.apb_psel			  (apb1_psel		),
	.apb_paddr			  (apb1_paddr		),
	.apb_penable		  (apb1_pwrite		),
	.apb_pwrite			  (apb1_penable		),
	.apb_pwdata			  (apb1_pwdata		),
	.apb_prdata			  (apb1_prdata		),
	
	.PWM01				  (PWM01			)
	
	);
	
		//
	HPET_TOP hept1(
	.apb_pclk			  (clock		),
	.apb_prstn			  ( reset),
	.apb_psel			  (apb2_psel		),
	.apb_paddr			  (apb2_paddr[3:0]	),
	.apb_pwrite			  (apb2_pwrite		),
	.apb_penable		  (apb2_penable		),
	.apb_pwdata			  (apb2_pwdata		),
	.apb_prdata			  (apb2_prdata		),
	
	.int_o				  (timer_int		)
	
	
	);


//		confreg add by zhemou
	CONFREG confreg1(
	.apb_pclk			  (clock		),
	.apb_prstn			  ( reset),
	.apb_psel			  (apb3_psel		),
	.apb_paddr			  (apb3_paddr	),
	.apb_pwrite			  (apb3_pwrite		),
	.apb_penable		  (apb3_penable		),
	.apb_pwdata			  (apb3_pwdata	),
	.apb_prdata			  (apb3_prdata),
	
	.timer_int			  (timer_int		),
	.i2c_int			  (1'b0			),
	.uart1_int			  (uart1_int		),
	.uart0_int			  (1'b0		),
	.flash_int		  	  (1'b0		),
	.spi_int			  (1'b0			),
	.vpwm_int			  (1'b0			),
	.dma_int			  (1'b0		),
	
	.int_o				  (int_o		)
	
	
	);
    wire[4:0]   pmu_interrupt=5'b0;
	wire	int_o;
	wire[5:0]interrupt={pmu_interrupt[4],int_o,pmu_interrupt[3:0]};
//	uart add by zhemou
	UART_TOP uart1(
	.apb_pclk			  (clock		),
	.apb_prstn			  ( reset),
	.apb_psel			  (apb4_psel		),
	.apb_paddr			  (apb4_paddr		),
	.apb_pwrite			  (apb4_pwrite		),
	.apb_penable		  (apb4_penable		),
	.apb_pwdata			  (apb4_pwdata		),
	.apb_prdata			  (apb4_prdata		),
	
	.RsRx				  (RsRx				),
	.RsTx				  (RsTx				),
	
	.uart_irq			  (uart1_int		)
	
	);

CAU CAU_inst(

	.apb_pclk			  (clock		),
	.apb_prstn			  ( reset),
	.apb_psel			  (apb5_psel		),
	.apb_paddr			  (apb5_paddr		),
	.apb_pwrite			  (apb5_pwrite		),
	.apb_penable		  (apb5_penable		),
	.apb_pwdata			  (apb5_pwdata		),
	.apb_prdata			  (apb5_prdata		),

    .fft_clk        (dac_clk),
    .dac_clk        (dac_clk),
    .comp_in        (comp_in),
    .ad_pwm         (ad_pwm)

);

//	i2c add by zhemou
	I2C_TOP i2c1(
	.apb_pclk			  (clock		),
	.apb_prstn			  ( reset),
	.apb_psel			  (apb6_psel		),
	.apb_paddr			  (apb6_paddr		),
	.apb_pwrite			  (apb6_pwrite		),
	.apb_penable		  (apb6_penable		),
	.apb_pwdata			  (apb6_pwdata		),
	.apb_prdata			  (apb6_prdata		),
	
	.I2C_SCL			  (I2C_SCL			),
	.I2C_SDA			  (I2C_SDA			),
	
	.i2c_int			  (i2c_int			)
	
	); 


	
	//spi add by zhemou
	SPI_TOP spi1(
	.apb_pclk			  (clock		), 
	.apb_prstn			  ( reset		),
	.apb_psel			  (apb7_psel		),
	.apb_paddr			  (apb7_paddr 		),
	.apb_pwrite			  (apb7_pwrite		),
	.apb_penable		  	(apb7_penable		),
	.apb_pwdata			  (apb7_pwdata		),
	.apb_prdata			  (apb7_prdata		),
	
	.SPI_CLK			  (SPI_CLK			),  
	.SPI_MISO			  (SPI_MISO			), 
	.SPI_MOSI			  (SPI_MOSI			), 
	.SPI_CSN1			  (SPI_CSN1			), 
	.SPI_CSN2			  (SPI_CSN2			), 
	.SPI_CSN3			  (SPI_CSN3			),
	
	.spi_int 			  (spi_int			)   
	
	);
	

	
		//uart add by zhemou
	// UART_TOP uart0(
	// .apb_pclk			  (clock		),
	// .apb_prstn			  ( reset),
	// .apb_psel			  (apb4_psel		),
	// .apb_paddr			  (apb4_paddr		),
	// .apb_pwrite			  (apb4_pwrite		),
	// .apb_penable		  (apb4_penable		),
	// .apb_pwdata			  (apb4_pwdata		),
	// .apb_prdata			  (apb4_prdata		),
	
	// .RsRx				  (RsRx0				),
	// .RsTx				  (RsTx0				),
	
	// .uart_irq			  (uart0_int		)
	
	// );
		

	// Oled_Top Oled_Top1(
	// .apb_pclk   		  (clock			),
	// .apb_prstn  		  ( reset			),
	// .apb_psel   		  (apb6_psel		),
	// .apb_paddr  		  (apb6_paddr		),
	// .apb_pwrite 		  (apb6_pwrite		),
	// .apb_penable		  (apb6_penable		),
	// .apb_pwdata 		  (apb6_pwdata		),
	// .apb_prdata 		  (apb6_prdata		),

	// .scl				  (SCL				),
	// .sda				  (SDA				)

	// );

	

	assign apb0_ack= apb0_penable;
	assign apb1_ack= apb1_penable;
	assign apb2_ack= apb2_penable;
	assign apb3_ack = apb3_penable;
	assign apb4_ack = apb4_penable;
	assign apb5_ack= apb5_penable;
	assign apb6_ack= apb6_penable;
	assign apb7_ack= apb7_penable;
	assign apb8_ack= apb8_penable;




endmodule // godson_mcu_cpu


module Dram_8k (DO, AD, STRB, CLKin, DI, EN, R_WB, reset);

    parameter NB = 32;  // Number of Data Bits
    parameter NA = 32;  // Number of Address Bits
    parameter NW = 2048;  // Number of WORDS    32*2048*16/8=8K

    output [(NB - 1) : 0] DO;

    input [(NB - 1) : 0] DI;
    input [      3  : 0] STRB;
    input [(NA - 1) : 0] AD;
    input EN;
    input R_WB;
    input CLKin;
	input reset;
    
    blk_mem_gen_1 ram_8k_inst(
        .dout		(DO), 		//output [31:0] dout
        .clk		(CLKin), 	//input clk
        .oce		(EN), 		//input oce
        .ce			(EN), 		//input ce
        .reset		(~reset), 	//input reset
     // .reset		(1'b0),
        .wre		(R_WB), 	//input wre
        .ad			(AD[12:2]), //input [10:0] ad
        .din		(DI), 		//input [31:0] din
        .byte_en	(STRB) 	//input [3:0] byte_en
		// .byte_en	(4'b1111)
    );


endmodule

module Flash_64k (DO, AD, STRB, CLKin, DI, EN, R_WB, reset);  //32k

    parameter NB = 32;  // Number of Data Bits
    parameter NA = 32;  // Number of Address Bits
    parameter NW = 32768;  // Number of WORDS      (32*32768*16/8)/2=64K
//16K
    output [(NB - 1) : 0] DO;

    input [(NB - 1) : 0] DI;
    input [      3  : 0] STRB;
    input [(NA - 1) : 0] AD;
    input EN;
    input R_WB;
    input CLKin;
	input reset;

	Gowin_SP flash_128k_inst(
		.dout		(DO), 		//output [31:0] dout
		.clk		(CLKin), 	//input clk
		.oce		(EN), 		//input oce
		.ce			(EN), 		//input ce
		.reset		(~reset), 	//input reset
	// 	.reset		(1'b0),
		.wre		(R_WB), 	//input wre
	//	.wre		(1'b0), 	//input wre
		.ad			(AD[15:2]), //input [14:0] ad
		.din		(DI), 		//input [31:0] din
	// 	.byte_en	(byte_en_i) //input [3:0] byte_en
		.byte_en	(STRB) 	//input [3:0] byte_en
		// .byte_en	(4'b1111)
	);

endmodule