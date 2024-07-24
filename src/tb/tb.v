`timescale 1ns/1ps
module test ;
    reg CLK50M;
    reg rstn;
    wire GPIO01;
    wire GPIO13;
    wire GPIO14;
    wire GPIO15;
    wire GPIO16;
    wire GPIO17;
    wire GPIO18;
    wire GPIO19;
    wire GPIO20;
    wire GPIO34;
    wire GPIO35;
    wire GPIO36;
    wire GPIO37;
    wire GPIO38;
    wire GPIO39;
    wire GPIO40;
    wire I2C_SCL;
    wire I2C_SDA;
    wire SDA;
    wire SCL;
    wire PWM01;

   initial begin
      CLK50M = 0; //50MHz
      rstn = 0 ;
      #20 rstn = 1;
      forever begin
         #10 CLK50M  = ~CLK50M ; //50MHz

      end
   end

GSR GSR(.GSRI(rstn));



godson_mcu_top godson_mcu_top1(
	.CLK50M(CLK50M),
	.RSTN(~rstn), 
	.pps_led(pps_led),

	.GPIO01(GPIO01),
	.GPIO13(GPIO13),
	.GPIO14(GPIO14),
	.GPIO15(GPIO15),
	.GPIO16(GPIO16),
	.GPIO17(GPIO17),
	.GPIO18(GPIO18),
	.GPIO19(GPIO19),
	.GPIO20(GPIO20),
	.GPIO34(GPIO34),
	.GPIO35(GPIO35),
	.GPIO36(GPIO36),
	.GPIO37(GPIO37),
	.GPIO38(GPIO38),
	.GPIO39(GPIO39),
	.GPIO40(GPIO40),
	// inout [31:0]  GPIOA,
	// inout [31:0]  GPIOB, 
	
	.I2C_SCL(I2C_SCL),
	.I2C_SDA(I2C_SDA),
	.SDA(SDA),
	.SCL(SCL),
	.PWM01(PWM01)
);

   //finish simulation
   initial #100000       $finish ;

endmodule