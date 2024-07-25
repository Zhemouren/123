`include"H:/GOWIN/Project/loongxin3/src/hw/config.v"
`timescale 1ns/1ps
module godson_mcu_top (
	input         CLK50M		,
	input         RSTN			,  //25K板卡下 处于低电平 138K下常态高电平
	input		soft_resetn		, //同上，138K下处于高电平
	output        pps_led		,

	inout                       cmos_scl	,         //cmos i2c clock
	inout                       cmos_sda	,        //cmos i2c data
	input                       cmos_vsync	,        //cmos vsync
	input                       cmos_href	,        //cmos hsync refrence,data valid
	input                       cmos_pclk	,        //cmos pxiel clock
    // output                      cmos_xclk	,        //cmos externl clock 
	input   [7:0]               cmos_db		,        //cmos data
	output                      cmos_rst_n	,        //cmos reset 
	// output                      cmos_pwdn	,        //cmos power down
	
	// output [3:0] 				state_led	,

	output [14-1:0]             ddr_addr	,       //ROW_WIDTH=14
	output [3-1:0]              ddr_bank	,       //BANK_WIDTH=3
	output                      ddr_cs		,
	output                      ddr_ras		,
	output                      ddr_cas		,
	output                      ddr_we		,
	output                      ddr_ck		,
	output                      ddr_ck_n	,
	output                      ddr_cke		,
	output                      ddr_odt		,
	output                      ddr_reset_n ,
	output [2-1:0]              ddr_dm		,      //DM_WIDTH=2
	inout [16-1:0]              ddr_dq		,      //DQ_WIDTH=16
	inout [2-1:0]               ddr_dqs		,      //DQS_WIDTH=2
	inout [2-1:0]               ddr_dqs_n	,      //DQS_WIDTH=2

    //HDMI接口                          
    output                tmds_clk_p,         		// TMDS 时钟通道
    output                tmds_clk_n, 
    output  [2:0]         tmds_d_p,        			// TMDS 数据通道
    output  [2:0]         tmds_d_n ,
	
	input  		  LJTAG_TRST,
	inout  		  LJTAG_TMS, LJTAG_TDO, LJTAG_TDI, LJTAG_TCK,

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
	
	inout	wire  	I2C_SCL,
	inout   wire  	I2C_SDA,

	output	wire	ad_pwm 	,
	input			comp_in ,

	// inout	wire	SDA,
	// output	wire	SCL,
	output	wire	PWM01,
	input	wire  	RsRx,
	output	wire  	RsTx
);

	wire[31:0]  GPIOB;
	wire	RsRx0;
	wire	RsTx0;
	// parameter ADDR_APB = 32,
	// 		  DATA_APB_8 = 8,
	// 		  DATA_APB_32 = 32;
    parameter RESET_TIME = 40000000;// 5s

	wire    		clk_ext32m;
	wire			clk_ext16m;
    wire 	[5:0]  	interrupt /* = 6'h00 */;

	reg 	[29:0] 	rst_cnt = 0	;
	reg 	[22:0] 	cnt = 0		;
	wire	sys_rstn			;
	wire	soft_reset			;
    wire 			pll_lock 	;
	wire			pll_lock2	;
	wire			dac_clk		;
	wire			SDA			;
	wire			SCL			;
	assign sys_rstn=RSTN;//常态下处于高电平
	assign	soft_reset=soft_resetn; //需要常态下保持低电平，高电平有效复位
	always @(posedge CLK50M or negedge sys_rstn )
	begin
		if(!sys_rstn)rst_cnt<=0;
		else if(rst_cnt==RESET_TIME) rst_cnt <= rst_cnt;
		else rst_cnt <= rst_cnt + 1;
	end
	
	wire por_rst_n = (rst_cnt == RESET_TIME) ? 1'b1 : 1'b0;
	
	always @(posedge clk_ext32m)
		begin
			cnt <= cnt + 1;
		end

	assign pps_led = cnt[21];


    
	Gowin_PLL pll(
        .lock(pll_lock), //output lock
        .clkout0(clk_ext32m), //output clkout0
		.clkout1(dac_clk),
        .clkin(CLK50M), //input clkin
        .reset(~RSTN) //input reset RSTN常态下处于低电平，复位无效，按下去后高电平，复位有效
    );
	


	
	godson_mcu_cpu A_cpu
	(
		.reset            	( sys_rstn&pll_lock  ),// (por_rst_n        ),
		.soft_reset			((soft_reset)&pll_lock),
		.clock            	(clk_ext32m      ),

		.ljtag_trst_i     	(LJTAG_TRST     ),
		.ljtag_tms_i      	(LJTAG_TMS      ),
		.ljtag_tdo_o      	(LJTAG_TDO      ),
		.ljtag_tdi_i      	(LJTAG_TDI      ),
		.ljtag_tck_i      	(LJTAG_TCK      ),
		.GPIO01				(GPIO01			),
		.GPIO13				(GPIO13			),
		.GPIO14				(GPIO14			),
		.GPIO15				(GPIO15			),
		.GPIO16				(GPIO16			),
		.GPIO17				(GPIO17			),
		.GPIO18				(GPIO18			),
		.GPIO19				(GPIO19			),
		.GPIO20				(GPIO20			),
		.GPIO34				(GPIO34			),
		.GPIO35				(GPIO35			),
		.GPIO36				(GPIO36			),
		.GPIO37				(GPIO37			),
		.GPIO38				(GPIO38			),
		.GPIO39				(GPIO39			),
		.GPIO40				(GPIO40			),

	// inout [31:0]  GPIOA,
	// inout [31:0]  GPIOB, 
	
		.SPI_CLK		(SPI_CLK),  
		.SPI_MISO		(SPI_MISO), 
		.SPI_MOSI		(SPI_MOSI), 
		.SPI_CSN1		(SPI_CSN1), 
		.SPI_CSN2		(SPI_CSN2), 
		.SPI_CSN3		(SPI_CSN3),
	
		.I2C_SCL		(I2C_SCL),
		.I2C_SDA		(I2C_SDA),
		.SDA			(SDA	),
		.SCL			(SCL	),
		.PWM01			(PWM01	),
		.RsRx			(RsRx	),
		.RsTx			(RsTx	),
    	.fft_clk        (dac_clk),
    	.dac_clk        (dac_clk),
    	.comp_in        (comp_in),
    	.ad_pwm         (ad_pwm)
	);

