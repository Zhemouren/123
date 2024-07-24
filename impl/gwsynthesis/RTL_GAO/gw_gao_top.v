module gw_gao(
    I2C_SCL,
    I2C_SDA,
    pps_led,
    SPI_CLK,
    SPI_MISO,
    SPI_MOSI,
    SPI_CSN1,
    SPI_CSN2,
    SPI_CSN3,
    LJTAG_TRST,
    LJTAG_TMS,
    LJTAG_TDO,
    LJTAG_TDI,
    LJTAG_TCK,
    GPIO01,
    GPIO13,
    GPIO36,
    GPIO37,
    GPIO38,
    GPIO39,
    \A_cpu/uart1_int ,
    clk_ext32m,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input I2C_SCL;
input I2C_SDA;
input pps_led;
input SPI_CLK;
input SPI_MISO;
input SPI_MOSI;
input SPI_CSN1;
input SPI_CSN2;
input SPI_CSN3;
input LJTAG_TRST;
input LJTAG_TMS;
input LJTAG_TDO;
input LJTAG_TDI;
input LJTAG_TCK;
input GPIO01;
input GPIO13;
input GPIO36;
input GPIO37;
input GPIO38;
input GPIO39;
input \A_cpu/uart1_int ;
input clk_ext32m;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire I2C_SCL;
wire I2C_SDA;
wire pps_led;
wire SPI_CLK;
wire SPI_MISO;
wire SPI_MOSI;
wire SPI_CSN1;
wire SPI_CSN2;
wire SPI_CSN3;
wire LJTAG_TRST;
wire LJTAG_TMS;
wire LJTAG_TDO;
wire LJTAG_TDI;
wire LJTAG_TCK;
wire GPIO01;
wire GPIO13;
wire GPIO36;
wire GPIO37;
wire GPIO38;
wire GPIO39;
wire \A_cpu/uart1_int ;
wire clk_ext32m;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(pps_led),
    .data_i({I2C_SCL,I2C_SDA,pps_led,SPI_CLK,SPI_MISO,SPI_MOSI,SPI_CSN1,SPI_CSN2,SPI_CSN3,LJTAG_TRST,LJTAG_TMS,LJTAG_TDO,LJTAG_TDI,LJTAG_TCK,GPIO01,GPIO13,GPIO36,GPIO37,GPIO38,GPIO39,\A_cpu/uart1_int }),
    .clk_i(clk_ext32m)
);

endmodule
