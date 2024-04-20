`include "config.v"
module godson_mcu_top (
	input         CLK50M,
	input         RSTN, 
	output        pps_led,
	
	input  		  LJTAG_TRST,
	inout  		  LJTAG_TMS, LJTAG_TDO, LJTAG_TDI, LJTAG_TCK,

	// output        led0,
	
	inout		  GPIO01,
	inout         GPIO13,
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
	
	output wire 	  SPI_CLK,  
	input  wire 	  SPI_MISO, 
	output wire 	  SPI_MOSI, 
	output wire 	  SPI_CSN1, 
	output wire 	  SPI_CSN2, 
	output wire 	  SPI_CSN3,
	
	inout		  I2C_SCL,
	inout         I2C_SDA,
	output	wire					  PWM01,
	input		  RsRx,
	output		  RsTx
);

	// parameter ADDR_APB = 32,
	// 		  DATA_APB_8 = 8,
	// 		  DATA_APB_32 = 32;
    parameter RESET_TIME = 40000000;// 5s

	wire    		clk_ext8m;
    wire 	[5:0]  	interrupt /* = 6'h00 */;

	reg 	[29:0] 	rst_cnt = 0;
	reg 	[22:0] 	cnt = 0;
	wire	sys_rstn;
	assign sys_rstn=~RSTN;//常态下处于高电平
	always @(posedge CLK50M or negedge sys_rstn )
	begin
		if(!sys_rstn)rst_cnt<=0;
		else if(rst_cnt==RESET_TIME) rst_cnt <= rst_cnt;
		else rst_cnt <= rst_cnt + 1;
	end
	
	wire por_rst_n = (rst_cnt == RESET_TIME) ? 1'b1 : 1'b0;
	
	always @(posedge clk_ext8m)
		begin
			cnt <= cnt + 1;
		end
		reg[7:0] pwm_cnt=0;
	always@(posedge PWM01 )begin
		if(pwm_cnt<255)pwm_cnt=pwm_cnt+1;
		else	pwm_cnt=0;
	end
	assign pps_led = cnt[21];

    wire 			pll_lock;
    
	Gowin_PLL pll(
        .lock(pll_lock), //output lock
        .clkout0(clk_ext8m), //output clkout0
        .clkin(CLK50M), //input clkin
        .reset(RSTN) //input reset RSTN常态下处于低电平，复位无效，按下去后高电平，复位有效
    );

	wire          			  apb0_psel;
	wire [`ADDR_APB-1:0]       apb0_paddr;
	wire           			  apb0_pwrite;
	wire           			  apb0_penable;
	wire [`DATA_APB_32-1:0]    apb0_pwdata;
	wire [`DATA_APB_32-1:0]    apb0_prdata;
	wire           apb0_ack ;
	assign apb0_ack= apb0_penable;
	
	wire          			  apb1_psel;
	wire [`ADDR_APB-1:0]       apb1_paddr;
	wire           			  apb1_pwrite;
	wire           			  apb1_penable;
	wire [`DATA_APB_32-1:0]    apb1_pwdata;
	wire [`DATA_APB_32-1:0]    apb1_prdata;
	wire           apb1_ack  ;
		assign apb1_ack= apb1_penable;
	wire          			  apb2_psel;
	wire [`ADDR_APB-1:0]       apb2_paddr;
	wire           			  apb2_pwrite;
	wire           			  apb2_penable;
	wire [`DATA_APB_32-1:0]    apb2_pwdata;
	wire [`DATA_APB_32-1:0]    apb2_prdata;
	wire           apb2_ack  ;
		assign apb2_ack= apb2_penable;
	wire          			  apb3_psel;
	wire [`ADDR_APB-1:0]       apb3_paddr;
	wire           			  apb3_pwrite;
	wire           			  apb3_penable;
	wire [`DATA_APB_32-1:0]    apb3_pwdata;
	wire [`DATA_APB_32-1:0]    apb3_prdata;
	wire           apb3_ack ;
		assign apb3_ack = apb3_penable;
	wire          			  apb4_psel;
	wire [`ADDR_APB-1:0]       apb4_paddr;
	wire           			  apb4_pwrite;
	wire           			  apb4_penable;
	wire [`DATA_APB_32-1:0]    apb4_pwdata;
	wire [`DATA_APB_32-1:0]    apb4_prdata;
	wire           apb4_ack ;
		assign apb4_ack = apb4_penable;
	wire          			  apb5_psel;
	wire [`ADDR_APB-1:0]       apb5_paddr;
	wire           			  apb5_pwrite;
	wire           			  apb5_penable;
	wire [`DATA_APB_32-1:0]    apb5_pwdata;
	wire [`DATA_APB_32-1:0]    apb5_prdata;
	wire           apb5_ack  ;
		assign apb5_ack= apb5_penable;
	wire          			  apb6_psel;
	wire [`ADDR_APB-1:0]       apb6_paddr;
	wire           			  apb6_pwrite;
	wire           			  apb6_penable;
	wire [`DATA_APB_32-1:0]    apb6_pwdata;
	wire [`DATA_APB_32-1:0]    apb6_prdata;
	wire           apb6_ack  ;
		assign apb6_ack= apb6_penable;
	wire [`LID         -1 :0] s1_awid;
	wire [`Lawaddr     -1 :0] s1_awaddr;
	wire [`Lawlen      -1 :0] s1_awlen;
	wire [`Lawsize     -1 :0] s1_awsize;
	wire [`Lawburst    -1 :0] s1_awburst;
	wire [`Lawlock     -1 :0] s1_awlock;
	wire [`Lawcache    -1 :0] s1_awcache;
	wire [`Lawprot     -1 :0] s1_awprot;
	wire                      s1_awvalid;
	wire                      s1_awready;
	wire [`LID         -1 :0] s1_wid;
	wire [`Lwdata      -1 :0] s1_wdata;
	wire [`Lwstrb      -1 :0] s1_wstrb;
	wire                      s1_wlast;
	wire                      s1_wvalid;
	wire                      s1_wready;
	wire [`LID         -1 :0] s1_bid;
	wire [`Lbresp      -1 :0] s1_bresp;
	wire                      s1_bvalid;
	wire                      s1_bready;
	wire [`LID         -1 :0] s1_arid;
	wire [`Laraddr     -1 :0] s1_araddr;
	wire [`Larlen      -1 :0] s1_arlen;
	wire [`Larsize     -1 :0] s1_arsize;
	wire [`Larburst    -1 :0] s1_arburst;
	wire [`Larlock     -1 :0] s1_arlock;
	wire [`Larcache    -1 :0] s1_arcache;
	wire [`Larprot     -1 :0] s1_arprot;
	wire                      s1_arvalid;
	wire                      s1_arready;
	wire [`LID         -1 :0] s1_rid;
	wire [`Lrdata      -1 :0] s1_rdata;
	wire [`Lrresp      -1 :0] s1_rresp;
	wire                      s1_rlast;
	wire                      s1_rvalid;
	wire                      s1_rready;
	
	//GPIO WIRE add by zhemou
	//wire 					  GPIO01;
	//wire 					  GPIO13;
	//wire 					  GPIO18;
	//wire 					  GPIO19;
	//wire 					  GPIO20;
	//wire 					  GPIO34;
	//wire 					  GPIO35;
	//wire 					  GPIO36;
	//wire 					  GPIO37;
	//wire 					  GPIO38;
	//wire 					  GPIO39;
	//wire 					  GPIO40;
	
	//PWM WIRE add by zhemou
	// wire					  PWM01;
	
	//uart wire add be zhemou 
	// wire					  RsRx;
	// wire					  RsTx;
	wire					  uart_irq;
	
	//I2C wire add by zhemou
	//wire 					  I2C_SCL;
	//wire 					  I2C_SDA;
	wire 					  i2c_int;
	
	//SPI wire add by zhemou
	//wire					  SPI_CLK;
	//wire					  SPI_MISO;
	//wire					  SPI_MOSI;
	//wire					  SPI_CSN1;
	//wire					  SPI_CSN2;
	//wire					  SPI_CSN3;
	wire					  spi_int;
	
	//confreg wire add by zhemou
	wire					  timer_int;
  //wire					  i2c_int;		//前面有了
	wire					  uart1_int;
	wire					  uart0_int;
  //wire					  flash_int;
  //wire					  spi_int;		//前面有了
  //wire					  vpwm_int;
  //wire					  dma_int;
	
	
	
	
	godson_mcu_cpu A_cpu
	(
		.reset            ( sys_rstn&pll_lock         ),// (por_rst_n        ),
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
		
		.apb1_psel        (apb1_psel        ),
		.apb1_paddr       (apb1_paddr       ),
		.apb1_pwrite      (apb1_pwrite      ),
		.apb1_penable     (apb1_penable     ),
		.apb1_pwdata      (apb1_pwdata      ),
		.apb1_prdata      (apb1_prdata      ),
		.apb1_ack         (apb1_ack         ),
		
		.apb2_psel        (apb2_psel        ),
		.apb2_paddr       (apb2_paddr       ),
		.apb2_pwrite      (apb2_pwrite      ),
		.apb2_penable     (apb2_penable     ),
		.apb2_pwdata      (apb2_pwdata      ),
		.apb2_prdata      (apb2_prdata      ),
		.apb2_ack         (apb2_ack         ),
		
		.apb3_psel        (apb3_psel        ),
		.apb3_paddr       (apb3_paddr       ),
		.apb3_pwrite      (apb3_pwrite      ),
		.apb3_penable     (apb3_penable     ),
		.apb3_pwdata      (apb3_pwdata      ),
		.apb3_prdata      (apb3_prdata      ),
		.apb3_ack         (apb3_ack         ),
		
		.apb4_psel        (apb4_psel        ),
		.apb4_paddr       (apb4_paddr       ),
		.apb4_pwrite      (apb4_pwrite      ),
		.apb4_penable     (apb4_penable     ),
		.apb4_pwdata      (apb4_pwdata      ),
		.apb4_prdata      (apb4_prdata      ),
		.apb4_ack         (apb4_ack         ),
		
		.apb5_psel        (apb5_psel        ),
		.apb5_paddr       (apb5_paddr       ),
		.apb5_pwrite      (apb5_pwrite      ),
		.apb5_penable     (apb5_penable     ),
		.apb5_pwdata      (apb5_pwdata      ),
		.apb5_prdata      (apb5_prdata      ),
		.apb5_ack         (apb5_ack         ),

		.apb6_psel        (apb6_psel        ),
		.apb6_paddr       (apb6_paddr       ),
		.apb6_pwrite      (apb6_pwrite      ),
		.apb6_penable     (apb6_penable     ),
		.apb6_pwdata      (apb6_pwdata      ),
		.apb6_prdata      (apb6_prdata      ),
		.apb6_ack         (apb6_ack         ),

		.s1_awid  		  (s1_awid  		),
		.s1_awaddr		  (s1_awaddr		),
		.s1_awlen 		  (s1_awlen 		),
		.s1_awsize		  (s1_awsize		),
		.s1_awburst		  (s1_awburst		),
		.s1_awlock		  (s1_awlock		),
		.s1_awcache		  (s1_awcache		),
		.s1_awprot		  (s1_awprot		),
		.s1_awvalid		  (s1_awvalid		),
		.s1_awready		  (s1_awready		),
		.s1_wid			  (s1_wid			),
		.s1_wdata		  (s1_wdata			),
		.s1_wstrb		  (s1_wstrb			),
		.s1_wlast		  (s1_wlast			),
		.s1_wvalid		  (s1_wvalid		),
		.s1_wready		  (s1_wready		),
		.s1_bid			  (s1_bid			),
		.s1_bresp		  (s1_bresp			),
		.s1_bvalid		  (s1_bvalid		),
		.s1_bready		  (s1_bready		),
		.s1_arid		  (s1_arid			),
		.s1_araddr		  (s1_araddr		),
		.s1_arlen		  (s1_arlen			),
		.s1_arsize		  (s1_arsize		),
		.s1_arburst		  (s1_arburst		),
		.s1_arlock		  (s1_arlock		),
		.s1_arcache		  (s1_arcache		),
		.s1_arprot		  (s1_arprot		),
		.s1_arvalid		  (s1_arvalid		),
		.s1_arready		  (s1_arready		),
		.s1_rid			  (s1_rid			),
		.s1_rdata		  (s1_rdata			),
		.s1_rresp		  (s1_rresp			),
		.s1_rlast		  (s1_rlast			),
		.s1_rvalid		  (s1_rvalid		),
		.s1_rready		  (s1_rready		),
		
		
		.interrupt        (interrupt        )
	);
	
	//GPIO by zhemou
	GPIO_TOP gpio_z(
	.apb_pclk   		  (clk_ext8m		),
	.apb_prstn  		  ( sys_rstn&pll_lock),
	.apb_psel   		  (apb0_psel		),
	.apb_paddr  		  (apb0_paddr		),
	.apb_pwrite 		  (apb0_pwrite		),
	.apb_penable		  (apb0_penable		),
	.apb_pwdata 		  (apb0_pwdata		),
	.apb_prdata 		  (apb0_prdata		),
	
	.GPIO01				  (GPIO01			),
	.GPIO13				  (GPIO13			),
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
	
	);
	
	//PWM add by zhemou
	PWM_TOP pwm_z(
	.apb_pclk			  (clk_ext8m		),
	.apb_prstn			  (sys_rstn&pll_lock),
	.apb_psel			  (apb1_psel		),
	.apb_paddr			  (apb1_paddr		),
	.apb_penable		  (apb1_pwrite		),
	.apb_pwrite			  (apb1_penable		),
	.apb_pwdata			  (apb1_pwdata		),
	.apb_prdata			  (apb1_prdata		),
	
	.PWM01				  (PWM01			)
	
	);
	
	//uart add by zhemou
	UART_TOP uart_z(
	.apb_pclk			  (clk_ext8m		),
	.apb_prstn			  ( sys_rstn&pll_lock),
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
	
	//i2c add by zhemou
	I2C_TOP i2c_z(
	.apb_pclk			  (clk_ext8m		),
	.apb_prstn			  ( sys_rstn&pll_lock),
	.apb_psel			  (apb5_psel		),
	.apb_paddr			  (apb5_paddr[2:0]	),
	.apb_pwrite			  (apb5_pwrite		),
	.apb_penable		  (apb5_penable		),
	.apb_pwdata			  (apb5_pwdata[7:0]	),
	.apb_prdata			  (apb5_prdata[7:0]	),
	
	.I2C_SCL			  (I2C_SCL			),
	.I2C_SDA			  (I2C_SDA			),
	
	.i2c_int			  (i2c_int			)
	
	); 
	
	//spi add by zhemou
	SPI_TOP spi_z(
	.apb_pclk			  (clk_ext8m		), 
	.apb_prstn			  ( sys_rstn&pll_lock),
	.apb_psel			  (apb6_psel		),
	.apb_paddr			  (apb6_paddr[3:0]	),
	.apb_pwrite			  (apb6_pwrite		),
	.apb_penable		  (apb6_penable		),
	.apb_pwdata			  (apb6_pwdata[7:0]	),
	.apb_prdata			  (apb6_prdata[7:0]	),
	
	.SPI_CLK			  (SPI_CLK			),  
	.SPI_MISO			  (SPI_MISO			), 
	.SPI_MOSI			  (SPI_MOSI			), 
	.SPI_CSN1			  (SPI_CSN1			), 
	.SPI_CSN2			  (SPI_CSN2			), 
	.SPI_CSN3			  (SPI_CSN3			),
	
	.spi_int 			  (spi_int			)   
	
	);
	
	//confreg add by zhemou
	CONFREG confreg_z(
	.apb_pclk			  (clk_ext8m		),
	.apb_prstn			  ( sys_rstn&pll_lock),
	.apb_psel			  (apb3_psel		),
	.apb_paddr			  (apb3_paddr[19:0]	),
	.apb_pwrite			  (apb3_pwrite		),
	.apb_penable		  (apb3_penable		),
	.apb_pwdata			  (apb3_pwdata[7:0]	),
	.apb_prdata			  (apb3_prdata[7:0]	),
	
	.timer_int			  (timer_int		),
	.i2c_int			  ( i2c_int			),
	.uart1_int			  (/*uart1_int*/		),
	.uart0_int			  (1'b0		),
	.flash_int		  	  (1'b0		),
	.spi_int			  (spi_int			),
	.vpwm_int			  (1'b0			),
	.dma_int			  (1'b0		),
	
	.int_o				  (interrupt		)
	
	
	);
	
	//
	HPET_TOP hept_z(
	.apb_pclk			  (clk_ext8m		),
	.apb_prstn			  ( sys_rstn&pll_lock),
	.apb_psel			  (apb2_psel		),
	.apb_paddr			  (apb2_paddr[3:0]	),
	.apb_pwrite			  (apb2_pwrite		),
	.apb_penable		  (apb2_penable		),
	.apb_pwdata			  (apb2_pwdata		),
	.apb_prdata			  (apb2_prdata		),
	
	.int_o				  (timer_int		)
	
	
	);
	
	
	// assign led0 = apb0_pwdata[0];

endmodule