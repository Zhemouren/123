/**
 * @file rc522.c
 * @author  by huangjin
 * @brief    门禁识别驱动代码
 * @version 1.0
 * @date 
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "rc522.h"
// #include "oled.h"
#include "main.h"
// #include "stdio.h"
//SPI2_SCK 				
//SPI2_MISO				
//SPI2_MOSI 			
//RCC522_RST(CE)        gpioa 9
//RCC522_NSS(SDA）      gpioa 8
//RCC522_IRQ 			悬空


uint8_t UID[5],Temp[4];          
uint8_t RF_Buffer[18];
uint8_t Password_Buffer[6]={0xFF,0xFF,0xFF,0xFF,0xFF,0xFF}; // Mifare One 缺省密码

void RC522_Init(void)
{
  // uint8_t buf[4] = {0xaa, 0, 0, 0};
	// RC522_SDA_LOW;
	  // soc_Spi_Send(buf,1);
	// RC522_SDA_HIGH;


    my_delay_ms(50);
    PcdReset();//复位RC522读卡器
    my_delay_ms(10);
	  PcdReset();//复位RC522读卡器
    my_delay_ms(10);
	  PcdAntennaOff();//关闭天线发射                                                         
	  my_delay_ms(10);	 
    PcdAntennaOn();//开启天线发射
//	printf("RFID-MFRC522 初始化完成\r\nFindCard Starting ...\r\n");  //测试引脚初始化完成
}


void delay_ns(uint32_t ns)
{
  uint32_t i;
  for(i=0;i<ns;i++)\
    {\
        asm volatile("nop;");\
    }\
}

//SPIx 读写一个字节
//TxData:要写入的字节
//返回值:读取到的字节
//***************************************************************************/

uint8_t RC522_ReadWriteByte(uint8_t TxData)
{					 	

													
	// uint8_t buf[2] = {0, 0};
	// uint8_t buf1[2] = { 0xff,0xff };
  uint8_t RxData ;
    // buf[0]=TxData;

    soc_Spi_Cs_Down();
    // my_delay_us(10);

    // soc_Spi_Write_Read_1to4(buf, 1);//trans
    // my_delay_us(10);
    // soc_Spi_Write_Read_1to4(buf1, 1);//recv // writing any two bytes, reading two bytes of data simultaneously
    SPI->DATA=TxData;
    while ((!SPI_TXEMPTY));//
    // my_delay_us(10);
    RxData = SPI->DATA;

    SPI->DATA=0x00;
    while ((!SPI_TXEMPTY));//
    RxData = SPI->DATA;
    
	  soc_Spi_Cs_Up();
    // RxData =buf1[0];
	return RxData;//返回通过SPIx最近接收的数据		
}

//******************************************************************/
//功    能：读RC522寄存器
//参数说明：Address[IN]:寄存器地址
//返    回：读出的值
//******************************************************************/
uint8_t ReadRawRC(uint8_t Address)
{
	uint8_t ucAddr;
  uint8_t ucResult=0;

   ucAddr = (((Address<<1)&0x7E)|0x80);
  //  ucAddr = ((Address<<1)&0x7E) ;

    soc_Spi_Cs_Down();
    SPI->DATA=ucAddr;
    while ((!SPI_TXEMPTY));//
    while(SPI_RXEMPTY) ;
    ucResult = SPI->DATA;

    SPI->DATA=0x00;
    while ((!SPI_TXEMPTY));//
    while(SPI_RXEMPTY) ;
    ucResult = SPI->DATA;

	  soc_Spi_Cs_Up();
	  my_delay_us(2);
    // ucResult =buf1[0];

  return ucResult;
}

//******************************************************************/
//功    能：写RC522寄存器
//参数说明：Address[IN]:寄存器地址
//          value[IN]:写入的值
//******************************************************************/
void WriteRawRC(uint8_t Address, uint8_t value)
{
	uint8_t ucAddr;
  uint8_t ucResult;
	ucAddr = ((Address<<1)&0x7E) ;
  // ucAddr = (((Address<<1)&0x7E)|0x80);
    soc_Spi_Cs_Down();

    SPI->DATA=ucAddr;
    while ((!SPI_TXEMPTY));//
    while(SPI_RXEMPTY) ;
    ucResult = SPI->DATA;
    // my_delay_us(10);
    SPI->DATA=value;
    while ((!SPI_TXEMPTY));//
    while(SPI_RXEMPTY) ;
    ucResult = SPI->DATA;
    // my_delay_us(10);

    soc_Spi_Cs_Up();
	  my_delay_us(2);
	// RC522_SDA_HIGH;
}

