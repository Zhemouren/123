//Copyright (C)2014-2023 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.9 (64-bit)
//Part Number: GW5A-LV25MG121NES
//Device: GW5A-25
//Device Version: A
//Created Time: Sat Apr 20 11:36:50 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    blk_mem_gen_0 your_instance_name(
        .dout(dout_o), //output [31:0] dout
        .clk(clk_i), //input clk
        .oce(oce_i), //input oce
        .ce(ce_i), //input ce
        .reset(reset_i), //input reset
        .wre(wre_i), //input wre
        .ad(ad_i), //input [13:0] ad
        .din(din_i), //input [31:0] din
        .byte_en(byte_en_i) //input [3:0] byte_en
    );

//--------Copy end-------------------
