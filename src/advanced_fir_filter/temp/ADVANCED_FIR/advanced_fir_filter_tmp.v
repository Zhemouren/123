//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.10 (64-bit)
//Part Number: GW5AST-LV138FPG676AES
//Device: GW5AST-138
//Device Version: B
//Created Time: Thu Jul 25 18:03:58 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	Advanced_FIR_Filter_Top your_instance_name(
		.clk(clk), //input clk
		.rstn(rstn), //input rstn
		.fir_rfi_o(fir_rfi_o), //output fir_rfi_o
		.fir_valid_i(fir_valid_i), //input fir_valid_i
		.fir_sync_i(fir_sync_i), //input fir_sync_i
		.fir_data_i(fir_data_i), //input [7:0] fir_data_i
		.fir_valid_o(fir_valid_o), //output fir_valid_o
		.fir_sync_o(fir_sync_o), //output fir_sync_o
		.fir_data_o(fir_data_o) //output [15:0] fir_data_o
	);

//--------Copy end-------------------
