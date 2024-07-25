//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.10 (64-bit)
//Part Number: GW5AST-LV138FPG676AES
//Device: GW5AST-138
//Device Version: B
//Created Time: Thu Jul 25 20:49:56 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    mem_pll your_instance_name(
        .lock(lock), //output lock
        .clkout0(clkout0), //output clkout0
        .clkout1(clkout1), //output clkout1
        .clkout2(clkout2), //output clkout2
        .clkin(clkin), //input clkin
        .reset(reset), //input reset
        .enclk0(enclk0), //input enclk0
        .enclk1(enclk1), //input enclk1
        .enclk2(enclk2) //input enclk2
    );

//--------Copy end-------------------
