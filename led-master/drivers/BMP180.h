#ifndef __BMP180_H
#define __BMP180_H

// I2C1，引脚CAMDATA4(GPIO54)和CAMDATA5(GPIO55)的第四复用  
#define LS1C_I2C_SDA1_GPIO54            (54)  
#define LS1C_I2C_SCL1_GPIO55            (55)  
  
// I2C2，引脚CAMDATA6(GPIO56)和CAMDATA7(GPIO57)的第四复用  
#define LS1C_I2C_SDA2_GPIO56            (56)  
#define LS1C_I2C_SCL2_GPIO57            (57)  


#define	BMP180_SlaveAddress     0xee	//气压传感器器件地址

#define   OSS 0	 
#define   REG_Pressure 0x34 // oss=0 4.5


void Init_BMP180(void);         //初始化IO  读取校准参数
void bmp180Convert(void);	//校准温度和气压，将结果分别存入result_up，result_UT

#endif