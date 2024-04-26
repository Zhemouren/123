#include "soc_i2c.h"
#include "soc_ls1c102.h"

/* HW_I2C START mask */
#define I2C_START_Set           ((uint8_t)0x80)
#define I2C_START_Reset         ((uint8_t)0x7F)

/* HW_I2C STOP mask */
#define I2C_STOP_Set            ((uint8_t)0x40)
#define I2C_STOP_Reset          ((uint8_t)0xBF)

/* HW_I2C ACK mask */
#define I2C_ACK_Set             ((uint8_t)0x08)
#define I2C_ACK_Reset           ((uint8_t)0xF7)

/* HW_I2C ADD0 mask */
#define I2C_ADD0_Set            ((uint8_t)0x01)
#define I2C_ADD0_Reset          ((uint8_t)0xFE)

#define FLAG_Mask               ((uint8_t)0xFF)
#define ITEN_Mask               ((uint8_t)0x40)

void soc_I2C_delay(volatile int j) {
    while(j--) {
        ;
    }
}

/**
  * @brief  Fills each I2C_InitStruct member with its default value.
  * @param  I2C_InitStruct: pointer to an HW_I2C_InitTypeDef structure which will be initialized.
  * @retval None
  */
void soc_I2C_StructInit(HW_I2C_InitTypeDef* I2C_InitStruct) {
    /*---------------- Reset HW_I2C init structure parameters values ----------------*/
    /* initialize the I2C_ClockSpeed member */
    I2C_InitStruct->I2C_ClockSpeed = 100000;// IIC 标准速率100k，快速速率400k。
    // I2C_InitStruct->I2C_ClockSpeed = 400000;// 
    
    /* Initialize the I2C_Mode member */
    I2C_InitStruct->I2C_Mode = I2C_Mode_Master;
    //I2C_InitStruct->I2C_Mode = I2C_Mode_Slave;

    /* Initialize the I2C_Buslock Check */
    I2C_InitStruct->I2C_BuslockCheckEn = I2C_Buslock_Check_Enable;// 总线死锁状态检查使能
}

/**
  * @brief  Initializes the HW_I2C peripheral according to the specified
  * 		parameters in the I2C_InitStruct .
  * @param  HW_I2C: select the HW_I2C peripheral.
  *         This parameter can be HW_I2C.
  * @param  I2C_InitStruct:  pointer to an HW_I2C_InitTypeDef structure
  *         that contains the configuration information for the specified HW_I2C peripheral.
  * @retval None
  */
void soc_I2C_Init(HW_I2C_InitTypeDef* I2C_InitStruct) {
	uint32_t tmp = 0;
	uint32_t pclk1 = 8000000;// 8MHz 时钟

	/* Check the parameters */
	/*---------------------------- HW_I2C Configuration ------------------------*/
	HW_I2C->CTRL = 0x20;// 选择主模式，访问分频寄存器

	tmp = pclk1 / I2C_InitStruct->I2C_ClockSpeed;// 8M / 400k = 20 = 0x14. 8M / 100k = 80 = 0x50

	tmp = (tmp >> 2) - 1;

	HW_I2C->PRERL = tmp;// 8MHz时钟，如果使用的是100k，那么分频系数 tmp = 0x13，所以低字节寄存器就够了，高字节寄存器为0。
	HW_I2C->PRERH = tmp >> 8;

	HW_I2C->CTRL = 0x80 | (I2C_InitStruct->I2C_Mode) | (I2C_InitStruct->I2C_BuslockCheckEn);// 0b10100010
    // 模块工作使能。选择主模式。

	if (I2C_InitStruct->I2C_BuslockCheckEn) {
		HW_I2C->CR_SR = 0x04;
	}
	
	soc_I2C_wait();
}

/**
  * @brief  Generates HW_I2C communication START condition.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *   		This parameter can be HW_I2C.
  * @param  NewState: new state of the HW_I2C START condition generation.
  *   	    This parameter can be: ENABLE or DISABLE.
  * @retval None.
  */
void soc_I2C_GenerateSTART(FunctionalState NewState) {
    if (NewState != DISABLE) {
		/* Generate a START condition */
		HW_I2C->CR_SR = I2C_START_Set;
    } else {
		/* Disable the START condition generation */
		HW_I2C->CR_SR = I2C_START_Reset;
    }
}

/**
  * @brief  Generates HW_I2C communication STOP condition.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *   	    This parameter can be HW_I2C.
  * @param  NewState: new state of the HW_I2C STOP condition generation.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None.
  */
void soc_I2C_GenerateSTOP(FunctionalState NewState) {
    if (NewState != DISABLE) {
		/* Generate a STOP condition */
		//HW_I2C->CR_SR |= I2C_STOP_Set;// ori
		HW_I2C->CR_SR = I2C_STOP_Set;
    }
    else {
		/* Disable the STOP condition generation */
		//HW_I2C->CR_SR &= I2C_STOP_Reset;// ori
		HW_I2C->CR_SR = I2C_STOP_Reset;
    }
}

/**
  * @brief  Sends a data byte through the HW_I2C peripheral.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *         This parameter can be HW_I2C.
  * @param  Data: Byte to be transmitted.
  * @retval None
  */
void soc_I2C_SendData(uint8_t Data) {
  	/* Write in the DR register the data to be sent */
	soc_I2C_Unlock();

	HW_I2C->DR = Data;
	HW_I2C->CR_SR = 0x10;
}

/**
  * @brief  Returns the most recent received data by the HW_I2C peripheral.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *         This parameter can be HW_I2C.
  * @retval The value of the received data.
  */
void soc_I2C_ReceiveData(FunctionalState ACK, FunctionalState STOP) {
    soc_I2C_Unlock();

  	/* Return the data in the DR register */
    HW_I2C->CR_SR = 0x20 | ACK | STOP;// 读取 HW_I2C->DR 中的数据
	return;
}

/**
  * @brief  Wait for the Master's transmission is completed.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *   		This parameter can be HW_I2C.
  * @retval None
  */
void soc_I2C_wait() {
	uint8_t temp;
	temp = HW_I2C->CR_SR;
	int a = 0;
    while (temp & 0x02) {
		// 等待传输完毕
		temp = HW_I2C->CR_SR;
    }
}

/**
  * @brief  Check for buslock and recover it if so.
  * @param  HW_I2C: select the HW_I2C peripheral.
  *         This parameter can be HW_I2C.
  * @retval None
  */
void soc_I2C_Unlock() {
	uint8_t temp;
	temp = HW_I2C-> CR_SR;
    if (temp & 0x04) {
		// 如果总线死锁则满足 if
		HW_I2C->CR_SR = 0x04;// 解除总线死锁
    }
}


