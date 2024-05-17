#include "main.h"
#include "peri_test_sum.h"
#include "as608.h"
#include "oled.h"
#include "oled.h"
#include "duoji.h"
#include "rc522.h"
#include "as608.h"
#include "led.h"
#include "key.h"
// #include "hbirdv2_uart.h"


uint32_t AS608Addr = 0XFFFFFFFF;//Ĭ��

char str2[6] = {0};

 uint8_t USART0_RX_BUF[USART0_MAX_RECV_LEN]; 				//���ջ���,USART0T3_MAX_RECV_LEN���ֽ�.
uint8_t  USART0_TX_BUF[USART0_MAX_RECV_LEN]; 				//���ջ���,USART0T3_MAX_RECV_LEN���ֽ�.

 uint8_t Get_Device_Code[10] ={0x01,0x00,0x07,0x13,0x00,0x00,0x00,0x00,0x00,0x1b};//������֤

 uint8_t USART0_RX_STA= 0;//�����Ƿ���յ�����


char *my_strstr(const char *str1, const char *str2) {
    char *cp = (char *) str1;
    char *s1, *s2;
    if (!*str2)
        return ((char *) str1);
    while (*cp) {
        s1 = cp;
        s2 = (char *) str2;
        while (*s1 && *s2 && !(*s1 - *s2))
            s1++, s2++;
        if (!*s2)
            return (cp);
        cp++;
    }
    return 0;
}

//���ڷ���һ���ֽ�
void MYUSART_SendData(uint8_t data)
{

   while ((uart->LSR & 0x20) == 0);
   uart->THR = data;
  // return 0;
}
//���Ͱ�ͷ
void SendHead(void)
{
	memset(USART0_RX_BUF,0,sizeof(USART0_RX_BUF));//����ǰ������ݣ���Ϊ���ж�Ҫ���Ͱ�ͷ������ֻ��Ҫ�ڷ��Ͱ�ͷǰ��ռ���
  MYUSART_SendData(0xEF);
  MYUSART_SendData(0x01);
}
//���͵�ַ
void SendAddr(void)
{
  MYUSART_SendData(AS608Addr >> 24);
  MYUSART_SendData(AS608Addr >> 16);
  MYUSART_SendData(AS608Addr >> 8);
  MYUSART_SendData(AS608Addr);
}
//���Ͱ���ʶ,
void SendFlag(uint8_t flag)
{
  MYUSART_SendData(flag);
}
//���Ͱ�����
void SendLength(int length)
{
  MYUSART_SendData(length >> 8);
  MYUSART_SendData(length);
}
//����ָ����
void Sendcmd(uint8_t cmd)
{
  MYUSART_SendData(cmd);
}
//����У���
void SendCheck(uint16_t check)
{
  MYUSART_SendData(check >> 8);
  MYUSART_SendData(check);
}

