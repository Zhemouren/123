`timescale 1ns / 1ps

module vga(
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

    wire clk_n;
    
    clk_unit clk_inst(
        .clk(clk),
        .rst(!rst_n),
        .clk_n(clk_n)
    );

    VGA_unit VGA_inst
(
		.clk(clk),
		.rst_n(rst_n),
        .pixel_data(pixel_data),
        .data_req(data_req),
		.posx(posx),
		.posy(posy),
        .hsync(hsync),
		.vsync(vsync),
        .vga_en(vga_en),
		.vga_out(vga_out),
		.h_disp(h_disp),
		.v_disp(v_disp)
	);
        assign vga_clk = clk_n;
   
endmodule