wire	ddr_rmake ;
wire	cmos_xclk ;
wire	cmos_pwdn ;

assign	ddr_rmake = ~GPIO01	;

//OV5640 2 HDMI 
top top_inst(
	.clk		(CLK50M		),
	.rst_n		(ddr_rmake	),
	.cmos_scl	(cmos_scl	),          //cmos i2c clock
	.cmos_sda	(cmos_sda	),          //cmos i2c data
	.cmos_vsync	(cmos_vsync	),        //cmos vsync
	.cmos_href	(cmos_href	),         //cmos hsync refrence,data valid
	.cmos_pclk	(cmos_pclk	),         //cmos pxiel clock
    .cmos_xclk	(cmos_xclk	),         //cmos externl clock 
	.cmos_db	(cmos_db	),           //cmos data
	.cmos_rst_n	(cmos_rst_n	),        //cmos reset 
	.cmos_pwdn	(cmos_pwdn	),         //cmos power down
	.state_led	(	),
	.ddr_addr	(ddr_addr	),       //ROW_WIDTH=14
	.ddr_bank	(ddr_bank	),       //BANK_WIDTH=3
	.ddr_cs		(ddr_cs		),
	.ddr_ras	(ddr_ras	),
	.ddr_cas	(ddr_cas	),
	.ddr_we		(ddr_we		),
	.ddr_ck		(ddr_ck		),
	.ddr_ck_n	(ddr_ck_n	),
	.ddr_cke	(ddr_cke	),
	.ddr_odt	(ddr_odt	),
	.ddr_reset_n(ddr_reset_n),
	.ddr_dm		(ddr_dm		),         //DM_WIDTH=2
	.ddr_dq		(ddr_dq		),         //DQ_WIDTH=16
	.ddr_dqs	(ddr_dqs	),        //DQS_WIDTH=2
	.ddr_dqs_n	(ddr_dqs_n	),      //DQS_WIDTH=2 
    .tmds_clk_p	(tmds_clk_p	),         // TMDS 时钟通道
    .tmds_clk_n	(tmds_clk_n	), 
    .tmds_d_p	(tmds_d_p	),        // TMDS 数据通道
    .tmds_d_n 	(tmds_d_n 	)
);

endmodule