//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9
//Part Number: GW5AST-LV138FPG676AES
//Device: GW5AST-138
//Device Version: B
//Created Time: Sat Jul 20 19:44:33 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	Advanced_FIR_Filter_Top your_instance_name(
		.clk(clk_i), //input clk
		.rstn(rstn_i), //input rstn
		.fir_rfi_o(fir_rfi_o_o), //output fir_rfi_o
		.fir_valid_i(fir_valid_i_i), //input fir_valid_i
		.fir_sync_i(fir_sync_i_i), //input fir_sync_i
		.fir_data_i(fir_data_i_i), //input [7:0] fir_data_i
		.fir_valid_o(fir_valid_o_o), //output fir_valid_o
		.fir_sync_o(fir_sync_o_o), //output fir_sync_o
		.fir_data_o(fir_data_o_o) //output [15:0] fir_data_o
	);

//--------Copy end-------------------
