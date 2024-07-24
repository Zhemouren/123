/** ---------------------------------File Info-------------------------------- 
 ** @file:               CAU.v                                        
 ** @author:             黄锦  											“，
 ** @contact			 3056830955@qq.com                                    
 ** @date:               2024-07-20            
 ** @version:            V0.0                                                  
 ** @brief:              一个apb总线接口的模块，能够根据寄存器设定进行FFT 和ADC采样
 **                      
 **--------------------------------------------------------------------------- 
 ** @modified:                                                               
 ** @date:               2024-07-20            
 ** @version:            V0.0                                                  
 ** @description:        一个apb总线接口的模块，能够根据寄存器设定进行FFT 和ADC采样
 ** @note:               
 **--------------------------------------------------------------------------- 
 ** @copyright:          
 ***********************************************************************/ 


 `timescale 1ns/1ns

`include "H:/GOWIN/Project/loongxin3/src/fft/temp/FFT/defile.v"

 module CAU (
    input               apb_pclk        ,
	// input				apb_req 		,
    input               apb_prstn       ,
    input               apb_psel        ,
    input  [31:0]       apb_paddr       ,
	input               apb_pwrite      ,
    input               apb_penable     ,
    input  [31:0]       apb_pwdata      ,
    output wire[31:0]   apb_prdata      ,
	input				fft_clk			,
    input               dac_clk         ,//120M
    input               comp_in         ,//数字模拟类输入
    output wire         ad_pwm           //PWM2 需要绑定引脚到外部

 );

//state / register 
localparam      START_AORF      =       4'h1        ;


    // FFT寄存器地址定义
localparam      FFT_DATA_IN     =       4'h5        ;

localparam      FFT_WAIT        =       4'h2        ;//接收到opd信号，允许发送
localparam      FFT_result      =       4'h3        ;
    
    //ADC 地址定义
localparam		ADC_WAIT		=		4'h2 		;//收到sample信号，允许读回数据
localparam      ADC_result      =       4'h4        ;//向软核发送ADC采集的结果

// orther
localparam		ADC_DATA_DEPTH	=		'd16000		;//16000点数据
localparam		FIFO_DEPTH 		=		'd8192		;
localparam		FIFO_FFT_DEPTH 	=		'd256		;//256点fft变换


wire we = apb_penable & apb_psel & apb_pwrite;
wire re = apb_penable & apb_psel &(!apb_pwrite);
    
wire [7:0] sd_adc_out; // sigma delta adc data output

wire sample_rdy;    // flag for adc conversion

reg [31:0] 			start_flag_r	;
wire 				start_flag_fft	;//启动fft
wire				start_flag_adc	;//启动adc采样
wire				enable_readadc  ;//使能adc数据存入fifo之中 正式开始adc数据量计数
reg 				enable_writeadc ;//使能允许adc数据存入fifo之中
// wire				enable_adc2fifo ;

reg [31:0]			fft_data_i_r	;//fft 数据输入
wire[31:0]			fft_data_i		;
wire[31:0]			fft_data_o		;
wire				fft_rst			;

