/**
 * @file rc522.c
 * @author  by huangjin
 * @brief    �Ž�ʶ����������
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
//RCC522_NSS(SDA��      gpioa 8
//RCC522_IRQ 			����


uint8_t UID[5],Temp[4];          
uint8_t RF_Buffer[18];
uint8_t Password_Buffer[6]={0xFF,0xFF,0xFF,0xFF,0xFF,0xFF}; // Mifare One ȱʡ����

void RC522_Init(void)
{
  // uint8_t buf[4] = {0xaa, 0, 0, 0};
	// RC522_SDA_LOW;
	  // soc_Spi_Send(buf,1);
	// RC522_SDA_HIGH;


    my_delay_ms(50);
    PcdReset();//��λRC522������
    my_delay_ms(10);
	  PcdReset();//��λRC522������
    my_delay_ms(10);
	  PcdAntennaOff();//�ر����߷���                                                         
	  my_delay_ms(10);	 
    PcdAntennaOn();//�������߷���
//	printf("RFID-MFRC522 ��ʼ�����\r\nFindCard Starting ...\r\n");  //�������ų�ʼ�����
}


void delay_ns(uint32_t ns)
{
  uint32_t i;
  for(i=0;i<ns;i++)\
    {\
        asm volatile("nop;");\
    }\
}

//SPIx ��дһ���ֽ�
//TxData:Ҫд����ֽ�
//����ֵ:��ȡ�����ֽ�
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
	return RxData;//����ͨ��SPIx������յ�����		
}

//******************************************************************/
//��    �ܣ���RC522�Ĵ���
//����˵����Address[IN]:�Ĵ�����ַ
//��    �أ�������ֵ
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
//��    �ܣ�дRC522�Ĵ���
//����˵����Address[IN]:�Ĵ�����ַ
//          value[IN]:д���ֵ
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
//��    �ܣ���RC522�Ĵ���λ
//����˵����reg[IN]:�Ĵ�����ַ
//          mask[IN]:��λֵ
//******************************************************************/
void SetBitMask(uint8_t reg,uint8_t mask)  
{
  int8_t  tmp = 0x0            ;
  tmp = ReadRawRC(reg)      ;
  WriteRawRC(reg,(tmp | mask));  // set bit mask
}

//******************************************************************/
//��    �ܣ���RC522�Ĵ���λ
//����˵����reg[IN]:�Ĵ�����ַ
//          mask[IN]:��λֵ
//******************************************************************/
void ClearBitMask(uint8_t reg,uint8_t mask)  
{
  int8_t  tmp = 0x0              ;
  tmp = ReadRawRC(reg);
  WriteRawRC(reg, (tmp &(~mask)))        ;  // clear bit mask
} 

//******************************************************************/
//��    �ܣ���λRC522
//��    ��: �ɹ�����MI_OK
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
  WriteRawRC(ModeReg,0x3D)             ;//���巢�ͺͽ��ճ���ģʽ ��Mifare��ͨѶ��CRC��ʼֵ0x6363
  WriteRawRC(TReloadRegL,30)           ;//16λ��ʱ����λ 30
  WriteRawRC(TReloadRegH,0)            ;//16λ��ʱ����λ

  WriteRawRC(TModeReg,0x8D)            ;//�����ڲ���ʱ��������
  WriteRawRC(TPrescalerReg,0x3E)       ;//���ö�ʱ����Ƶϵ��  


  WriteRawRC(TxASKReg,0x40)            ;//���Ʒ����ź�Ϊ100%ASK

  // WriteRawRC(CommandReg,0x00);			//����MFRC522  

  return MI_OK                         ; 
}
////////////////////////////////////////////////////////////////////// 
//����RC522�Ĺ�����ʽ   
//////////////////////////////////////////////////////////////////////
int8_t  MF522PcdConfigISOType(uint8_t  type)
{
	if (type == 'A')	//ISO14443_A
		{
			ClearBitMask(Status2Reg,0x08);	//״̬2�Ĵ���         
			WriteRawRC(ModeReg,0x3D);	//3F  //��Mifare��ͨѶ��CRC��ʼֵ0x6363         
			WriteRawRC(RxSelReg,0x86);	//84   ѡ���ڲ����������ã��ڲ�ģ�ⲿ�ֵ����źţ��������ݺ��ӳ�6��λʱ�ӣ�����         
			WriteRawRC(RFCfgReg,0x7F);	//4F  ���ý�����  48dB�������         
			WriteRawRC(TReloadRegL,30);	//tmoLength);TReloadVal = 'h6a =tmoLength(dec)      
			WriteRawRC(TReloadRegH,0);	//ʵ��ֵ��OXD3E �ⲿ����Ҫ�����ö�ʱ���Ĵ���       
			WriteRawRC(TModeReg,0x8D);
			WriteRawRC(TPrescalerReg,0x3E);
			my_delay_us(1);
			PcdAntennaOn();
		}     
	else {return 0xFE;}  
	return MI_OK; 
}  

//******************************************************************/
//�������߷���  
//ÿ��������ر����շ���֮��Ӧ������1ms�ļ��
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
//�ر����߷���
//******************************************************************/
void PcdAntennaOff()
{
  ClearBitMask(TxControlReg, 0x03);
}

