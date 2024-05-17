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


uint32_t AS608Addr = 0XFFFFFFFF;//默认

char str2[6] = {0};

 uint8_t USART0_RX_BUF[USART0_MAX_RECV_LEN]; 				//接收缓冲,USART0T3_MAX_RECV_LEN个字节.
uint8_t  USART0_TX_BUF[USART0_MAX_RECV_LEN]; 				//接收缓冲,USART0T3_MAX_RECV_LEN个字节.

 uint8_t Get_Device_Code[10] ={0x01,0x00,0x07,0x13,0x00,0x00,0x00,0x00,0x00,0x1b};//口令验证

 uint8_t USART0_RX_STA= 0;//串口是否接收到数据


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

//串口发送一个字节
void MYUSART_SendData(uint8_t data)
{

   while ((uart->LSR & 0x20) == 0);
   uart->THR = data;
  // return 0;
}
//发送包头
void SendHead(void)
{
	memset(USART0_RX_BUF,0,sizeof(USART0_RX_BUF));//发送前清空数据，因为所有都要发送包头，所以只需要在发送包头前清空即可
  MYUSART_SendData(0xEF);
  MYUSART_SendData(0x01);
}
//发送地址
void SendAddr(void)
{
  MYUSART_SendData(AS608Addr >> 24);
  MYUSART_SendData(AS608Addr >> 16);
  MYUSART_SendData(AS608Addr >> 8);
  MYUSART_SendData(AS608Addr);
}
//发送包标识,
void SendFlag(uint8_t flag)
{
  MYUSART_SendData(flag);
}
//发送包长度
void SendLength(int length)
{
  MYUSART_SendData(length >> 8);
  MYUSART_SendData(length);
}
//发送指令码
void Sendcmd(uint8_t cmd)
{
  MYUSART_SendData(cmd);
}
//发送校验和
void SendCheck(uint16_t check)
{
  MYUSART_SendData(check >> 8);
  MYUSART_SendData(check);
}

