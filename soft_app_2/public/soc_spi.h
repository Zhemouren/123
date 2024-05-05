#ifndef _SOC_SPI_H
#define _SOC_SPI_H

#include "soc_ls1c102.h"
#include "ls1x.h"

//******************  SPI REGS  ******************/

#define HW_SPI_SPCR		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x00) //控制寄存器
#define HW_SPI_SPSR		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x01) //状态寄存器
#define HW_SPI_TxFIFO		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x02) //数据寄存器
#define HW_SPI_RxFIFO		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x02) //数据寄存器
#define HW_SPI_SPER		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x03) //外部寄存器
#define HW_SPI_SFC_PARAM	            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x04) //参数控制寄存器
#define HW_SPI_SFC_SOFTCS	            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x05) //片选控制寄存器
#define HW_SPI_SFC_TIMING	            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x06) //时序控制寄存器

#define SPI_INT_ENABLE      (SPI->SPCR |= 0x80)          //SPI 控制器中断使能
#define SPI_INT_DISABLE     (SPI->SPCR &= ~(0x80))       //SPI 控制器中断失能

#define SPI_ENABLE          (SPI->SPCR |= 0x40)          //SPI 控制器使能
#define SPI_DISABLE         (SPI->SPCR &= ~(0x40))       //SPI 控制器停止

#define SPI_MODE_MASTER     (SPI->SPCR |= 0x10)
#define SPI_MODE_SLAVE      (SPI->SPCR &= ~(0x10))

#define SPI_CPOL_HIGH       (SPI->SPCR |= 0x08)
#define SPI_CPOL_LOW        (SPI->SPCR &= ~(0x08))

#define SPI_CPHA_REV        (SPI->SPCR |= 0x04)
#define SPI_CPHA_SAME       (SPI->SPCR &= ~(0x04))

#define SPI_TXEMPTY (SPI->SPSR & 0x04)
#define SPI_RXEMPTY (SPI->SPSR & 0x01)
#define SPI_TXFULL  (SPI->SPSR & 0x08)
#define SPI_RXFULL  (SPI->SPSR & 0x02)

#define SPI_MODE_COMPATIBILIY     	(SPI->SPER |= 0x04)
#define SPI_MODE_STAND      		(SPI->SPER &= ~(0x04))

#define SPI_TRANST_1BYTE 			(SPI->SPER &= 0x3F)
#define SPI_TRANST_2BYTE 			(SPI->SPER |= (1<<6))
#define SPI_TRANST_3BYTE 			(SPI->SPER |= (2<<6))
#define SPI_TRANST_4BYTE			(SPI->SPER |= (3<<6))

#define SPI_ENABLE_CS(n)     	    (SPI->SOFTCS |= (1<<n) )
#define SPI_DISABLE_CS(n)    	    (SPI->SOFTCS &= ~(1<<n) )
#define SPI_LOW_CS(n)     		    (SPI->SOFTCS &= ~(1<<(n+4)))
#define SPI_HIGH_CS(n)    		    (SPI->SOFTCS |= (1<<(n+4)) )

#define SPI_DIV_2				0b0000
#define SPI_DIV_4               0b0001
#define SPI_DIV_16              0b0010
#define SPI_DIV_32              0b0011
#define SPI_DIV_8               0b0100
#define SPI_DIV_64              0b0101
#define SPI_DIV_128             0b0110
#define SPI_DIV_256             0b0111
#define SPI_DIV_512             0b1000
#define SPI_DIV_1024            0b1001
#define SPI_DIV_2048            0b1010
#define SPI_DIV_4096            0b1011

void soc_Spi_FreqDiv(uint8_t spr);
void soc_Spi_Init(uint8_t spr);
void soc_Spi_Cs_Down(void);
void soc_Spi_Cs_Up(void);
void soc_Spi_Write_Read_1to4(uint8_t* buf, int n);
void soc_Spi_Write_Read_N(uint8_t* buf, int n);
void soc_Spi_Send(uint8_t* buf, int n);

#endif // _SOC_SPI_H




