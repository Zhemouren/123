parameter DRAM_TYPE = "DDR3";
parameter nCK_PER_CLK = 4;
parameter tCK = 2500;
parameter REG_CTRL = "OFF";
parameter DQ_WIDTH = 16;
parameter DRAM_WIDTH = 16;
parameter ECC = "OFF";
parameter RANK_WIDTH = 1;
parameter BANK_WIDTH = 3;
parameter ROW_WIDTH = 14;
parameter COL_WIDTH = 10;
parameter tRP = 12500;
parameter tRRD = 7500;
parameter tRTP = 7500;
parameter tRCD = 12500;
parameter tRC = 55000;
parameter tRAS = 37500;
parameter tFAW = 40000;
parameter tWTR = 7500;
parameter tCKE = 75000;
parameter tREFI = 7800000;
parameter tRFC = 160000;
parameter tDLLK = 512;
parameter BURST_MODE = "8";
parameter BURST_TYPE = "SEQ";
parameter CL = 5;
parameter CWL = 5;
parameter AL = "0";
parameter SLOT_0_CONFIG = 8'b00000001;
parameter SLOT_1_CONFIG = 8'b00000000;
parameter RTT_NOM = "40";
parameter RTT_WR = "OFF";
parameter USER_REFRESH = "OFF";
parameter ADDR_CMD_MODE = "1T";
parameter OUTPUT_DRV = "LOW";
