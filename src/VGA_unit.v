module VGA_unit# (
    parameter               X_BITS=4'd12,
    parameter               Y_BITS=4'd12,
  //MODE_720p ;
    parameter V_TOTAL = 12'd525,
    parameter V_FP = 12'd2,
    parameter V_BP = 12'd25,
    parameter V_SYNC = 12'd2,
    parameter V_ACT = 12'd480,
    parameter H_TOTAL = 12'd800,
    parameter H_FP = 12'd8,
    parameter H_BP = 12'd40,
    parameter H_SYNC = 12'd96,
    parameter H_ACT = 12'd640,
    parameter HV_OFFSET = 12'd0
)
(
	input clk,
	input rst_n,
	
	input       [15:0] pixel_data,
    output       data_req,

	output      [9:0]posx,
	output      [9:0]posy,	
	output      hsync,
	output      vsync,
    output      vga_en,
	output [15:0] vga_out,

    output  [10:0]  h_disp,       //HDMI屏水平分辨率
    output  [10:0]  v_disp        //HDMI屏垂直分辨率  

);

	reg clk_25M;

    wire [9:0]     act_x      ;
    wire [9:0]     act_y      ;    
    wire            hs         ;
    wire            vs         ;
    wire            de         ;
    //产生visa时序 
sync_vg u_sync_vg                                        
    (                                                 
        .clk                  (  clk              ),//input                   clk,                                 
        .rstn                 (  rst_n            ),//input                   rstn,                            
        .vs_out               (  vs                   ),//output reg              vs_out,                                                                                                                                      
        .hs_out               (  hs                   ),//output reg              hs_out,            
        .de_out               (  de                   ),//output reg              de_out,             
        .x_act                (  act_x                ),//output reg [X_BITS-1:0] x_out,             
        .y_act                (  act_y                ) //output reg [Y_BITS:0]   y_out,             
    );

//行场分辨率
assign h_disp = H_ACT;
assign v_disp = V_ACT; 
//VGA行场同步信号
assign hsync  = hs;
assign vsync  = vs;

//使能RGB565数据输出
assign vga_en  = de;
assign  data_req=de;
//
assign  posx=de ? act_x:'d0;
assign  posy=de ? act_y:'d0;

//RGB888数据输出
assign vga_out = vga_en ? pixel_data : 24'd0;

endmodule