//FFT wire & reg 
wire[`POINTS_LOG-1:0]				idx_o		;
wire[15:0]			xk_re_o		;
wire[15:0]			xk_im_o		;
wire				sod_o		;
wire				ipd_o		;
wire				eod_o		;
wire				busy_o		;
wire				soud_o		;
wire				opd_o		;
wire				eoud_o		;
wire[15:0]			xn_re_i		;
wire[15:0]			xn_im_i		;
reg 				start_i		;
// wire				clk_i		;
// wire				rst_i		;
//
wire[15:0]	fifo_adc_out		; 	//从fifo中读出的数据
wire[15:0]	mask_adc_out		;
reg 	fft_wren	;

	always @(posedge apb_pclk or negedge apb_prstn) 
	begin
		if (!apb_prstn) 
		begin
			start_flag_r		<=		'd0 ;
			// fft_wren			<=		1'b0 ;
		end 
		else if (we) 
		begin
			case (apb_paddr[3:0])
				FFT_DATA_IN : begin	fft_data_i_r<= 	apb_pwdata	; end//如果选择启动FFT 那么要先发送FFT数据，再将FFT数据全部存入FIFO，然后再启动FFT单元
				START_AORF 	:	start_flag_r	<=		apb_pwdata		;//如果选择启动ADC 那么直接启动即可

				default: ; // nothing to do
			endcase
		end
		else begin
				// fft_data_i_r	<= 		'b0		;//如果选择启动FFT 那么要先发送FFT数据，再将FFT数据全部存入FIFO，然后再启动FFT单元
				start_flag_r	<=		'b0		;//如果选择启动ADC 那么直接启动即可
				// fft_wren <= 1'b0 ;
		end
	end
	// (apb_req|we) ?
assign		start_flag_fft		=	 start_flag_r[3] 		;
assign		start_flag_adc		=	 start_flag_r[7] 		;
assign		enable_readadc		=	 start_flag_r[0]		;
assign		fft_data_i			=	 fft_data_i_r[31:0] 	;
// assign		enable_adc2fifo		=	 (enable_adc2fifo)? enable_adc2fifo: enable_adc2fifo_r ;


reg  [31:0]     rdata			;
// wire [31:0]		fft_data_out_re	;//实部
// wire [31:0]		fft_data_out_im	;//虚部
reg [15:0]	rd_adc_count 		;	//读出fifo的adc的数据计数
reg 		rd_adc_flag 		;	//
reg 		rd_adc_flag_r		;	//
reg  [15:0]		fft_data_count 	;//fft数据计数
wire [15:0]		fir_adc_out		;


	always @(posedge apb_pclk ) begin
		if(~apb_psel | apb_pwrite) 

			rdata <= 32'd0;
		else if (re)
		begin
			case (apb_paddr[3:0])
				FFT_WAIT	:	rdata	<=	{30'b0,rd_adc_flag, opd_o}; //also is adc wait
				FFT_result	:	rdata	<=	fft_data_o ;
				ADC_result	:	rdata	<=	{rd_adc_count, fifo_adc_out } ;
				default: rdata = 32'd0;
			endcase
		end
	end

	assign apb_prdata = rdata;


/*******************FFT******************************/

wire	fft_rden		;
wire	fft_empty_o 	;
wire	fft_full_o		;
wire	fft_almost_full_o ;
reg  	fft_rd_falg 	;
reg 	start_i_r1		;
reg 	start_i_r2		;
wire	Almost_Full		;
wire	Empty			;
wire	Full			;
wire[31:0]fifo_fft_data;
//打一拍为数据输入做准备
always @(posedge apb_pclk or negedge apb_prstn) begin
	if(!apb_prstn)begin
		start_i		<= 1'b0 ;
		start_i_r1 	<= 1'b0 ;
		start_i_r2	<= 1'b0 ;
	end
	else begin
		start_i		<= start_flag_fft	;
		start_i_r1	<= start_i			;
		start_i_r2	<= start_i_r1		;
	end
end//


//也要在软核代码中计数是否判断发满了4096个point  
always @(posedge apb_pclk or negedge apb_prstn) begin
	if(!apb_prstn)
		fft_data_count	<= 'd0 ;
	else if(apb_paddr[3:0] == FFT_result && re )
		fft_data_count	<= fft_data_count + 1'b1 ;//最高时4096个point 
	else if(fft_data_count >= (FIFO_FFT_DEPTH))
		fft_data_count	<= 'd0 ;
end

always @(posedge apb_pclk or negedge apb_prstn) begin
	if(!apb_prstn)
		fft_wren <= 1'b0 ;
	else if(we && apb_paddr[3:0] == FFT_DATA_IN)
		fft_wren <= 1'b1 ;
	else
		fft_wren <= 1'b0 ;

end

// assign	fft_wren =( we & (apb_paddr[3:0] == FFT_DATA_IN)) ? 1'b1 : 1'b0 ;
assign	fft_rden =(ipd_o | start_i)? (fft_almost_full_o  ) : 1'b0  ;
assign	fft_rst	 =( (fft_data_count>= FIFO_FFT_DEPTH) ? 1'b1 : 1'b0 ) ;
// assign	fft_rst	 =	Almost_Full
//fifo深度1024
//将发送下来的FFT数据存入fifo，存满之后将fifo的输入发送进入fft运算模块进行运算
	fifo_topx fifo_topx_inst1(
		.Data		(fft_data_i				), //input [31:0] Data
		.Reset		((~apb_prstn)|fft_rst	), //input Reset
		.WrClk		(apb_pclk				), //input WrClk
		.RdClk		(fft_clk				), //input RdClk
		.WrEn		(fft_wren				), //input WrEn
		.RdEn		(fft_rden				), //input RdEn
		.Almost_Full(fft_almost_full_o		), //output Almost_Full
		.Q			(fifo_fft_data	), //output [31:0] Q
		.Empty		(fft_empty_o			), //output Empty
		.Full		(fft_full_o				) //output Full
	);
assign	{xn_im_i,xn_re_i} = fft_almost_full_o?fifo_fft_data : 'd0 ;

	FFT_Top FFT_inst(
		.idx        (idx_o      ),    //output [11:0] idx
		.xk_re      (xk_re_o    ),    //output [15:0] xk_re
		.xk_im      (xk_im_o    ),    //output [15:0] xk_im
		.sod        (sod_o      ),    //output sod
		.ipd        (ipd_o      ),    //output ipd
		.eod        (eod_o      ),    //output eod
		.busy       (busy_o     ),    //output busy
		.soud       (soud_o     ),    //output soud
		.opd        (opd_o      ),    //output opd
		.eoud       (eoud_o     ),    //output eoud
		.xn_re      (xn_re_i    ),    //input [15:0] xn_re
		.xn_im      (xn_re_i     ),    //input [15:0] xn_im
		.start      (start_i |start_i_r1  ),    //input start
		.clk        (fft_clk	),    //input clk
		.rst        ((~apb_prstn)|fft_rst )     //input rst
	);

//FFT计算完毕之后，暂时将数据存放在fifo之中，等待复位
	fifo_topx fifo_topx_inst2(
		.Data		({xk_im_o,xk_re_o} 		), //input [31:0] Data
		.Reset		((~apb_prstn)|fft_rst	), //input Reset
		.WrClk		(fft_clk				), //input WrClk
		.RdClk		(apb_pclk				), //input RdClk
		.WrEn		(opd_o					), //input WrEn
		.RdEn		(re						), //input RdEn
		.Almost_Full(	Almost_Full			), //output Almost_Full
		.Q			(fft_data_o				), //output [31:0] Q
		.Empty		(Empty					), //output Empty
		.Full		(Full					) //output Full
	);
/****************************************************/

// reg			WrEn_i				;	//fifo写使能
reg			adc_enable			;	//使能adc采样 否则处于复位状态
reg 		RdEn_i 				;	//允许读出
wire		Empty_o				;	//FIFO 非空
wire		Full_o				;
// reg [15:0]	wr_adc_count		;	//写入fifo的adc数据计数
// reg [15:0]	rd_adc_count 		;	//读出fifo的adc的数据计数


wire 		fir_rfi_o_o		; //output fir_rfi_o
wire 		fir_valid_i_i	; //input fir_valid_i
wire 		fir_sync_i_i	; //input fir_sync_i
// wire 		fir_data_i_i	; //input [7:0] fir_data_i
wire 		fir_valid_o_o	; //output fir_valid_o
wire 		fir_sync_o_o	; //output fir_sync_o
wire 		Almost_Full_o	;
// wire		adc_fir_rst 	;//读完数据后对全部进行复位
// wire 		fir_data_o_o	;//output [15:0] fir_data_o
//adc_enable
always @(posedge apb_pclk or negedge apb_prstn ) begin
	if(!apb_prstn)
		adc_enable <= 1'b0 ;
	else if(start_flag_adc == 1'b1 & adc_enable == 1'b0 )
		adc_enable <= 1'b1 ;
	else if(rd_adc_count >= (ADC_DATA_DEPTH) )
		adc_enable <= 1'b0 ;
	else
		adc_enable	<= adc_enable ;
end

//WrEn_i
// always @(posedge apb_pclk or negedge apb_prstn ) begin
// 	if(!apb_prstn)
// 		WrEn_i <= 1'b0 ;
// 	else if(enable_adc2fifo == 1'b1 & sample_rdy == 1'b1 )
// 		WrEn_i <= 1'b1 ;
// 	else if(wr_adc_count >= (ADC_DATA_DEPTH) )
// 		WrEn _i <= 1'b0 ;
// 	else	
// 		WrEn_i <= 1'b0 ;
// end

//wr_adc_count
// always @(posedge dac_clk or negedge apb_prstn ) begin
// 	if(!apb_prstn)
// 		wr_adc_count <= 'd0 ;
// 	else if(WrEn_i == 1'b1 )
// 		wr_adc_count <= wr_adc_count + 1'b1 ;
// 	else if(wr_adc_count >= (ADC_DATA_DEPTH)+2 )
// 		wr_adc_count <= 'd0 ;
// end

//rd_adc_flag
always @(posedge dac_clk or negedge apb_prstn) begin
	if(!apb_prstn)
		rd_adc_flag <= 1'b0  ;
	else if(sample_rdy == 1'b1 & rd_adc_flag == 1'b0 )
		rd_adc_flag <= 1'b1	 ;
	else if( re && apb_paddr[3:0] ==ADC_result )
		rd_adc_flag <= 1'b0  ;
end

//rd_adc_count
always @(posedge apb_pclk or negedge apb_prstn ) begin
	if(!apb_prstn)
		rd_adc_count <= 'd0 ;
	else if(RdEn_i == 1'b1  )
		rd_adc_count <= rd_adc_count + 1'b1 ;
	else if(rd_adc_count >= ADC_DATA_DEPTH )
		rd_adc_count <= 'd0 ;
end

//enable_writeadc
always @(posedge apb_pclk or negedge apb_prstn) begin
	if(!apb_prstn)
		enable_writeadc <= 1'b0 ;
	else if( enable_writeadc == 1'b0 & start_flag_r[1] == 1'b1 )
		enable_writeadc	<= 1'b1 ;
	else if( adc_enable == 1'b0 )
		enable_writeadc	<= 1'b0 ;
end
// RdEn_i
always @(posedge apb_pclk or negedge apb_prstn ) begin
	if(!apb_prstn)
		RdEn_i <= 1'b0 ;
	else if(Almost_Full_o == 1'b1  & enable_readadc )
		RdEn_i <=  1'b1 ;
	else 
		RdEn_i <= 'd0 ;
end


/******************ADC*******************************/
//adc出来后直接进入fir进行滤波处理后再进入fifo
//上位机使能adc之后才开启adc功能和fifo功能 否则一直处于复位状态 
ADC_top adc_inst(
    .clk_in         (dac_clk        			),//clk_in =66M 采样率=8K
    .rstn           (adc_enable					),//adc_enable常态下高电平复位 高电平不复位
    .digital_out    (sd_adc_out     			), //精度8bit
    .analog_cmp     (comp_in        			),//运放|LVDS差分输入
    .analog_out     (ad_pwm         			),//PWM输出
    .sample_rdy     (sample_rdy     			)//采样数据有效 
    );

// assign dac_data = sd_adc_out;
// assign dac_clk = clk_hs; //120MHz generated by PLL

// assign		RdEn_i	=	~Empty_o			; //非空时候允许读出


assign				fir_valid_i_i	=	 fir_rfi_o_o & sample_rdy & enable_writeadc; //采样有效的时候才允许输入FIR中计算
assign				fir_sync_i_i	=	 fir_rfi_o_o & sample_rdy & enable_writeadc;
// assign				adc_fir_rst		=	(rd_adc_count >= ADC_DATA_DEPTH )? 1'b1:1'b0
//adc采集到的数据直接进入FIR进行滤波 每次sample有效的时候再取出 
Advanced_FIR_Filter_Top fir_inst(
	.clk			(dac_clk		), //input clk
	.rstn			(adc_enable		), //input rstn
	.fir_rfi_o 		(fir_rfi_o_o	), //output fir_rfi_o
	.fir_valid_i	(fir_valid_i_i	), //input fir_valid_i
	.fir_sync_i		(fir_sync_i_i	), //input fir_sync_i
	.fir_data_i		(sd_adc_out		), //input [7:0] fir_data_i
	.fir_valid_o	(fir_valid_o_o	), //output fir_valid_o
	.fir_sync_o		(fir_sync_o_o	), //output fir_sync_o
	.fir_data_o		(fir_adc_out	) //output [15:0] fir_data_o
	);

//fifo 深度4092 确保不会溢出
//fifo需要进行读写复位 写完全部数据后复位写
fifo_topx fifo_adc_inst(
	.Data		({16'b0,fir_adc_out}	),// input [31:0] Data
 	.Reset		(adc_fir_rst		), //input Reset
	.WrClk		(dac_clk		), //input WrClk
	.RdClk		(apb_pclk		), //input RdClk
	.WrEn		(fir_sync_o_o&fir_valid_o_o	), //input WrEn
	.RdEn		(RdEn_i			), //input RdEn
 	.Almost_Full(Almost_Full_o), //output Almost_Full
	.Q			({mask_adc_out,fifo_adc_out}	), //output [31:0] Q
	.Empty		(Empty_o		), //output Empty
	.Full		(Full_o			) //output Full
	);


/****************************************************/

 endmodule
