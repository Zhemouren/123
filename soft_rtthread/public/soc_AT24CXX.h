#ifndef _SOC_AT24CXX_H
#define _SOC_AT24CXX_H

#ifdef __cplusplus
extern "C" {
#endif

#include "soc_ls1c102.h"

#define READ_CMD				1
#define WRITE_CMD				0

// #define x24C32 // device name, AT24C32、AT24C64、AT24C128、AT24C256、AT24C512
#define x24C64
#define DEV_ADDR				0xAE					//设备硬件地址
// 因为硬件上 A2 A1 A0 连接到高电平，结合高四位是 4'b1010 ，所以设备硬件地址为 0xAE

#ifdef x24C32
 	#define PAGE_NUM			128						//页数
	#define PAGE_SIZE			32						//页面大小(字节)
	#define CAPACITY_SIZE		(PAGE_NUM * PAGE_SIZE)	//总容量(字节)
	#define ADDR_BYTE_NUM		2						//地址字节个数
#endif

#ifdef x24C64
 	#define PAGE_NUM			256						//页数
	#define PAGE_SIZE			32						//页面大小(字节)
	#define CAPACITY_SIZE		(PAGE_NUM * PAGE_SIZE)	//总容量(字节)
	#define ADDR_BYTE_NUM		2						//地址字节个数
#endif

#ifdef x24C128
 	#define PAGE_NUM			256						//页数
	#define PAGE_SIZE			64						//页面大小(字节)
	#define CAPACITY_SIZE		(PAGE_NUM * PAGE_SIZE)	//总容量(字节)
	#define ADDR_BYTE_NUM		2						//地址字节个数
#endif

#ifdef x24C256
 	#define PAGE_NUM			512						//页数
	#define PAGE_SIZE			64						//页面大小(字节)
	#define CAPACITY_SIZE		(PAGE_NUM * PAGE_SIZE)	//总容量(字节)
	#define ADDR_BYTE_NUM		2						//地址字节个数
#endif

#ifdef x24C512
 	#define PAGE_NUM			512						//页数
	#define PAGE_SIZE			128						//页面大小(字节)
	#define CAPACITY_SIZE		(PAGE_NUM * PAGE_SIZE)	//总容量(字节)
	#define ADDR_BYTE_NUM		2						//地址字节个数
#endif

void AT24CXX_WriteByte(uint16_t u16Addr, uint8_t u8Data);
uint8_t AT24CXX_ReadByte(uint16_t u16Addr);
uint8_t AT24CXX_Read2Byte(uint16_t u16Addr);

#ifdef __cplusplus
}
#endif

#endif // _SOC_AT24CXX_H