//******************************************************************/
//功    能：置RC522寄存器位
//参数说明：reg[IN]:寄存器地址
//          mask[IN]:置位值
//******************************************************************/
void SetBitMask(uint8_t reg,uint8_t mask)  
{
  int8_t  tmp = 0x0            ;
  tmp = ReadRawRC(reg)      ;
  WriteRawRC(reg,(tmp | mask));  // set bit mask
}

//******************************************************************/
//功    能：清RC522寄存器位
//参数说明：reg[IN]:寄存器地址
//          mask[IN]:清位值
//******************************************************************/
void ClearBitMask(uint8_t reg,uint8_t mask)  
{
  int8_t  tmp = 0x0              ;
  tmp = ReadRawRC(reg);
  WriteRawRC(reg, (tmp &(~mask)))        ;  // clear bit mask
} 

//******************************************************************/
//功    能：复位RC522
//返    回: 成功返回MI_OK
//******************************************************************/
int8_t  PcdReset(void)
{
  RC522_RST_HIGH;              
  // delay_ns(1000);
  my_delay_us(800);
  RC522_RST_LOW;   
  // delay_ns(20);
  my_delay_us(800);
  RC522_RST_HIGH;
  // delay_ns(10);
  WriteRawRC(CommandReg,PCD_RESETPHASE);
  // delay_ns(20);
  my_delay_us(800);
  WriteRawRC(ModeReg,0x3D)             ;//定义发送和接收常用模式 和Mifare卡通讯，CRC初始值0x6363
  WriteRawRC(TReloadRegL,30)           ;//16位定时器低位 30
  WriteRawRC(TReloadRegH,0)            ;//16位定时器高位

  WriteRawRC(TModeReg,0x8D)            ;//定义内部定时器的设置
  WriteRawRC(TPrescalerReg,0x3E)       ;//设置定时器分频系数  


  WriteRawRC(TxASKReg,0x40)            ;//调制发送信号为100%ASK

  // WriteRawRC(CommandReg,0x00);			//启动MFRC522  

  return MI_OK                         ; 
}
////////////////////////////////////////////////////////////////////// 
//设置RC522的工作方式   
//////////////////////////////////////////////////////////////////////
int8_t  MF522PcdConfigISOType(uint8_t  type)
{
	if (type == 'A')	//ISO14443_A
		{
			ClearBitMask(Status2Reg,0x08);	//状态2寄存器         
			WriteRawRC(ModeReg,0x3D);	//3F  //和Mifare卡通讯，CRC初始值0x6363         
			WriteRawRC(RxSelReg,0x86);	//84   选择内部接收器设置，内部模拟部分调制信号，发送数据后，延迟6个位时钟，接收         
			WriteRawRC(RFCfgReg,0x7F);	//4F  配置接收器  48dB最大增益         
			WriteRawRC(TReloadRegL,30);	//tmoLength);TReloadVal = 'h6a =tmoLength(dec)      
			WriteRawRC(TReloadRegH,0);	//实际值是OXD3E 这部分主要是设置定时器寄存器       
			WriteRawRC(TModeReg,0x8D);
			WriteRawRC(TPrescalerReg,0x3E);
			my_delay_us(1);
			PcdAntennaOn();
		}     
	else {return 0xFE;}  
	return MI_OK; 
}  

//******************************************************************/
//开启天线发射  
//每次启动或关闭天险发射之间应至少有1ms的间隔
//******************************************************************/
void PcdAntennaOn()
{
  uint8_t i;
  WriteRawRC(TxASKReg,0x40)       ;
  my_delay_ms(1);
  i = ReadRawRC(TxControlReg)     ;
  if(!(i&0x03))
    SetBitMask(TxControlReg, 0x03);
  i=ReadRawRC(TxASKReg)       ;
}


//******************************************************************/
//关闭天线发射
//******************************************************************/
void PcdAntennaOff()
{
  ClearBitMask(TxControlReg, 0x03);
}