/*****************************************
��������uint8_t AS608_Check(void)
��������
����������ģ���Ƿ����Ӽ�� 
����ֵ��ģ�������˷���0 ���򷵻�1
*****************************************/
 uint8_t AS608_Check(void)
{
  int32_t j=10000;
	USART0_RX_BUF[9] = 1;
	
  SendHead();
  SendAddr();
	for(int i = 0; i < 10; i++)
	{
		MYUSART_SendData(Get_Device_Code[i]);
	}
  	// my_delay_us(500);//�ȴ�200ms
	//����0����12������
 
 while ((uart->LSR & 0x1) == 0);
  for (uint32_t i = 0; i < 12; i++)//����12������
  {
    while ((uart->LSR & 0x1) == 0)//�ȴ�ֱ��rx���յ�����
		{
		  j--;
			if(j==0){uart->FCR |= 0xbd;break;}//�����������j ��ôǿ������
		}
		if(j==0)USART0_RX_BUF[i]= 0;
		else USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    
    uart_write(USART0_RX_BUF[i]);//��ӡ
    j=30000;//����
  }
  

	if(USART0_RX_BUF[9] == 0)
		return 0;

  return 1;
}
/*ָ��ģ���ʼ��*/
uint8_t as608_init(void)
{
    uart_set_rx_th(2);//���ý���8bit ����RX
	return AS608_Check();
}
//�жϽ��յ�������û��Ӧ���
//waittimeΪ�ȴ��������ݵ�ʱ�䣨��λ1ms��
//����ֵ�����ݰ��׵�ַ
uint8_t *JudgeStr(uint16_t waittime)
{
  int32_t j=waittime;
  int8_t *data;
  uint8_t str[8];
  str[0] = 0xef;
  str[1] = 0x01;
  str[2] = (uint8_t)(AS608Addr >> 24);
  str[3] = (uint8_t)(AS608Addr >> 16);
  str[4] = (uint8_t)(AS608Addr >> 8);
  str[5] = (uint8_t)(AS608Addr);
  str[6] = 0x07;
  str[7] = '\0';
  // USART0_RX_STA = 0;
while ((uart->LSR & 0x1) == 0);//ȷ��һ����һ�����ݱ�����
  // my_delay_us(500);
  for (uint32_t i = 0; i < (USART0_MAX_RECV_LEN/16); i++)//����12������
  {
    while ((uart->LSR & 0x1) == 0)//�ȴ�ֱ��rx���յ�����
		{
		  j--;
			if(j==0){uart->FCR |= 0xbd;break;}//�����������j ��ôǿ������
		}
		if(j==0)USART0_RX_BUF[i]= 0;
		else USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    uart_write(USART0_RX_BUF[i]);//��ӡ
    j=waittime;//����
  }

  // if(!memcmp(str,USART0_RX_BUF,8))//���������ͬ
  // {
    data = my_strstr((const uint8_t*)USART0_RX_BUF, (const uint8_t*)str);
    if(data)return (uint8_t*)data;
  // }

  return 0;
}
//¼��ͼ�� PS_GetImage
//����:̽����ָ��̽�⵽��¼��ָ��ͼ�����ImageBuffer��
//ģ�鷵��ȷ����
uint8_t PS_GetImage(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x01);
  temp =  (0x01 + 0x03 + 0x01);
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//�������� PS_GenChar
//����:��ImageBuffer�е�ԭʼͼ������ָ�������ļ�����CharBuffer1��CharBuffer2
//����:BufferID --> charBuffer1:0x01	charBuffer1:0x02
//ģ�鷵��ȷ����
uint8_t PS_GenChar(uint8_t BufferID)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x04);
  Sendcmd(0x02);
  MYUSART_SendData(BufferID);
  temp = (0x01 + 0x04 + 0x02 + BufferID);
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//��ȷ�ȶ���öָ������ PS_Match
//����:��ȷ�ȶ�CharBuffer1 ��CharBuffer2 �е������ļ�
//ģ�鷵��ȷ����
uint8_t PS_Match(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x03);
  temp = 0x01 + 0x03 + 0x03;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//����ָ�� PS_Search
//����:��CharBuffer1��CharBuffer2�е������ļ����������򲿷�ָ�ƿ�.�����������򷵻�ҳ�롣
//����:  BufferID @ref CharBuffer1	CharBuffer2
//˵��:  ģ�鷵��ȷ���֣�ҳ�루����ָ��ģ�壩
uint8_t PS_Search(uint8_t BufferID, uint16_t StartPage, uint16_t PageNum, SearchResult *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x08);
  Sendcmd(0x04);
  MYUSART_SendData(BufferID);
  MYUSART_SendData(StartPage >> 8);
  MYUSART_SendData(StartPage);
  MYUSART_SendData(PageNum >> 8);
  MYUSART_SendData(PageNum);
  temp =( 0x01 + 0x08 + 0x04 + BufferID  + (StartPage >> 8) + (uint8_t)StartPage + (PageNum >> 8) + (uint8_t)PageNum);
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
  {
    ensure = data[9];
    p->pageID   = (data[10] << 8) + data[11];
    p->mathscore = (data[12] << 8) + data[13];
  }
  else
    ensure = 0xff;
  return ensure;
}
//�ϲ�����������ģ�壩PS_RegModel
//����:��CharBuffer1��CharBuffer2�е������ļ��ϲ����� ģ��,�������CharBuffer1��CharBuffer2
//˵��:  ģ�鷵��ȷ����
uint8_t PS_RegModel(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x05);
  temp = 0x01 + 0x03 + 0x05;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//����ģ�� PS_StoreChar
