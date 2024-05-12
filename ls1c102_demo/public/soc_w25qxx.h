#ifndef _SOC_W25QXX_H
#define _SOC_W25QXX_H

#ifdef __cplusplus
extern "C" {
#endif

#include "soc_ls1c102.h"

// W25X系列/Q系列芯片列表
// W25Q80  ID  0XEF13
// W25Q16  ID  0XEF14
// W25Q32  ID  0XEF15
// W25Q64  ID  0XEF16
// W25Q128 ID  0XEF17
#define W25Q80 0XEF13
#define W25Q16 0XEF14
#define W25Q32 0XEF15
#define W25Q64 0XEF16
#define W25Q128 0XEF17

extern uint16_t W25QXX_TYPE; // 定义 W25QXX 芯片型号

//
// 指令表
#define W25X_WriteEnable 0x06
#define W25X_WriteDisable 0x04

#define W25X_ReadStatusReg1 0x05
#define W25X_ReadStatusReg2 0x31
#define W25X_ReadStatusReg3 0x11

#define W25X_WriteStatusReg1 0x01
#define W25X_ReadData 0x03
#define W25X_FastReadData 0x0B
#define W25X_FastReadDual 0x3B
#define W25X_PageProgram 0x02
#define W25X_BlockErase 0xD8
#define W25X_SectorErase 0x20
#define W25X_ChipErase 0xC7
#define W25X_PowerDown 0xB9
#define W25X_ReleasePowerDown 0xAB
#define W25X_DeviceID 0xAB
#define W25X_ManufactDeviceID 0x90
#define W25X_JedecDeviceID 0x9F

uint16_t W25QXX_ReadID(void);         // 读取FLASH ID

#ifdef __cplusplus
}
#endif

#endif // _SOC_W25QXX_H