//******************************************************************/
//功    能：通过RC522和ISO14443卡通讯
//参数说明：Command[IN]:RC522命令字
//          pInData[IN]:通过RC522发送到卡片的数据
//          InLenByte[IN]:发送数据的字节长度
//          pOutData[OUT]:接收到的卡片返回数据
//          *pOutLenBit[OUT]:返回数据的位长度
//******************************************************************/
int8_t  PcdComMF522(uint8_t Command  ,uint8_t *pInData , 
                 uint8_t InLenByte,uint8_t *pOutData, 
                 volatile int *pOutLenBit                       )
{
  int8_t  status = MI_ERR                          ;
  uint8_t irqEn   = 0x00                  ;
  uint8_t waitFor = 0x00                  ;
  uint8_t lastBits                        ;
  uint8_t n                               ;
  int32_t i                               ;
  switch (Command)
  {
    case PCD_AUTHENT:
      irqEn   = 0x12                            ;
      waitFor = 0x10                            ;
      break                                     ;
    case PCD_TRANSCEIVE:
      irqEn   = 0x77                            ;
      waitFor = 0x30                            ;
      break                                     ;
    default:
      break                                     ;
  }
  WriteRawRC(ComIEnReg,irqEn|0x80)              ; //
  ClearBitMask(ComIrqReg,0x80)                  ;
  WriteRawRC(CommandReg,PCD_IDLE)               ;
  SetBitMask(FIFOLevelReg,0x80)                 ; // 清空FIFO 
  for(i=0; i<InLenByte; i++)
    WriteRawRC(FIFODataReg,pInData[i])          ; // 数据写入FIFO 
  WriteRawRC(CommandReg, Command)               ; // 命令写入命令寄存器
  if(Command == PCD_TRANSCEIVE)
    SetBitMask(BitFramingReg,0x80)              ; // 开始发送     
  i = 80000                                      ; //根据时钟频率调整，操作M1卡最大等待时间25ms
  do 
  {
    n = ReadRawRC(ComIrqReg)                    ;
    i--                                         ;
  }
  while((i!=0)&&!(n&0x01)&&!(n&waitFor))        ;
  ClearBitMask(BitFramingReg,0x80)              ;
  if(i!=0)
  {
    if(!(ReadRawRC(ErrorReg)&0x1B))
    {
      status = MI_OK                            ;
      if (n&irqEn&0x01)
        status = MI_NOTAGERR                    ;
      if(Command==PCD_TRANSCEIVE)
      {
        n = ReadRawRC(FIFOLevelReg)             ;
        lastBits = ReadRawRC(ControlReg)&0x07   ;
        if(lastBits)
          *pOutLenBit = (n-1)*8 + lastBits      ;
        else
          *pOutLenBit = n*8                     ;
        if(n==0)
          n = 1                                 ;
        if(n>MAXRLEN)
          n = MAXRLEN                           ;
        for (i=0; i<n; i++)
          pOutData[i] = ReadRawRC(FIFODataReg)  ; 
      }
    }
    else
      status = MI_ERR                           ;        
  }
  SetBitMask(ControlReg,0x80)                   ;// stop timer now
  WriteRawRC(CommandReg,PCD_IDLE)               ; 
  return status;
}

//******************************************************************/
//功    能：寻卡                                                    /
//参数说明: req_code[IN]:寻卡方式                                   /
//                0x52 = 寻感应区内所有符合14443A标准的卡           /
//                0x26 = 寻未进入休眠状态的卡                       /
//                pTagType[OUT]：卡片类型代码                       /
//                0x4400 = Mifare_UltraLight                        /
//                0x0400 = Mifare_One(S50)                          /
//                0x0200 = Mifare_One(S70)                          /
//                0x0800 = Mifare_Pro(X)                            /
//                0x4403 = Mifare_DESFire                           /
//返    回: 成功返回MI_OK                                           /
//******************************************************************/
int8_t  PcdRequest(uint8_t req_code,uint8_t *pTagType)
{
  int8_t  status                                        ;  
  volatile int unLen                                ;
  uint8_t ucComMF522Buf[MAXRLEN]               ; 

  ClearBitMask(Status2Reg,0x08)                      ;//清除MRCrypto1on，要用软件清零
  WriteRawRC(BitFramingReg,0x07)                     ;//startsend=0,rxalign=0,在FIFO中存放的位置，TXlastbit=7
  SetBitMask(TxControlReg,0x03)                      ;//TX2rfen=1,TX1RFen=1,传递调制的13.56MHZ的载波信号
 
  ucComMF522Buf[0] = req_code                        ;

  status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,1,ucComMF522Buf,&unLen);
  if ((status == MI_OK) && (unLen == 0x10))
  {    
    *pTagType     = ucComMF522Buf[0]                 ;
    *(pTagType+1) = ucComMF522Buf[1]                 ;
  }
  else
    status = MI_ERR                                  ;
  return status                                      ;
}

