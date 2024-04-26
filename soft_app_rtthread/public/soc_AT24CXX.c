#include "soc_AT24CXX.h"

#include "soc_i2c.h"
#include "soc_ls1c102.h"

/****************************************************************
  * 函数名：AT24CXX_WriteByte
  * 功  能：写一个字节
  * 参  数：u16Addr要写入的地址
			u8Data要写入的数据
  * 返回值：无
  * 说  明：无
****************************************************************/
void AT24CXX_WriteByte(uint16_t u16Addr, uint8_t u8Data) {
	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(DEV_ADDR | WRITE_CMD);// 器件寻址+读/写选择
	
	soc_I2C_wait();
	
	soc_I2C_SendData((uint8_t)((u16Addr >> 8) & 0xFF));
	
	soc_I2C_wait();
	
	soc_I2C_SendData((uint8_t)(u16Addr & 0xFF));
	
	soc_I2C_wait();
	
	soc_I2C_SendData(u8Data);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

    soc_I2C_delay(20);// 需要延时 2u ，保证下次能正常开始传输
}

/****************************************************************
  * 函数名：x24Cxx_ReadByte
  * 功  能：读一个字节
  * 参  数：u16Addr要读取的地址
  * 返回值：u8Data读出的数据
  * 说  明：无
****************************************************************/
uint8_t AT24CXX_ReadByte(uint16_t u16Addr) {
	uint8_t u8Data = 0;

	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(DEV_ADDR | WRITE_CMD);// 器件寻址+读/写选择

	soc_I2C_wait();

	soc_I2C_SendData((uint8_t)((u16Addr >> 8) & 0xFF));

	soc_I2C_wait();

	soc_I2C_SendData((uint8_t)(u16Addr & 0xFF));

	soc_I2C_wait();

	soc_I2C_GenerateSTART(ENABLE);

	soc_I2C_SendData(DEV_ADDR | READ_CMD);// 器件寻址+读

	soc_I2C_wait();

    I2C->CR_SR = 0x28;// 不应答
    
	soc_I2C_wait();

	u8Data = (uint8_t)I2C->DR;

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

	return u8Data;
}

uint8_t AT24CXX_Read2Byte(uint16_t u16Addr) {
	uint8_t u8Data = 0;

	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(DEV_ADDR | WRITE_CMD);// 器件寻址+读/写选择

	soc_I2C_wait();

	soc_I2C_SendData((uint8_t)((u16Addr >> 8) & 0xFF));

	soc_I2C_wait();

	soc_I2C_SendData((uint8_t)(u16Addr & 0xFF));

	soc_I2C_wait();

	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(DEV_ADDR | READ_CMD);// 器件寻址+读

	soc_I2C_wait();

    I2C->CR_SR = 0x20;// 应答
    
    soc_I2C_wait();
    
    u8Data = (uint8_t)I2C->DR;
    
    I2C->CR_SR = 0x28;// 不应答

	soc_I2C_wait();

	u8Data = (uint8_t)I2C->DR;

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

	return u8Data;
}