//����:�� CharBuffer1 �� CharBuffer2 �е�ģ���ļ��浽 PageID ��flash���ݿ�λ�á�
//����:  BufferID @ref charBuffer1:0x01	charBuffer1:0x02
//       PageID��ָ�ƿ�λ�úţ�
//˵��:  ģ�鷵��ȷ����
uint8_t PS_StoreChar(uint8_t BufferID, uint16_t PageID)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x06);
  Sendcmd(0x06);
  MYUSART_SendData(BufferID);
  MYUSART_SendData(PageID >> 8);
  MYUSART_SendData(PageID);
  temp = (0x01 + 0x06 + 0x06 + BufferID + (uint8_t)(PageID >> 8) + (uint8_t)PageID);
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//ɾ��ģ�� PS_DeletChar
//����:  ɾ��flash���ݿ���ָ��ID�ſ�ʼ��N��ָ��ģ��
//����:  PageID(ָ�ƿ�ģ���)��Nɾ����ģ�������
//˵��:  ģ�鷵��ȷ����
uint8_t PS_DeletChar(uint16_t PageID, uint16_t N)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x07);
  Sendcmd(0x0C);
  MYUSART_SendData(PageID >> 8);
  MYUSART_SendData(PageID);
  MYUSART_SendData(N >> 8);
  MYUSART_SendData(N);
  temp = 0x01 + 0x07 + 0x0C
         + (PageID >> 8) + (uint8_t)PageID
         + (N >> 8) + (uint8_t)N;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//���ָ�ƿ� PS_Empty
//����:  ɾ��flash���ݿ�������ָ��ģ��
//����:  ��
//˵��:  ģ�鷵��ȷ����
uint8_t PS_Empty(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x0D);
  temp = 0x01 + 0x03 + 0x0D;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//дϵͳ�Ĵ��� PS_WriteReg