//******************************************************************/
//��    �ܣ�ͨ��RC522��ISO14443��ͨѶ
//����˵����Command[IN]:RC522������
//          pInData[IN]:ͨ��RC522���͵���Ƭ������
//          InLenByte[IN]:�������ݵ��ֽڳ���
//          pOutData[OUT]:���յ��Ŀ�Ƭ��������
//          *pOutLenBit[OUT]:�������ݵ�λ����
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
  SetBitMask(FIFOLevelReg,0x80)                 ; // ���FIFO 
  for(i=0; i<InLenByte; i++)
    WriteRawRC(FIFODataReg,pInData[i])          ; // ����д��FIFO 
  WriteRawRC(CommandReg, Command)               ; // ����д������Ĵ���
  if(Command == PCD_TRANSCEIVE)
    SetBitMask(BitFramingReg,0x80)              ; // ��ʼ����     
  i = 80000                                      ; //����ʱ��Ƶ�ʵ���������M1�����ȴ�ʱ��25ms
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
//��    �ܣ�Ѱ��                                                    /
//����˵��: req_code[IN]:Ѱ����ʽ                                   /
//                0x52 = Ѱ��Ӧ�������з���14443A��׼�Ŀ�           /
//                0x26 = Ѱδ��������״̬�Ŀ�                       /
//                pTagType[OUT]����Ƭ���ʹ���                       /
//                0x4400 = Mifare_UltraLight                        /
//                0x0400 = Mifare_One(S50)                          /
//                0x0200 = Mifare_One(S70)                          /
//                0x0800 = Mifare_Pro(X)                            /
//                0x4403 = Mifare_DESFire                           /
//��    ��: �ɹ�����MI_OK                                           /
//******************************************************************/
int8_t  PcdRequest(uint8_t req_code,uint8_t *pTagType)
{
  int8_t  status                                        ;  
  volatile int unLen                                ;
  uint8_t ucComMF522Buf[MAXRLEN]               ; 

  ClearBitMask(Status2Reg,0x08)                      ;//���MRCrypto1on��Ҫ���������
  WriteRawRC(BitFramingReg,0x07)                     ;//startsend=0,rxalign=0,��FIFO�д�ŵ�λ�ã�TXlastbit=7
  SetBitMask(TxControlReg,0x03)                      ;//TX2rfen=1,TX1RFen=1,���ݵ��Ƶ�13.56MHZ���ز��ź�
 
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
//��    �ܣ�����ײ                                                  /
//����˵��: pSnr[OUT]:��Ƭ���кţ�4�ֽ�                             /
//��    ��: �ɹ�����MI_OK                                           /
//******************************************************************/
int8_t  PcdAnticoll(uint8_t *pSnr)
{
    int8_t  status;
    uint8_t i,snr_check=0;
    volatile int unLen;
    uint8_t ucComMF522Buf[MAXRLEN]; 
    
    ClearBitMask(Status2Reg,0x08);//���MRCrypto1on��Ҫ���������
    WriteRawRC(BitFramingReg,0x00);//��ʾ���һ���ֽ�����λ������
    ClearBitMask(CollReg,0x80);//CollRegCollReg0��ͻ�������ͻλ������
 
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
    
    SetBitMask(CollReg,0x80);//CollRegCollReg ��106kbps���õķ���ͻ����¸�λ��1
    return status;
}



//==============================================================================
//��ȡ��������
//��ȡ����ID��
//==============================================================================
// void ReaderCard(void)
// {
// 	int8_t  temp_value;
//     OLED_CLS();
    
// 	if(PcdRequest(PICC_REQALL,Temp)==MI_OK)	//ѡ��
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
// 		if(PcdAnticoll(UID)==MI_OK)			//����ײ
// 		{ 
// 			/* ��ȡ��ֵ  */
//             OLED_ShowNum(10,6,UID[0],3,16);
//             OLED_ShowNum(35,6,UID[1],3,16);
//             OLED_ShowNum(65,6,UID[2],3,16);
//             OLED_ShowNum(90,6,UID[3],3,16);		              
// 			temp_value = ((UID[0]>>4)*10+(UID[0]&0x0f));
//             OLED_ShowNum(50,4,temp_value,3,16);
// 			switch(temp_value)
// 			{//113��ʾ����Ա����
// 				case 113 :interface_display(2);break;
// 				default :interface_display(4);break;
// 			}	                             
// 		}
        
//   }
// }


/* �����������д�뿨�������󣬹�ʹ�ñ��淵��ֵ�ķ�ʽд�뿨*/
//==============================================================================
//����ȡ����ID�ŵ�ֵ����
//==============================================================================
uint16_t Return_Card(void)
{
	uint16_t temp_value = 0;
	if(PcdRequest(PICC_REQALL,Temp)==MI_OK)	//ѡ��
	{  
		if(PcdAnticoll(UID)==MI_OK)			//����ײ
		{ 		              
			temp_value = (((UID[0]>>4)*10)+(UID[0]&0x0f));	                             
		}
	} 
	return temp_value;
}