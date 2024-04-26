#ifndef __BMP180_H
#define __BMP180_H

// I2C1������CAMDATA4(GPIO54)��CAMDATA5(GPIO55)�ĵ��ĸ���  
#define LS1C_I2C_SDA1_GPIO54            (54)  
#define LS1C_I2C_SCL1_GPIO55            (55)  
  
// I2C2������CAMDATA6(GPIO56)��CAMDATA7(GPIO57)�ĵ��ĸ���  
#define LS1C_I2C_SDA2_GPIO56            (56)  
#define LS1C_I2C_SCL2_GPIO57            (57)  


#define	BMP180_SlaveAddress     0xee	//��ѹ������������ַ

#define   OSS 0	 
#define   REG_Pressure 0x34 // oss=0 4.5


void Init_BMP180(void);         //��ʼ��IO  ��ȡУ׼����
void bmp180Convert(void);	//У׼�¶Ⱥ���ѹ��������ֱ����result_up��result_UT

#endif