/*****************************************
函数名：uint8_t AS608_Check(void)
参数：无
功能描述：模块是否连接检测 
返回值：模块连接了返回0 否则返回1
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
  	// my_delay_us(500);//等待200ms
	//串口0接收12个数据
 
 while ((uart->LSR & 0x1) == 0);
  for (uint32_t i = 0; i < 12; i++)//接收12个数据
  {
    while ((uart->LSR & 0x1) == 0)//等待直到rx接收到数据
		{
		  j--;
			if(j==0){uart->FCR |= 0xbd;break;}//如果计数超过j 那么强行跳出
		}
		if(j==0)USART0_RX_BUF[i]= 0;
		else USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    
    uart_write(USART0_RX_BUF[i]);//打印
    j=30000;//重置
  }
  

	if(USART0_RX_BUF[9] == 0)
		return 0;

  return 1;
}
/*指纹模块初始化*/
uint8_t as608_init(void)
{
    uart_set_rx_th(2);//设置接收8bit 触发RX
	return AS608_Check();
}
//判断接收的数组有没有应答包
//waittime为等待接收数据的时间（单位1ms）
//返回值：数据包首地址
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
while ((uart->LSR & 0x1) == 0);//确保一定有一个数据被接收
  // my_delay_us(500);
  for (uint32_t i = 0; i < (USART0_MAX_RECV_LEN/16); i++)//接收12个数据
  {
    while ((uart->LSR & 0x1) == 0)//等待直到rx接收到数据
		{
		  j--;
			if(j==0){uart->FCR |= 0xbd;break;}//如果计数超过j 那么强行跳出
		}
		if(j==0)USART0_RX_BUF[i]= 0;
		else USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    uart_write(USART0_RX_BUF[i]);//打印
    j=waittime;//重载
  }

  // if(!memcmp(str,USART0_RX_BUF,8))//如果数据相同
  // {
    data = my_strstr((const uint8_t*)USART0_RX_BUF, (const uint8_t*)str);
    if(data)return (uint8_t*)data;
  // }

  return 0;
}
//录入图像 PS_GetImage
//功能:探测手指，探测到后录入指纹图像存于ImageBuffer。
//模块返回确认字
uint8_t PS_GetImage(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//生成特征 PS_GenChar
//功能:将ImageBuffer中的原始图像生成指纹特征文件存于CharBuffer1或CharBuffer2
//参数:BufferID --> charBuffer1:0x01	charBuffer1:0x02
//模块返回确认字
uint8_t PS_GenChar(uint8_t BufferID)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//精确比对两枚指纹特征 PS_Match
//功能:精确比对CharBuffer1 与CharBuffer2 中的特征文件
//模块返回确认字
uint8_t PS_Match(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//搜索指纹 PS_Search
//功能:以CharBuffer1或CharBuffer2中的特征文件搜索整个或部分指纹库.若搜索到，则返回页码。
//参数:  BufferID @ref CharBuffer1	CharBuffer2
//说明:  模块返回确认字，页码（相配指纹模板）
uint8_t PS_Search(uint8_t BufferID, uint16_t StartPage, uint16_t PageNum, SearchResult *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//合并特征（生成模板）PS_RegModel
//功能:将CharBuffer1与CharBuffer2中的特征文件合并生成 模板,结果存于CharBuffer1与CharBuffer2
//说明:  模块返回确认字
uint8_t PS_RegModel(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//储存模板 PS_StoreChar
//功能:将 CharBuffer1 或 CharBuffer2 中的模板文件存到 PageID 号flash数据库位置。
//参数:  BufferID @ref charBuffer1:0x01	charBuffer1:0x02
//       PageID（指纹库位置号）
//说明:  模块返回确认字
uint8_t PS_StoreChar(uint8_t BufferID, uint16_t PageID)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//删除模板 PS_DeletChar
//功能:  删除flash数据库中指定ID号开始的N个指纹模板
//参数:  PageID(指纹库模板号)，N删除的模板个数。
//说明:  模块返回确认字
uint8_t PS_DeletChar(uint16_t PageID, uint16_t N)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//清空指纹库 PS_Empty
//功能:  删除flash数据库中所有指纹模板
//参数:  无
//说明:  模块返回确认字
uint8_t PS_Empty(void)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//写系统寄存器 PS_WriteReg
//功能:  写模块寄存器
//参数:  寄存器序号RegNum:4\5\6
//说明:  模块返回确认字
uint8_t PS_WriteReg(uint8_t RegNum, uint8_t DATA)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
    gpio_write(10,0);//参数设置成功
  else{
    // soc_printf("\r\n%s", EnsureMessage(ensure));//参数设置有误
    gpio_write(11,1);
    // my_delay_ms(25);
    }
  return ensure;
}
//读系统基本参数 PS_ReadSysPara
//功能:  读取模块的基本参数（波特率，包大小等)
//参数:  无
//说明:  模块返回确认字 + 基本参数（16bytes）
uint8_t PS_ReadSysPara(SysPara *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
    // soc_printf("模块最大指纹容量=%d\r\n", p->PS_max);
    // my_delay_ms(25);
    // soc_printf("对比等级=%d\r\n", p->PS_level);
    // my_delay_ms(25);
    // soc_printf("地址=%x\r\n", p->PS_addr);
    // my_delay_ms(25);
    // soc_printf("波特率=%d\r\n", p->PS_N * 9600);
    // my_delay_ms(25);
    gpio_write(10,0);
  }
  else
    gpio_write(11,0);
    // soc_printf("%s\r\n", EnsureMessage(ensure));//
    // my_delay_ms(25);

  return ensure;
}
//设置模块地址 PS_SetAddr
//功能:  设置模块地址
//参数:  PS_addr
//说明:  模块返回确认字
uint8_t PS_SetAddr(uint32_t PS_addr)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
  SendLength(0x07);
  Sendcmd(0x15);
  MYUSART_SendData(PS_addr >> 24);
  MYUSART_SendData(PS_addr >> 16);
  MYUSART_SendData(PS_addr >> 8);
  MYUSART_SendData(PS_addr);
  temp = 0x01 + 0x07 + 0x15+ (uint8_t)(PS_addr >> 24) + (uint8_t)(PS_addr >> 16)+ (uint8_t)(PS_addr >> 8) + (uint8_t)PS_addr;
  SendCheck(temp);
  AS608Addr = PS_addr; //发送完指令，更换地址
  data = JudgeStr(10000);
  if(data)
    ensure = data[9];
  else
    ensure = 0xff;
  AS608Addr = PS_addr;
  if(ensure == 0x00)
    // printf("\r\n设置地址成功！");
    gpio_write(10,0);
  else
    gpio_write(11,0);
    // printf("\r\n%s", EnsureMessage(ensure));
  return ensure;
}
//功能： 模块内部为用户开辟了256bytes的FLASH空间用于存用户记事本,
//	该记事本逻辑上被分成 16 个页。
//参数:  NotePageNum(0~15),Byte32(要写入内容，32个字节)
//说明:  模块返回确认字
uint8_t PS_WriteNotepad(uint8_t NotePageNum, uint8_t *Byte32)
{
  uint16_t temp;
  uint8_t  ensure, i;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//读记事PS_ReadNotepad
//功能：  读取FLASH用户区的128bytes数据
//参数:  NotePageNum(0~15)
//说明:  模块返回确认字+用户信息
uint8_t PS_ReadNotepad(uint8_t NotePageNum, uint8_t *Byte32)
{
  uint16_t temp;
  uint8_t  ensure, i;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//高速搜索PS_HighSpeedSearch
//功能：以 CharBuffer1或CharBuffer2中的特征文件高速搜索整个或部分指纹库。
//		  若搜索到，则返回页码,该指令对于的确存在于指纹库中 ，且登录时质量
//		  很好的指纹，会很快给出搜索结果。
//参数:  BufferID， StartPage(起始页)，PageNum（页数）
//说明:  模块返回确认字+页码（相配指纹模板）
uint8_t PS_HighSpeedSearch(uint8_t BufferID, uint16_t StartPage, uint16_t PageNum, SearchResult *p)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
//读有效模板个数 PS_ValidTempleteNum
//功能：读有效模板个数
//参数: 无
//说明: 模块返回确认字+有效模板个数ValidN
uint8_t PS_ValidTempleteNum(uint16_t *ValidN)
{
  uint16_t temp;
  uint8_t  ensure;
  uint8_t  *data;
  SendHead();
  SendAddr();
  SendFlag(0x01);//命令包标识
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
    // printf("\r\n有效指纹个数=%d", (data[10] << 8) + data[11]);
    gpio_write(10,0);
  }
  else
    gpio_write(11,0);
    // printf("\r\n%s", EnsureMessage(ensure));
  return ensure;
}
//与AS608握手 PS_HandShake
//参数: PS_Addr地址指针
//说明: 模块返新地址（正确地址）
uint8_t PS_HandShake(uint32_t *PS_Addr)
{
  SendHead();
  SendAddr();
  MYUSART_SendData(0X01);
  MYUSART_SendData(0X00);
  MYUSART_SendData(0X00);
  for (uint32_t i = 0; i < USART0_MAX_RECV_LEN; i++)//接收数据
  {
    while ((uart->LSR & 0x1) == 0);//等待直到rx接收到数据
    USART0_RX_BUF[i]= (uint8_t)((uart->RBR)&0xff);
    USART0_RX_STA=1;
  }
  // my_delay_ms(200);
  if(USART0_RX_STA & 0X8000) //接收到数据
  {
    if(//判断是不是模块返回的应答包
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
//模块应答包确认码信息解析
//功能：解析确认码错误信息返回信息
//参数: ensure
const char *EnsureMessage(uint8_t ensure)
{
  const char *p;
  switch(ensure)
  {
  case  0x00:
    p = "       OK       ";
    break;
  case  0x01:
    p = " 数据包接收错误 ";
    break;
  case  0x02:
    p = "传感器上没有手指";
    break;
  case  0x03:
    p = "录入指纹图像失败";
    break;
  case  0x04:
    p = " 指纹太干或太淡 ";
    break;
  case  0x05:
    p = " 指纹太湿或太糊 ";
    break;
  case  0x06:
    p = "  指纹图像太乱  ";
    break;
  case  0x07:
    p = " 指纹特征点太少 ";
    break;
  case  0x08:
    p = "  指纹不匹配    ";
    break;
  case  0x09:
    p = " 没有搜索到指纹 ";
    break;
  case  0x0a:
    p = "   特征合并失败 ";
    break;
  case  0x0b:
    p = "地址序号超出范围";
  case  0x10:
    p = "  删除模板失败  ";
    break;
  case  0x11:
    p = " 清空指纹库失败 ";
    break;
  case  0x15:
    p = "缓冲区内无有效图";
    break;
  case  0x18:
    p = " 读写FLASH出错  ";
    break;
  case  0x19:
    p = "   未定义错误   ";
    break;
  case  0x1a:
    p = "  无效寄存器号  ";
    break;
  case  0x1b:
    p = " 寄存器内容错误 ";
    break;
  case  0x1c:
    p = " 记事本页码错误 ";
    break;
  case  0x1f:
    p = "    指纹库满    ";
    break;
  case  0x20:
    p = "    地址错误    ";
    break;
  default :
    p = " 返回确认码有误 ";

    break;
  }
  return p;
}

//显示确认码错误信息
void ShowErrMessage(uint8_t ensure)
{
  // OLED_ShowCN(5,0,(uint8_t*)EnsureMessage(ensure));
	// printf("%s\r\n",EnsureMessage(ensure));
   OLED_CLS(); 
   OLED_ShowCN_STR(30,2,62,2);
   OLED_ShowCN_STR(62,2,70,2);  //显示录入异常
   my_delay_ms(3000);
   OLED_CLS(); 
   OLED_ShowCN_STR(25,2,72,5); //显示请稍后尝试
   OLED_CLS();  
   OLED_ShowCN_STR(30,2,58,4);  //显示请按手指
        
}


//录指纹
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
//	  printf("请按手指\r\n");
      OLED_CLS();  
      OLED_ShowCN_STR(30,2,58,4);  //显示请按手指
      ensure = PS_GetImage();
      if(ensure == 0x00)
      {
        ensure = PS_GenChar(CharBuffer1); //生成特征
        if(ensure == 0x00)
        {
//			printf("指纹正常\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //显示录入中
            
          i = 0;
          processnum = 1; //跳到第二步
        }
        else ShowErrMessage(ensure);
      }
      else ShowErrMessage(ensure);
      break;

    case 1:
      i++;
//		  printf("请再按一次\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //显示录入中
      ensure = PS_GetImage();
      if(ensure == 0x00)
      {
        ensure = PS_GenChar(CharBuffer2); //生成特征
        if(ensure == 0x00)
        {
//					printf("指纹正常\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //显示录入中
          i = 0;
          processnum = 2; //跳到第三步
        }
        else ShowErrMessage(ensure);
      }
      else ShowErrMessage(ensure);
      break;

    case 2:
//		  printf("对比两次指纹\r\n");
          OLED_CLS();
          OLED_ShowCN_STR(40,2,62,2);
          OLED_ShowCN_STR(72,2,77,1);  //显示录入中
      ensure = PS_Match();
      if(ensure == 0x00)
      {
//		printf("对比成功\r\n");
        OLED_CLS();
        OLED_ShowCN_STR(40,2,62,2);
        OLED_ShowCN_STR(72,2,77,1);  //显示录入中
        OLED_CLS(); 
        OLED_ShowCN_STR(30,2,62,2);  //显示录入成功
        OLED_ShowCN_STR(62,2,66,2);  //显示录入成功
        processnum = 3; //跳到第四步
      }
      else
      {
		// printf("对比失败\r\n");
        OLED_CLS(); 
        OLED_ShowCN_STR(30,2,62,2);  //显示录入
        OLED_ShowCN_STR(62,2,68,2);  //显示失败
        ShowErrMessage(ensure);
        i = 0;
        processnum = 0; //跳回第一步
      }
      // my_delay_ms(500);
      break;

    case 3:
//	  printf("生成指纹模板\r\n");
      my_delay_ms(500);
      ensure = PS_RegModel();
      if(ensure == 0x00)
      {
//		printf("生成指纹模板成功\r\n");
        processnum = 4; //跳到第五步
      }
      else
      {
        processnum = 0;
        ShowErrMessage(ensure);
      }
      // my_delay_ms(500);
      break;

    case 4:
        // printf("默认选择ID为1 \r\n");
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
	  //上述代码可以选择录入指纹的ID地址
      key_num = 0;
      ensure = PS_StoreChar(CharBuffer2, ID_NUM); //储存模板
      if(ensure == 0x00)
      {
//		printf("录入指纹成功\r\n");
        OLED_CLS(); 
        OLED_ShowCN_STR(10,2,62,6);  //显示录入指纹成功
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
    my_delay_ms(500);//每次延迟500ms
    if(i == 10) //超过5次没有按手指则退出
    {
      break;
    }
  }
}

SysPara AS608Para;//指纹模块AS608参数
//刷指纹
void press_FR(void)
{
  SearchResult seach;
  uint8_t ensure;
    OLED_CLS(); 
    OLED_ShowCN_STR(30,2,58,4);  //显示请按手指
  while(1)
  {
    ensure = PS_GetImage();
    if(ensure == 0x00) //获取图像成功
    {
      ensure = PS_GenChar(CharBuffer1);
      if(ensure == 0x00) //生成特征成功
      {
        ensure = PS_HighSpeedSearch(CharBuffer1, 0, 99, &seach);
        if(ensure == 0x00) //搜索成功
        {
         OLED_CLS(); 
            interface_display(8);//显示解锁成功
        //开门动作
        
        SG90_Open();
        Buzzer_one();//门禁开启
        my_delay_ms(2500);
        Buzzer_one();//门禁关闭提示
        SG90_Close();
        interface_display(9);
        my_delay_ms(2500);
          //退出指纹识别
            break;
        }
        else
        {
           OLED_CLS(); 
           interface_display(6);//显示解锁失败
            Buzzer();
          my_delay_ms(1000);
        }
      }
      else  ;
		  OLED_CLS();  
      OLED_ShowCN_STR(30,2,58,4);  //显示请按手指
    }
  }
}

//删除单个指纹
void Del_FR(void)
{
  uint8_t  ensure;
  uint16_t ID_NUM = 0;
	// printf("单个删除指纹开始，默认删除ID为1");
	ID_NUM = 1;
  ensure = PS_DeletChar(ID_NUM, 1); //删除单个指纹
  if(ensure == 0)
  {
		// printf("删除指纹成功 \r\n");
    // gpio_write(10,0);
    Buzzer();
  }
  else
    ShowErrMessage(ensure);

  my_delay_ms(1000);

}
/*清空指纹库*/
void Del_FR_Lib(void)
{
	uint8_t  ensure;
//	printf("删除指纹库开始\r\n");
  ensure = PS_Empty(); //清空指纹库
  if(ensure == 0)
  {
//		printf("清空指纹库成功\r\n");
    //  interface_display(14);
    Buzzer();
  }
  else
     ShowErrMessage(ensure);
  my_delay_ms(1000);
}
