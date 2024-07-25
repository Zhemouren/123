//Copyright (C)2014-2024 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//Tool Version: V1.9.9 (64-bit) 
//Created Time: 2024-05-11 02:34:42
create_clock -name CLK_50M -period 20 -waveform {0 10} [get_ports {CLK50M}]
create_clock -name TCK -period 1000 -waveform {0 500} [get_ports {LJTAG_TCK}] -add


create_clock -name cmos_pclk -period 10 [get_ports {cmos_pclk}] -add
create_clock -name cmos_vsync -period 1000 [get_ports {cmos_vsync}] -add