//******************************************************************/
//功    能：防冲撞                                                  /
//参数说明: pSnr[OUT]:卡片序列号，4字节                             /
//返    回: 成功返回MI_OK                                           /
//******************************************************************/
int8_t  PcdAnticoll(uint8_t *pSnr)
{
    int8_t  status;
    uint8_t i,snr_check=0;
    volatile int unLen;
    uint8_t ucComMF522Buf[MAXRLEN]; 
    
    ClearBitMask(Status2Reg,0x08);//清除MRCrypto1on，要用软件清零
    WriteRawRC(BitFramingReg,0x00);//表示最后一个字节所有位都发送
    ClearBitMask(CollReg,0x80);//CollRegCollReg0冲突结束后冲突位被置零
 
    ucComMF522Buf[0] = PICC_ANTICOLL1;
    ucComMF522Buf[1] = 0x20;

    status = PcdComMF522(PCD_TRANSCEIVE,ucComMF522Buf,2,ucComMF522Buf,&unLen);

    if (status == MI_OK)
    {
    	 for (i=0; i<4; i++)
         {   
             *(pSnr+i)  = ucComMF522Buf[i];
             snr_check ^= ucComMF522Buf[i];
         }
         if (snr_check != ucComMF522Buf[i])
         {   status = MI_ERR;    }
    }
    
    SetBitMask(CollReg,0x80);//CollRegCollReg 在106kbps良好的防冲突情况下该位置1
    return status;
}



//==============================================================================
//读取卡的类型
//读取卡的ID号
//==============================================================================
// void ReaderCard(void)
// {
// 	int8_t  temp_value;
//     OLED_CLS();
    
// 	if(PcdRequest(PICC_REQALL,Temp)==MI_OK)	//选卡
// 	{
// 		if(Temp[0]==0x04&&Temp[1]==0x00) 
//             OLED_ShowStr(30,2,"nMFOne-S50",2);
// 		else if(Temp[0]==0x02&&Temp[1]==0x00)
//             OLED_ShowStr(30,2,"MFOne-S70",2);
// 		else if(Temp[0]==0x44&&Temp[1]==0x00)
//             OLED_ShowStr(30,2,"MF-UltraLight",2);
// 		else if(Temp[0]==0x08&&Temp[1]==0x00)
//             OLED_ShowStr(30,2,"MF-Pro",2);
// 		else if(Temp[0]==0x44&&Temp[1]==0x03)
//             OLED_ShowStr(30,2,"MF-Desire",2);
// 		else
//             OLED_ShowStr(40,2,"Unknown",2);
// 		if(PcdAnticoll(UID)==MI_OK)			//防冲撞
// 		{ 
// 			/* 获取卡值  */
//             OLED_ShowNum(10,6,UID[0],3,16);
//             OLED_ShowNum(35,6,UID[1],3,16);
//             OLED_ShowNum(65,6,UID[2],3,16);
//             OLED_ShowNum(90,6,UID[3],3,16);		              
// 			temp_value = ((UID[0]>>4)*10+(UID[0]&0x0f));
//             OLED_ShowNum(50,4,temp_value,3,16);
// 			switch(temp_value)
// 			{//113表示管理员卡号
// 				case 113 :interface_display(2);break;
// 				default :interface_display(4);break;
// 			}	                             
// 		}
        
//   }
// }


/* 因驱动代码的写入卡函数有误，故使用保存返回值的方式写入卡*/
//==============================================================================
//将读取卡的ID号的值返回
//==============================================================================
uint16_t Return_Card(void)
{
	uint16_t temp_value = 0;
	if(PcdRequest(PICC_REQALL,Temp)==MI_OK)	//选卡
	{  
		if(PcdAnticoll(UID)==MI_OK)			//防冲撞
		{ 		              
			temp_value = (((UID[0]>>4)*10)+(UID[0]&0x0f));	                             
		}
	} 
	return temp_value;
}