//����:  дģ��Ĵ���
//����:  �Ĵ������RegNum:4\5\6
//˵��:  ģ�鷵��ȷ����
uint8_t PS_WriteReg(uint8_t RegNum, uint8_t DATA)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x05);
  Sendcmd(0x0E);
  MYUSART_SendData(RegNum);
  MYUSART_SendData(DATA);
  temp = RegNum + DATA + 0x01 + 0x05 + 0x0E;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  if(ensure == 0)
    gpio_write(10,0);//�������óɹ�
  else{
    // soc_printf("\r\n%s", EnsureMessage(ensure));//������������
    gpio_write(11,1);
    // my_delay_ms(25);
    }
  return ensure;
}
//��ϵͳ�������� PS_ReadSysPara
//����:  ��ȡģ��Ļ��������������ʣ�����С��)
//����:  ��
//˵��:  ģ�鷵��ȷ���� + ����������16bytes��
uint8_t PS_ReadSysPara(SysPara *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x0F);
  temp = 0x01 + 0x03 + 0x0F;
  SendCheck(temp);
  data = JudgeStr(1000);
  if(data)
  {
    ensure = data[9];
    p->PS_max = (data[14] << 8) + data[15];
    p->PS_level = data[17];
    p->PS_addr = (data[18] << 24) + (data[19] << 16) + (data[20] << 8) + data[21];
    p->PS_size = data[23];
    p->PS_N = data[25];
  }
  else
    ensure = 0xff;
  if(ensure == 0x00)
  {
    // soc_printf("ģ�����ָ������=%d\r\n", p->PS_max);
    // my_delay_ms(25);
    // soc_printf("�Աȵȼ�=%d\r\n", p->PS_level);
    // my_delay_ms(25);
    // soc_printf("��ַ=%x\r\n", p->PS_addr);
    // my_delay_ms(25);
    // soc_printf("������=%d\r\n", p->PS_N * 9600);
    // my_delay_ms(25);
    gpio_write(10,0);
  }
  else
    gpio_write(11,0);
    // soc_printf("%s\r\n", EnsureMessage(ensure));//
    // my_delay_ms(25);

  return ensure;
}
//����ģ���ַ PS_SetAddr
//����:  ����ģ���ַ
//����:  PS_addr
//˵��:  ģ�鷵��ȷ����
uint8_t PS_SetAddr(uint32_t PS_addr)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x07);
  Sendcmd(0x15);
  MYUSART_SendData(PS_addr >> 24);
  MYUSART_SendData(PS_addr >> 16);
  MYUSART_SendData(PS_addr >> 8);
  MYUSART_SendData(PS_addr);
  temp = 0x01 + 0x07 + 0x15+ (uint8_t)(PS_addr >> 24) + (uint8_t)(PS_addr >> 16)+ (uint8_t)(PS_addr >> 8) + (uint8_t)PS_addr;
  SendCheck(temp);
  AS608Addr = PS_addr; //������ָ�������ַ
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  AS608Addr = PS_addr;
  if(ensure == 0x00)
    // printf("\r\n���õ�ַ�ɹ���");
    gpio_write(10,0);
  else
    gpio_write(11,0);
    // printf("\r\n%s", EnsureMessage(ensure));
  return ensure;
}
//���ܣ� ģ���ڲ�Ϊ�û�������256bytes��FLASH�ռ����ڴ��û����±�,
//	�ü��±��߼��ϱ��ֳ� 16 ��ҳ��
//����:  NotePageNum(0~15),Byte32(Ҫд�����ݣ�32���ֽ�)
//˵��:  ģ�鷵��ȷ����
uint8_t PS_WriteNotepad(uint8_t NotePageNum, uint8_t *Byte32)
{
  uint16_t temp;
  uint8_t  ensure, i;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(36);
  Sendcmd(0x18);
  MYUSART_SendData(NotePageNum);
  for(i = 0; i < 32; i++)
  {
    MYUSART_SendData(Byte32[i]);
    temp += Byte32[i];
  }
  temp = 0x01 + 36 + 0x18 + NotePageNum + temp;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  return ensure;
}
//������PS_ReadNotepad
//���ܣ�  ��ȡFLASH�û�����128bytes����
//����:  NotePageNum(0~15)
//˵��:  ģ�鷵��ȷ����+�û���Ϣ
uint8_t PS_ReadNotepad(uint8_t NotePageNum, uint8_t *Byte32)
{
  uint16_t temp;
  uint8_t  ensure, i;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x04);
  Sendcmd(0x19);
  MYUSART_SendData(NotePageNum);
  temp = 0x01 + 0x04 + 0x19 + NotePageNum;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
  {
    ensure = data[9];
    for(i = 0; i < 32; i++)
    {
      Byte32[i] = data[10 + i];
    }
  }
  else
    ensure = 0xff;
  return ensure;
}
//��������PS_HighSpeedSearch
//���ܣ��� CharBuffer1��CharBuffer2�е������ļ��������������򲿷�ָ�ƿ⡣
//		  �����������򷵻�ҳ��,��ָ����ڵ�ȷ������ָ�ƿ��� ���ҵ�¼ʱ����
//		  �ܺõ�ָ�ƣ���ܿ�������������
//����:  BufferID�� StartPage(��ʼҳ)��PageNum��ҳ����
//˵��:  ģ�鷵��ȷ����+ҳ�루����ָ��ģ�壩
uint8_t PS_HighSpeedSearch(uint8_t BufferID, uint16_t StartPage, uint16_t PageNum, SearchResult *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x08);
  Sendcmd(0x1b);
  MYUSART_SendData(BufferID);
  MYUSART_SendData(StartPage >> 8);
  MYUSART_SendData(StartPage);
  MYUSART_SendData(PageNum >> 8);
  MYUSART_SendData(PageNum);
  temp = 0x01 + 0x08 + 0x1b + BufferID
         + (StartPage >> 8) + (uint8_t)StartPage
         + (PageNum >> 8) + (uint8_t)PageNum;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
  {
    ensure = data[9];
    p->pageID 	= (data[10] << 8) + data[11];
    p->mathscore = (data[12] << 8) + data[13];
  }
  else
    ensure = 0xff;
  return ensure;
}
//����Чģ����� PS_ValidTempleteNum
//���ܣ�����Чģ�����
//����: ��
//˵��: ģ�鷵��ȷ����+��Чģ�����ValidN
uint8_t PS_ValidTempleteNum(uint16_t *ValidN)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//�������ʶ
  SendLength(0x03);
  Sendcmd(0x1d);
  temp = 0x01 + 0x03 + 0x1d;
  SendCheck(temp);
  data = JudgeStr(10000);
  if(data)
  {
    ensure = data[9];
    *ValidN = (data[10] << 8) + data[11];
  }
  else
    ensure = 0xff;

  if(ensure == 0x00)
  {
    // printf("\r\n��Чָ�Ƹ���=%d", (data[10] << 8) + data[11]);
    gpio_write(10,0);
  }
  else
    gpio_write(11,0);
    // printf("\r\n%s", EnsureMessage(ensure));
  return ensure;
}
//��AS608���� PS_HandShake
//����: PS_Addr��ַָ��
//˵��: ģ�鷵�µ�ַ����ȷ��ַ��
uint8_t PS_HandShake(uint32_t *PS_Addr)
{
  SendHead();
  SendAddr();
  MYUSART_SendData(0X01);
  MYUSART_SendData(0X00);
  MYUSART_SendData(0X00);
  for (uint32_t i = 0; i < USART0_MAX_RECV_LEN; i++)//��������
  {
    while ((uart->LSR & 0x1) == 0);//�ȴ�ֱ��rx���յ�����
    USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    USART0_RX_STA=1;
  }
  // my_delay_ms(200);
  if(USART0_RX_STA & 0X8000) //���յ�����
  {
    if(//�ж��ǲ���ģ�鷵�ص�Ӧ���
      USART0_RX_BUF[0] == 0XEF&& USART0_RX_BUF[1] == 0X01 && USART0_RX_BUF[6] == 0X07
    )
    {
      *PS_Addr =( (USART0_RX_BUF[2] << 24) + (USART0_RX_BUF[3] << 16)  + (USART0_RX_BUF[4] << 8) + (USART0_RX_BUF[5]));
      USART0_RX_STA = 0;
      return 0;
    }
    USART0_RX_STA = 0;
  }
  return 1;
}
//ģ��Ӧ���ȷ������Ϣ����
//���ܣ�����ȷ���������Ϣ������Ϣ
//����: ensure
const char *EnsureMessage(uint8_t ensure)
{
  const char *p;
  switch(ensure)
  {
  case  0x00:
    p = "       OK       ";
    break;
  case  0x01:
    p = " ���ݰ����մ��� ";
    break;
  case  0x02:
    p = "��������û����ָ";
    break;
  case  0x03:
    p = "¼��ָ��ͼ��ʧ��";
    break;
  case  0x04:
    p = " ָ��̫�ɻ�̫�� ";
    break;
  case  0x05:
    p = " ָ��̫ʪ��̫�� ";
    break;
  case  0x06:
    p = "  ָ��ͼ��̫��  ";
    break;
  case  0x07:
    p = " ָ��������̫�� ";
    break;
  case  0x08:
    p = "  ָ�Ʋ�ƥ��    ";
    break;
  case  0x09:
    p = " û��������ָ�� ";
    break;
  case  0x0a:
    p = "   �����ϲ�ʧ�� ";
    break;
  case  0x0b:
    p = "��ַ��ų�����Χ";
  case  0x10:
    p = "  ɾ��ģ��ʧ��  ";
    break;
  case  0x11:
    p = " ���ָ�ƿ�ʧ�� ";
    break;
  case  0x15:
    p = "������������Чͼ";
    break;
  case  0x18:
    p = " ��дFLASH����  ";
    break;
  case  0x19:
    p = "   δ�������   ";
    break;
  case  0x1a:
    p = "  ��Ч�Ĵ�����  ";
    break;
  case  0x1b:
    p = " �Ĵ������ݴ��� ";
    break;
  case  0x1c:
    p = " ���±�ҳ����� ";
    break;
  case  0x1f:
    p = "    ָ�ƿ���    ";
    break;
  case  0x20:
    p = "    ��ַ����    ";
    break;
  default :
    p = " ����ȷ�������� ";

    break;
  }
  return p;
}

