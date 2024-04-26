#include "soc_w25qxx.h"
#include "soc_spi.h"
#include "soc_ls1c102.h"

// 读取芯片ID
// 返回值如下:
// 0XEF13,表示芯片型号为W25Q80
// 0XEF14,表示芯片型号为W25Q16
// 0XEF15,表示芯片型号为W25Q32
// 0XEF16,表示芯片型号为W25Q64
// 0XEF17,表示芯片型号为W25Q128
uint16_t W25QXX_ReadID(void) {
	uint8_t buf[4] = {0x90, 0, 0, 0};
	uint8_t buf1[2] = {0xFF, 0xFF};
	
    soc_Spi_Cs_Down();

    soc_Spi_Write_Read_1to4(buf, 4);//trans
    soc_Spi_Write_Read_1to4(buf1, 2);//recv // writing any two bytes, reading two bytes of data simultaneously

	soc_Spi_Cs_Up();
	
	return *((uint16_t*)buf1);
}


