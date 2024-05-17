`timescale 1ns / 1ps
//
// Company: 
// Engineer: 
// 
// Create Date:    5/5/2024
// Design Name: 
// Module Name:    I2C_Master 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
               /*
	       I2C总线通信协议通用模块：SCL SDA
	       开始信号：SCL高时，SDA拉低
	       结束信号：SCL高时，SDA拉高
	       SDA数据在SCL低电平时置位
	       模块中实际默认开始信号与结束信号在SCL高电平中间产生
	       SDA数据位改变在SCL低电平的中间产生
	       SCL时钟频率为200kHz
	       从机地址可调，模块既支持读也支持写，通过输入管脚控制
		*/
// 
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//

module I2C_Master(
    //I/O
    input		I_Clk_in,
    input		I_Rst_n,
    output		O_SCL,
    inout		IO_SDA,
    
    input		I_Start,
    // output	reg	O_Done,
    output  wire    ack,
    input  [6:0] 	I_Slave_Addr,
    input		I_R_W_SET,
    input  [15:0]	I_R_W_Data,
    output reg[7:0] 	O_Data,
    output reg     	O_Error
 );
 

		// I_Clk_in,
		// I_Rst_n,
		// O_SCL,
		// IO_SDA,
		// //control_sig
		// I_Start,   //一次读/写操作开始信号
		// O_Done,    //一次读/写操作结束信号

		// I_R_W_SET, //读写控制信号，写为1，读为0
		// I_Slave_Addr,//从机地址
		// I_R_W_Data,//读写控制字16位I_R_W_Data[15:8]->reg_addr,I_R_W_Data[7:0]->W_data,读状态则可默认为7'b0
        //     	O_Data,    //读到的数据，当O_Done拉高时数据有效
		// O_Error	  //检测传输错误信号，当出现从机未响应，从机不能接收数据等情况时，拉高电平		
parameter   CLK_FREQ   = 32'd8_000_000         ; //模块输入的时钟频率,原频率为50M，此处更改为8MHz
parameter   I2C_FREQ   = 24'd100_000            ;  //IIC_SCL的时钟频率
parameter clk_divide  = CLK_FREQ/I2C_FREQ       ;//模块驱动时钟的分频系数500,50M/100k=500,分频250为scl

parameter clk_divide1 = (clk_divide >> 1'b1)    ;//模块驱动时钟的分频系数500/2=250，产生scl时钟线 249

parameter clk_divide2 = (clk_divide1 >> 1'b1)-1 ;//模块驱动时钟的分频系数250/2=125-1，scl低电平中间位 124

parameter clk_divide3 = (clk_divide2 >> 1'b1)   ;//模块驱动时钟的分频系数124/2=62，scl的4倍频时钟 4

parameter clk_divide4 = (clk_divide1+clk_divide2)+1;//用来产生IIC总线SCL高电平最中间的标志位 375

reg    [8:0]  SCL_cnt   ; //分频时钟计数
wire    scl_h_mid;
wire    scl_l_mid;
wire    slc_h2l;//产生时钟下降沿
wire    scl__o;
// reg    [8:0]	SCL_cnt;
reg         	R_SCL_En;

assign scl_h_mid = (SCL_cnt==clk_divide2)? 1'b1:1'b0;//如果等于125，高电平中间
assign scl_l_mid = (SCL_cnt==clk_divide4)? 1'b1:1'b0;//如果等于375，低电平中间
assign scl__o    = (SCL_cnt<=clk_divide1)? 1'b1:1'b0;//如果cnt2 小于249，那么高电平，大于250，低电平
assign scl_h2l   = (SCL_cnt==clk_divide1)?1'b1:1'b0;//如果等于250，高向低

always @(posedge I_Clk_in or negedge I_Rst_n) begin
    if(!I_Rst_n) begin
        SCL_cnt <= 9'd0;
    end
    else if(R_SCL_En)begin
        if(SCL_cnt ==(clk_divide)-1) begin//cnt2==39,实际已经数到40
        SCL_cnt <= 9'd0;
    end
        else
        SCL_cnt <= SCL_cnt + 1'b1;
    end
    else    SCL_cnt<=9'd0;
end

assign          O_SCL=scl__o;
 
 /******SDA读写控制模块******/
 reg [5:0]    C_State;
 reg          SDA_IO_DIR;//SDA双向选择I/O口 1为输出，0为输入
 reg          SDA_reg;      //SDA的输出端口
 reg          O_Done;       //结束信号
//  reg [7:0]    O_Data;       //读到的数据
//  reg          O_Error;		//传输错误指示信号
// 
///****状态定义*****/
 parameter    Start=6'd0;  //开始
 parameter    iic_address=6'd1;//写入oled地址 这里只有7位
 parameter    w_or_r=6'd2;//写入读写位
 parameter    ack1=6'd3;  //第一次ack
 parameter    reg_addr=6'd4;//写入寄存器地址值
 parameter    ack2=6'd5;    //ack2
 parameter    data_addr=6'd6; //写入寄存器数据
 parameter    ack3=6'd7;    //ack3
 parameter    Stop=6'd8;    //停止发送数据，此刻时钟不停
 parameter    Idle=6'd9;    //进入空闲状态，停止时钟
//  parameter     wait1=6'd10; //空操作
//  parameter      wait2=6'd11;//空操作
 parameter    ReStart=6'd10;//传出寄存器值
 reg[5:0]    sda_cnt;


always @ (posedge I_Clk_in or negedge I_Rst_n)begin
     if(!I_Rst_n)begin
        sda_cnt<=6'd0;
        SDA_IO_DIR<=1'b1;//默认设置为输出管脚
 		SDA_reg<=1'b1;      //SDA输出默认拉高
 		O_Error<=1'b0;
        R_SCL_En<=1'b0;
        O_Done<=1'b0;
        C_State<=Start;
     end
     else  if(I_Start |(C_State ==ReStart))//或者处于重新开始状态的时候自动跳回start
         begin
             case (C_State)
                 Start: begin
                     O_Error<=1'b0; 
                     R_SCL_En<=1'b1;
                     if(scl_h_mid)
                         begin
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd1;
                             C_State<=iic_address;
                         end
                     else
                         begin
                             SDA_reg<=1'b1;
                             C_State<=C_State;
                         end
                 end
                 iic_address : begin 
                     if(scl_l_mid)
                         begin
                            if(sda_cnt==6'd8)begin
                             sda_cnt<=6'd0;
                             C_State<=w_or_r;
                                end
                            else if(scl_l_mid)
                            begin
                             SDA_reg=I_Slave_Addr[6'd7-sda_cnt];
                             sda_cnt<=sda_cnt+1'd1;
                            end
                         end
                     else
                         begin
                             C_State<=C_State;
                         end
                 end
                 w_or_r : begin 
                     if(scl_l_mid)
                         begin
                             SDA_reg<=1'b0;
                             C_State<=ack1;
                         end
                     else
                         begin
                             C_State<=C_State;
                         end
                 end
                 ack1 : begin 
                         SDA_IO_DIR<=1'b0;
                     if(scl_h_mid && sda_cnt==6'd0 )
                         begin
                             O_Error<=IO_SDA;
                             sda_cnt<=6'd1;
                         end
                     else if(O_Error==1'd0 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= reg_addr;
                         end 
                     else if(O_Error==1'd1 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= Stop;
                         end 
                     else         
                         begin
                             C_State<=C_State;
                         end             
                 end
                 reg_addr : begin 
                     if(scl_l_mid)
                         begin
                            if(sda_cnt==6'd8)begin
                             sda_cnt<=6'd0;
                             C_State<=ack2;
                            end
                             else if(scl_l_mid)
                            begin
                             SDA_reg=I_R_W_Data[6'd15-sda_cnt];
                             sda_cnt<=sda_cnt+1'd1;
                            end
                         end

                     else
                         begin
                             C_State<=C_State;
                         end
                 end
                 ack2 : begin 
                         SDA_IO_DIR<=1'b0;
                     if(scl_h_mid && sda_cnt==6'd0 )
                         begin
                             O_Error<=IO_SDA;
                             sda_cnt<=6'd1;
                         end
                     else if(O_Error==1'd0 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= data_addr;
                         end 
                     else if(O_Error==1'd1 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= Stop;
                         end 
                     else         
                         begin
                             C_State<=C_State;
                         end      
                 end
                 data_addr : begin 
                     if(scl_l_mid)
                         begin
                            if(sda_cnt==6'd8)begin
                             sda_cnt<=6'd0;
                             C_State<=ack3;
                            end
                             else if(scl_l_mid)
                            begin
                             SDA_reg=I_R_W_Data[6'd7-sda_cnt];
                             sda_cnt<=sda_cnt+1'd1;
                            end
                         end
                     else
                         begin
                             C_State<=C_State;
                         end
                 end
                 ack3 : begin 
                         SDA_IO_DIR<=1'b0;
                     if(scl_h_mid && sda_cnt==6'd0 )
                         begin
                             O_Error<=IO_SDA;
                             sda_cnt<=6'd1;
                         end
                     else if(O_Error==1'd0 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= Stop;
                         end 
                     else if(O_Error==1'd1 && scl_h2l)
                         begin
                             SDA_IO_DIR<=1'b1;
                             SDA_reg<=1'b0;
                             sda_cnt<=6'd0;

                             C_State<= Stop;
                         end 
                     else         
                         begin
                             C_State<=C_State;
                         end       
                 end
                 Stop : begin 
                     if(scl_h_mid)
                         begin
                             SDA_reg<=1'b1;
                             C_State<=Idle;
                         end
                     else         
                         begin
                             C_State<=C_State;
                         end   
                 end
                 Idle : begin 
                            R_SCL_En<=1'b0;
                            O_Done<=1'b1;//拉高Done信号，DONE会拉高ack
                            C_State<=ReStart;

                 end
                 ReStart : begin 
                        O_Done<=1'b0;   // DONe重新拉低ack
                        SDA_IO_DIR<=1'b1;
                        sda_cnt<=6'd0;
                        SDA_reg<=1'b1;      //SDA输出默认拉高
                        O_Error<=1'b0;
                        R_SCL_En<=1'b0;
                        C_State<=Start;
                 end
                 default: begin
                        O_Done<=1'b0;
                        SDA_IO_DIR<=1'b1;
                        sda_cnt<=6'd0;
                        SDA_reg<=1'b1;      //SDA输出默认拉高
                        O_Error<=1'b0;
                        R_SCL_En<=1'b0;
                        C_State<=Start;

                 end
              endcase
         end
     else  begin   
                        O_Done<=1'b0;
                        SDA_IO_DIR<=1'b1;
                        sda_cnt<=6'd0;
                        SDA_reg<=1'b1;      //SDA输出默认拉高
                        O_Error<=1'b0;
                        R_SCL_En<=1'b0;
                        C_State<=Start;
     end
 end

 assign  IO_SDA=(SDA_IO_DIR)?SDA_reg:1'bz;
 assign ack=O_Done?1'b1:1'b0;

endmodule