//��ʾȷ���������Ϣ
void ShowErrMessage(uint8_t ensure)
{
  // OLED_ShowCN(5,0,(uint8_t*)EnsureMessage(ensure));
	// printf("%s\r\n",EnsureMessage(ensure));
   OLED_CLS(); 
   OLED_ShowCN_STR(30,2,62,2);
   OLED_ShowCN_STR(62,2,70,2);  //��ʾ¼���쳣
   my_delay_ms(3000);
   OLED_CLS(); 
   OLED_ShowCN_STR(25,2,72,5); //��ʾ���Ժ���
   OLED_CLS();  
   OLED_ShowCN_STR(30,2,58,4);  //��ʾ�밴��ָ
        
}


//¼ָ��
void Add_FR(void)
{
  uint8_t  	key_num;
  uint8_t i, ensure, processnum = 0;
  uint8_t ID_NUM = 0;
  while(1)
  {
    switch (processnum)
    {
    case 0:
      i++;
//	  printf("�밴��ָ\r\n");
      OLED_CLS();  
      OLED_ShowCN_STR(30,2,58,4);  //��ʾ�밴��ָ
      ensure = PS_GetImage();
      if(ensure == 0x00)
      {
        ensure = PS_GenChar(CharBuffer1); //��������
        if(ensure == 0x00)
        {
//			printf("ָ������\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //��ʾ¼����
            
          i = 0;
          processnum = 1; //�����ڶ���
        }
        else ShowErrMessage(ensure);
      }
      else ShowErrMessage(ensure);
      break;

    case 1:
      i++;
//		  printf("���ٰ�һ��\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //��ʾ¼����
      ensure = PS_GetImage();
      if(ensure == 0x00)
      {
        ensure = PS_GenChar(CharBuffer2); //��������
        if(ensure == 0x00)
        {
//					printf("ָ������\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //��ʾ¼����
          i = 0;
          processnum = 2; //����������
        }
        else ShowErrMessage(ensure);
      }
      else ShowErrMessage(ensure);
      break;

    case 2:
//		  printf("�Ա�����ָ��\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //��ʾ¼����
      ensure = PS_Match();
      if(ensure == 0x00)
      {
//		printf("�Աȳɹ�\r\n");
        OLED_CLS();
        OLED_ShowCN_STR(40,2,62,2);
        OLED_ShowCN_STR(72,2,77,1);  //��ʾ¼����
        OLED_CLS(); 
        OLED_ShowCN_STR(30,2,62,2);  //��ʾ¼��ɹ�
        OLED_ShowCN_STR(62,2,66,2);  //��ʾ¼��ɹ�
        processnum = 3; //�������Ĳ�
      }
      else
      {
		// printf("�Ա�ʧ��\r\n");
        OLED_CLS(); 
        OLED_ShowCN_STR(30,2,62,2);  //��ʾ¼��
        OLED_ShowCN_STR(62,2,68,2);  //��ʾʧ��
        ShowErrMessage(ensure);
        i = 0;
        processnum = 0; //���ص�һ��
      }
      // my_delay_ms(500);
      break;

    case 3:
//	  printf("����ָ��ģ��\r\n");
      my_delay_ms(500);
      ensure = PS_RegModel();
      if(ensure == 0x00)
      {
//		printf("����ָ��ģ��ɹ�\r\n");
        processnum = 4; //�������岽
      }
      else
      {
        processnum = 0;
        ShowErrMessage(ensure);
      }
      // my_delay_ms(500);
      break;

    case 4:
        // printf("Ĭ��ѡ��IDΪ1 \r\n");
		ID_NUM = 1;
      while(key_num != 15)
      {
        key_num = MatrixKey();
        if(key_num == 13)
        {
          key_num = 0;
          if(ID_NUM > 0)
            ID_NUM--;
        }
        if(key_num == 14)
        {
          key_num = 0;
          if(ID_NUM < 200)
          ID_NUM++;
        }
        OLED_ShowStr(32,4,"ID:",2);;
        OLED_ShowNum(60,4,ID_NUM,1,16);
      }
	  //�����������ѡ��¼��ָ�Ƶ�ID��ַ
      key_num = 0;
      ensure = PS_StoreChar(CharBuffer2, ID_NUM); //����ģ��
      if(ensure == 0x00)
      {
//		printf("¼��ָ�Ƴɹ�\r\n");
        OLED_CLS(); 
        OLED_ShowCN_STR(10,2,62,6);  //��ʾ¼��ָ�Ƴɹ�
        OLED_ShowStr(32,4,"ID:",2);
        OLED_ShowNum(60,4,ID_NUM,1,16);
        my_delay_ms(1500);
        return ;
      }
      else
      {
        processnum = 0;
        ShowErrMessage(ensure);
      }
      break;
    }
    my_delay_ms(500);//ÿ���ӳ�500ms
    if(i == 10) //����5��û�а���ָ���˳�
    {
      break;
    }
  }
}

SysPara AS608Para;//ָ��ģ��AS608����
//ˢָ��
void press_FR(void)
{
  SearchResult seach;
  uint8_t ensure;
    OLED_CLS(); 
    OLED_ShowCN_STR(30,2,58,4);  //��ʾ�밴��ָ
  while(1)
  {
    ensure = PS_GetImage();
    if(ensure == 0x00) //��ȡͼ��ɹ�
    {
      ensure = PS_GenChar(CharBuffer1);
      if(ensure == 0x00) //���������ɹ�
      {
        ensure = PS_HighSpeedSearch(CharBuffer1, 0, 99, &seach);
        if(ensure == 0x00) //�����ɹ�
        {
         OLED_CLS(); 
            interface_display(8);//��ʾ�����ɹ�
        //���Ŷ���
        
        SG90_Open();
        Buzzer_one();//�Ž�����
        my_delay_ms(2500);
        Buzzer_one();//�Ž��ر���ʾ
        SG90_Close();
        interface_display(9);
        my_delay_ms(2500);
          //�˳�ָ��ʶ��
            break;
        }
        else
        {
           OLED_CLS(); 
           interface_display(6);//��ʾ����ʧ��
            Buzzer();
          my_delay_ms(1000);
        }
      }
      else  ;
		  OLED_CLS();  
      OLED_ShowCN_STR(30,2,58,4);  //��ʾ�밴��ָ
    }
  }
}

//ɾ������ָ��
void Del_FR(void)
{
  uint8_t  ensure;
  uint16_t ID_NUM = 0;
	// printf("����ɾ��ָ�ƿ�ʼ��Ĭ��ɾ��IDΪ1");
	ID_NUM = 1;
  ensure = PS_DeletChar(ID_NUM, 1); //ɾ������ָ��
  if(ensure == 0)
  {
		// printf("ɾ��ָ�Ƴɹ� \r\n");
    // gpio_write(10,0);
    Buzzer();
  }
  else
    ShowErrMessage(ensure);

  my_delay_ms(1000);

}
/*���ָ�ƿ�*/
void Del_FR_Lib(void)
{
	uint8_t  ensure;
//	printf("ɾ��ָ�ƿ⿪ʼ\r\n");
  ensure = PS_Empty(); //���ָ�ƿ�
  if(ensure == 0)
  {
//		printf("���ָ�ƿ�ɹ�\r\n");
    //  interface_display(14);
    Buzzer();
  }
  else
     ShowErrMessage(ensure);
  my_delay_ms(1000);
}
