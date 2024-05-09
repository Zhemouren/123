
#include "main.h"
#include "peri_test_sum.h"
// #include "gImage_cc.h"
#include "gImage_cc.h"
#include "my_delay.h"
#include "oled.h"
#include "duoji.h"
#include "rc522.h"
#include "as608.h"
#include "led.h"
#include "key.h"
// ================================================================

// ================================================================

// ================================================================
uint8_t static_late=1;
#define MM   5             //表示密码库容量
uint16_t passwordArray[MM] = {1234, 1234,1234,1234,1234};//用于储存密码   1234是初始密码
uint16_t IDArray[MM] = {120, 0, 0, 0,0};//用于储存卡号  
uint16_t Password,Count;
uint8_t mode = 1;//运行界面
uint8_t KeyNum=0;//定义一个变量用于储存键盘键码面的标志位
uint8_t flag1=1,flag2=0,flag3=0,flag4=0,flag5=0,flag6=0,flag7=0,flag8=0,flag9=0;
uint8_t flag10=0,flag11=0,flag12=0,flag13=0,flag14=0,flag15=0,flag16=0,flag17=0,flag18=0,flag19=0,flag20=0;	        //进入界面的标志位

// ================================================================
/* OLED 图片显示字模 */
const unsigned char gImage_cc[356] = { 0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X80,0X80,0XC0,0XC0,0XC0,0XC0,0XC0,0X80,0X80,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0XFC,0XFF,0X07,0X03,0X01,0X01,0X00,0X01,0X01,0X03,
0X07,0XFF,0XFE,0XF0,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0XFE,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0X9F,0X0F,0X0F,0X0F,
0X9F,0XFF,0XFF,0XFF,0XFF,0XFF,0XFF,0XFE,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X07,0X1F,0X3F,0X7F,0X7F,0XFF,0XFF,0XFF,0XFF,
0XF8,0XF8,0XFF,0XFF,0XFF,0X7F,0X7F,0X3F,0X1F,0X07,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,
0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,0X00,};


int main(void)
{
  
  my_GPIO_Init();//初始化屏幕
  my_I2C_Init();//用于oled屏幕
  my_PWM_Init();//用于舵机/电机
//   my_SPI_Init();//用于读卡器
//   my_USART1_Init();//用于普通串口，1=波特率115200
//   my_USART0_Init();//用于指纹模块，波特率57600，需要更改硬件模块
//   interrupt_fun();//开启各项中断函数

  Init_main();
  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */

  while (1)
  {
      	KeyNum=MatrixKey();			//获取矩阵键盘键码
            switch(mode)
            {
/*1       显示智能门禁系统    解锁     设置        */
                case 1:
                    if(flag1==1)
                    {
                       interface_display(1);
                       flag1=0;
                    }
                    if(KeyNum==13){mode=2;flag2=1;}//进选择解锁方式界面
                    if(KeyNum==14){mode=8;flag8=1;}//进输入管理员密码界面
                    break;

/*2        选择解锁方式    卡解锁     密码解锁  指纹解锁      */
                case 2:	
				if(flag2==1)
				{
					interface_display(2);					
					flag2=0;
						
				}
				if(KeyNum==11) {mode=3;flag3=1;}	//进去卡解锁
				if(KeyNum==12) {mode=4;flag4=1;}	//进去密码解锁
                if(KeyNum==15) {mode=15;flag15=1;}	//进去指纹解锁
                if(KeyNum==16) {mode=1;flag1=1;}	//返回键
                break;
/*3             卡解锁       */
                case 3:	
				if(flag3==1)
				{
					interface_display(4);					
					flag3=0;
						
				}
                Read_ID();
                if(KeyNum==16) mode=2,flag2=1;	//返回键
                break;
/*4            密码解锁        */
                case 4:	
				if(flag4==1)
				{
					interface_display(5);					
					flag4=0;
						
				}//具体的功能函数请转至
                Key_main();
                if(KeyNum==16){ mode=2;flag2=1;}	//返回键
                break;
/*5        设置    卡管理    密码管理   退出       */
                case 5:	
				if(flag5==1)
				{
					interface_display(3);					
					flag5=0;
						
				}
				if(KeyNum==11) mode=6,flag6=1;	//进去卡管理
				if(KeyNum==12) mode=7,flag7=1;	//进去密码管理
                if(KeyNum==15) mode=16,flag16=1;	//进去指纹管理
                if(KeyNum==16) mode=1,flag1=1;	//返回键
                break;
/*6            卡管理                          */
                case 6:	
				if(flag6==1)
				{
					interface_display(10);					
					flag6=0;
                    
				}
                if(KeyNum==11) mode=9,flag9=1;	//进入添加卡
                if(KeyNum==12) mode=13,flag13=1;	//清空卡库
                if(KeyNum==15) mode=5,flag5=1;	//返回键
                if(KeyNum==16) mode=5,flag5=1;	//返回键
                break;
                
/*7            密码管理                          */
                case 7:	
				if(flag7==1)
				{
					interface_display(11);					
					flag7=0;
                    
				}
                if(KeyNum==11) mode=10,flag10=1;	//添加密码
                if(KeyNum==12) mode=11,flag11=1;	//清空密码库
                if(KeyNum==15) mode=5,flag5=1;	//返回键
                if(KeyNum==16) mode=5,flag5=1;	//返回键
                break;
/*8            请输入管理员界面                          */
                case 8:	
				if(flag8==1)
				{
					interface_display(7);					
					flag8=0;
				}
                Key();
                if(KeyNum==16) mode=1,flag1=1;	//返回键
                break;
/*9            添加卡界面                          */
                case 9:	
				if(flag9==1)
				{
					interface_display(12);					
					flag9=0;
                    
				}
                Write_ID();
                if(KeyNum==16) mode=6,flag6=1;	//返回键
                break;
                
/*10            添加密码界面                          */
                case 10:	
				if(flag10==1)
				{
					interface_display(13);					
					flag10=0;
                    
				}
                 Add_Key();	//添加密码功能
                if(KeyNum==16) mode=7,flag7=1;	//返回键
                break;
                
/*11            清空密码库界面                       */
                case 11:	
				if(flag11==1)
				{
					interface_display(17);					
					flag11=0;
				}
                if(KeyNum==13) mode=12,flag12=1;	//是键
                if(KeyNum==14) mode=7,flag7=1;	//否键
                if(KeyNum==16) mode=7,flag7=1;	//返回键
                break;
/*12            已清空界面 ----密码解锁                      */
                case 12:	
				if(flag12==1)
				{
					interface_display(14);					
					flag12=0;
                    Delete_key();//清空密码库函数
                    
				}
                if(KeyNum==16) mode=7,flag7=1;	//返回
                break;
                
/*13            清空卡库界面                       */
                case 13:	
				if(flag13==1)
				{
					interface_display(16);					
					flag13=0;
                    
				}
                if(KeyNum==13) mode=14,flag14=1;	//是键
                if(KeyNum==14) mode=6,flag6=1;	//否键
                if(KeyNum==16) mode=6,flag6=1;	//返回
                
/*14            已清空界面 ----卡解锁                      */
                case 14:	
				if(flag14==1)
				{
					interface_display(14);					
					flag14=0;
                    Delate_ID();//清空卡库函数
                    
				}
                if(KeyNum==16) mode=6,flag7=6;	//返回
                break;
                
/*15            指纹解锁                     */
                case 15:	
				if(flag15==1)
				{
					interface_display(18);					
					flag15=0;
				}
                press_FR();
                flag1=1;
                mode=1;
                if(KeyNum==16) mode=2,flag2=1;	//返回
                break;
                
/*16            指纹管理                     */
                case 16:	
				if(flag16==1)
				{
					interface_display(19);					
					flag16=0;
				}
                if(KeyNum==11) mode=17,flag17=1;	//添加指纹
                if(KeyNum==12) mode=18,flag18=1;	//清空指纹库
                if(KeyNum==15) mode=5,flag5=1;	//清空指纹库
                if(KeyNum==16) mode=5,flag5=1;	//返回
                break;
                
/*17            添加指纹界面                          */
                case 17:	
				if(flag17==1)
				{
					interface_display(21);					
					flag17=0;
                    
				}
                Add_FR();
                 mode=16,flag16=1;
                if(KeyNum==16) mode=16,flag16=1;	//返回键
                break;
                
/*18            清空指纹库界面                       */
                case 18:	
				if(flag18==1)
				{
					interface_display(20);					
					flag18=0;
				}
                if(KeyNum==13) mode=19,flag19=1;	//是键
                if(KeyNum==14) mode=16,flag16=1;	//否键
                if(KeyNum==16) mode=16,flag16=1;	//返回键
                break;
/*19            已清空界面 ----指纹解锁                      */
                case 19:	
				if(flag19==1)
				{
					interface_display(14);					
					flag19=0;
                    Del_FR_Lib();//清空指纹库函数
                    
				}
                mode=16,flag16=1;
                if(KeyNum==16) mode=16,flag16=1;	//返回
                break;
                    default : break;
                

  }
  }
  /* USER CODE END 3 */
}






/*   OLED屏界面显示函数  */
void interface_display(uint16_t value)
{
    switch(value)
    {
        case 1:
        OLED_CLS(); 
//        OLED_ShowCN_STR(16,0,0,6);  //显示智能门禁系统
// 
        OLED_DrawBMP(30, 0, 80, 5, (unsigned char *)gImage_cc);
        OLED_ShowCN(0,6,7); 
        OLED_ShowCN(16,6,8);        //显示解锁
        OLED_ShowCN(94,6,13);  
        OLED_ShowCN(110,6,14);        //显示设置
        break;
        
        case 2:
        OLED_CLS(); 
        OLED_ShowCN_STR(10,0,15,7);  //显示请选择解锁方式
        OLED_ShowStr(22,2,"1.",2);
        OLED_ShowCN_STR(40,2,6,3);   //显示卡解锁
        OLED_ShowStr(22,4,"2.",2);
        OLED_ShowCN_STR(40,4,9,4);  //显示密码解锁
        OLED_ShowStr(22,6,"3.",2);
        OLED_ShowCN_STR(40,6,56,2);
        OLED_ShowCN_STR(72,6,11,2);  //显示指纹解锁
        break;
        
        case 3:
        OLED_CLS(); 
        OLED_ShowCN_STR(22,0,35,3);//显示管理员
        OLED_ShowCN_STR(70,0,13,2);         //设置界面
        OLED_ShowStr(22,2,"1.",2);	
        OLED_ShowCN(40,2,6);       //显示卡
        OLED_ShowCN_STR(56,2,35,2);     //管理
        OLED_ShowStr(22,4,"2.",2);	
        OLED_ShowCN_STR(40,4,9,2);//显示密码
        OLED_ShowCN_STR(72,4,35,2);     //管理
        OLED_ShowStr(22,6,"3.",2);	
        OLED_ShowCN_STR(40,6,56,2);//显示指纹
        OLED_ShowCN_STR(72,6,35,2);     //管理
        break;
        
        case 4:
        OLED_CLS(); 
        OLED_ShowCN(10,0,22);       //请使用卡解锁
        OLED_ShowCN_STR(26,0,33,2);   
        OLED_ShowCN_STR(58,0,6,3);   //显示卡解锁
        OLED_ShowCN_STR(0,6,46,2);   //显示返回
        break;
        
        case 5:
        OLED_CLS(); 
        OLED_ShowCN_STR(20,0,22,5);  //显示请输入密码
        OLED_ShowCN_STR(0,6,46,2);   //显示返回
        break;
        
        case 6:
        OLED_CLS(); 
        OLED_ShowCN_STR(15,2,78,4); 
        OLED_ShowCN_STR(79,2,29,2);  //显示身份验证失败
        break;
        
        
        case 7:
        OLED_CLS(); 
        OLED_ShowCN_STR(0,0,22,3); 
        OLED_ShowCN_STR(48,0,35,3); 
        OLED_ShowCN_STR(96,0,25,2);  //显示请输入管理员密码
        OLED_ShowCN_STR(0,6,46,2);   //显示返回
        break;
                
        case 8:
        OLED_CLS(); 
        OLED_ShowCN_STR(15,2,78,4); 
        OLED_ShowCN(79,2,31); 
        OLED_ShowCN(95,2,32);        //显示身份验证成功
        break;
        
        case 9:
        OLED_CLS(); 
        OLED_ShowCN_STR(32,2,42,4);   //显示欢迎光临
        break;
        
        case 10:
        OLED_CLS();
        OLED_ShowCN(40,0,6);       //显示卡
        OLED_ShowCN_STR(56,0,35,2);     //管理
        
        OLED_ShowStr(22,2,"1.",2);	
        OLED_ShowCN_STR(40,2,48,2); 
        OLED_ShowCN(72,2,6);       //显示添加卡
        OLED_ShowStr(22,4,"2.",2);	
        OLED_ShowCN_STR(40,4,51,2);   //显示清除卡库
        OLED_ShowCN(72,4,6);
        OLED_ShowCN(88,4,50);
        OLED_ShowStr(22,6,"3.",2);	
        OLED_ShowCN_STR(40,6,38,2);//显示退出
        break;
                
        case 11:
        OLED_CLS(); 
        OLED_ShowCN_STR(40,0,9,2);//显示密码
        OLED_ShowCN_STR(72,0,35,2);     //管理
        OLED_ShowStr(22,2,"1.",2);	
        OLED_ShowCN_STR(40,2,48,2); 
        OLED_ShowCN_STR(72,2,25,2);   //显示添加密码
        
        OLED_ShowStr(22,4,"2.",2);	
        OLED_ShowCN_STR(40,4,51,2);
        OLED_ShowCN_STR(72,4,25,2);   //显示清除密码库
        OLED_ShowCN(104,4,50);
        OLED_ShowStr(22,6,"3.",2);	
        OLED_ShowCN_STR(40,6,38,2);//显示退出
        break;
        
        case 12:
        OLED_CLS();
        OLED_ShowCN_STR(40,0,48,2); 
        OLED_ShowCN(72,0,6);       //显示添加卡
        break;
        
        case 13:
        OLED_CLS();
        OLED_ShowCN_STR(36,0,48,2); 
        OLED_ShowCN_STR(68,0,25,2);   //显示添加密码
        break;
        
        case 14:
        OLED_CLS();
        OLED_ShowCN(40,2,53); 
        OLED_ShowCN_STR(56,2,51,2);   //显示已清空
        break;
        
        case 15:
        OLED_CLS();
        OLED_ShowCN_STR(30,2,48,2); 
        OLED_ShowCN(62,2,31); 
        OLED_ShowCN(78,2,32);       //显示添加成功
        break;
        
        case 16:
        OLED_CLS();
        OLED_ShowCN_STR(35,0,51,2);   //显示清除卡库
        OLED_ShowCN(67,0,6);
        OLED_ShowCN(83,0,50);
        OLED_ShowCN(0,6,54);
        OLED_ShowCN(108,6,55);       //显示是否选择界面
        break;
        
        case 17:
        OLED_CLS();
        OLED_ShowCN_STR(25,2,51,2);
        OLED_ShowCN_STR(57,2,25,2);   //显示清除密码库
        OLED_ShowCN(89,2,50);
        OLED_ShowCN(0,6,54);
        OLED_ShowCN(108,6,55);       //显示是否选择界面
        break;
        
        case 18:
        OLED_CLS();
        OLED_ShowCN_STR(25,2,56,2);
        OLED_ShowCN_STR(57,2,27,2);   //显示指纹解锁
        break;
        
        case 19:
        OLED_CLS(); 
        OLED_ShowCN_STR(40,0,56,2);//显示密码
        OLED_ShowCN_STR(72,0,35,2);     //管理
        OLED_ShowStr(22,2,"1.",2);	
        OLED_ShowCN_STR(40,2,48,2); 
        OLED_ShowCN_STR(72,2,56,2);   //显示添加密码
        
        OLED_ShowStr(22,4,"2.",2);	
        OLED_ShowCN_STR(40,4,51,2);
        OLED_ShowCN_STR(72,4,56,2);   //显示清除密码库
        OLED_ShowCN(104,4,50);
        OLED_ShowStr(22,6,"3.",2);	
        OLED_ShowCN_STR(40,6,38,2);//显示退出
        break;
        
        case 20:
        OLED_CLS();
        OLED_ShowCN_STR(25,2,51,2);
        OLED_ShowCN_STR(57,2,56,2);   //显示清除密码库
        OLED_ShowCN(89,2,50);
        OLED_ShowCN(0,6,54);
        OLED_ShowCN(108,6,55);       //显示是否选择界面
        break;
        
        case 21:
        OLED_CLS();
        OLED_ShowCN_STR(40,0,48,2); 
        OLED_ShowCN_STR(72,0,56,2);   //显示添加指纹
        break;
        

        
 
    }
}

/*      写ID卡函数        */
//
void Write_ID()
{
    uint16_t cardID = Return_Card(); // 从卡片中读取ID
    // 检查是否存在ID卡
    if (cardID != 0)
    {
        // 把读取到的ID卡存入数组
        for (int i = MM - 1; i > 0; i--)
        {
            IDArray[i] = IDArray[i - 1]; // 向后移动数组元素
        }
        IDArray[0] = cardID; // 存储新ID到第一个元素
         interface_display(15);
          my_delay_ms(2000);
          mode=6;
          flag6=1;          //添加成功后自动跳转到卡界面
    }  
//    // 打印数组中的所有值
//    my_delay_ms(1000);
//    for (int i = 0; i < MM; i++)
//    {
//        printf("IDArray[%d] = %d\n", i, IDArray[i]);
//    }
}

/*      删除读取到的卡号，清空卡功能        */
void Delate_ID()
{
     for (int i = 0; i < MM; i++)
    {
        IDArray[i] = 0; // 将数组元素清零
    }  
    my_delay_ms(1000);
    mode=6;
    flag6=1;
//     for (int i = 0; i < MM; i++)
//    {
//        printf("IDArray[%d] = %d\n", i, IDArray[i]);
//    }  
}


/*      读ID卡函数        */
void Read_ID()
{
    uint16_t cardID = Return_Card(); // 从卡片中读取ID
    // 检查是否存在ID卡
    if (cardID != 0)
    {
        // 检查读取到的卡号是否与数组中的任何一个数值相等
        for (int i = 0; i < MM; i++)
        {
            if (cardID == IDArray[i])
            {
                interface_display(8);
                SG90_Open();
                my_delay_ms(5000);
                SG90_Close();
                interface_display(9);
                my_delay_ms(3000);
                flag1=1;
                mode=1;
                break; // 找到匹配的卡号后，退出循环
            }
            else
            {
                interface_display(6);
                Buzzer();
                my_delay_ms(1000);
                interface_display(4);
                break;
            }
        }
    }
}


/*      按键密码锁功能函数        */
void Key_main()
{
   uint8_t success = 0; // 标志位，用于判断密码锁功能密码是否输入成功
    		if(KeyNum)
		{
			if(KeyNum<=10)	//如果S1~S10按键按下，输入密码
			{
				if(Count<4)	//如果输入次数小于4
				{
					Password*=10;				//密码左移一位
					Password+=KeyNum%10;		//获取一位密码
					Count++;	//计次加一
                    }//缺点:每次按键按下，数字整体向左移动
//                OLED_ShowNum(45,3,Password,1,16);
				int temp = Password;
                for(int i = Count - 1; i >= 0; i--)
                {
                    int digit = temp % 10;
                    temp /= 10;
                    OLED_ShowNum(45+ i * 8, 3, digit, 1, 16);
                }
                my_delay_ms(1000);
                 for(int i = 0; i < Count; i++)
                {
                    OLED_ShowStr(37 + (Count - i) * 8, 3, "*", 2);
                }
			}
            for (int i = 0; i < sizeof(passwordArray) / sizeof(passwordArray[0]); i++) 
            {
                if (Password == passwordArray[i]) {
                success = 1;
                break;
             }//使用一个循环遍历数组中的元素，并检查是否有与输入密码相等的元素
             }
			if(KeyNum==11)	//如果S11按键按下，确认
			{
				if(success)	//如果密码等于正确密码
				{
                    OLED_CLS();
                    interface_display(8);//显示解锁成功
                    SG90_Open();
                    my_delay_ms(5000);
                    SG90_Close();
                    interface_display(9);
                    my_delay_ms(3000);
                    flag1=1;
                    mode=1;
					Password=0;		//密码清零
					Count=0;		//计次清零
				}
				else				//否则
				{
                    OLED_CLS();
                    interface_display(6);//显示解锁失败
                    Buzzer();
                    SG90_Close();
                    my_delay_ms(3000);
					Password=0;		//密码清零
					Count=0;		//计次清零
                    interface_display(5);//显示请输入密码
				}
			}
			if(KeyNum==12)	//如果S12按键按下，取消
			{
                /* 逻辑清0 */
				Password=0;		//密码清零
				Count=0;		//计次清零
                /* 显示清0 */
                for(int i=0;i<4;i++)
                {
                 OLED_ShowStr(45+i*8, 3, " ", 2);
                }
			}
		}
}


/*  输入管理员按键函数 */
void Key()
{
    		if(KeyNum)
		{
			if(KeyNum<=10)	//如果S1~S10按键按下，输入密码
			{
				if(Count<4)	//如果输入次数小于4
				{
					Password*=10;				//密码左移一位
					Password+=KeyNum%10;		//获取一位密码
					Count++;	//计次加一
				}
                    
				int temp = Password;
                
                for(int i = Count - 1; i >= 0; i--)
                {
                    int digit = temp % 10;
                    temp /= 10;
                    OLED_ShowNum(45+ i * 8, 3, digit, 1, 16);
                }
                my_delay_ms(1000);
                 for(int i = 0; i < Count; i++)
                {
                    OLED_ShowStr(37 + (Count - i) * 8, 3, "*", 2);
                }
			}
			if(KeyNum==11)	//如果S11按键按下，确认
			{
				if(Password==1111)	//如果密码等于正确密码//管理员密码
				{
                    interface_display(8);//显示解锁成功
                    mode=5;
                    flag5=1;//进设置界面
                    my_delay_ms(1000);
					Password=0;		//密码清零
					Count=0;		//计次清零
				}
				else				//否则
				{
                    OLED_CLS();
                    interface_display(6);//显示解锁失败
                    Buzzer();
                    my_delay_ms(1000);
                    mode=8;
                    flag8=1;//进设置界面
					Password=0;		//密码清零
					Count=0;		//计次清零
				}
			}
			if(KeyNum==12)	//如果S12按键按下，取消
			{
                /* 逻辑清0 */
				Password=0;		//密码清零
				Count=0;		//计次清零
                /* 显示清0 */
                for(int i=0;i<4;i++)
                {
                 OLED_ShowStr(45+i*8, 3, " ", 2);
                }
			}
		}
}

/*  添加密码函数 */
void Add_Key()
{
    if (KeyNum)
    {
        if (KeyNum <= 10) // 如果S1~S10按键按下，输入密码
        {
            if (Count < 4) // 如果输入次数小于4
            {
                Password *= 10; // 密码左移一位
                Password += KeyNum % 10; // 获取一位密码
                Count++; // 计次加一
            }
            int temp = Password;
                
                for(int i = Count - 1; i >= 0; i--)
                {
                    int digit = temp % 10;
                    temp /= 10;
                    OLED_ShowNum(45+ i * 8, 3, digit, 1, 16);
                }
        }
        if (KeyNum == 11) // 如果S11按键按下，确认
        {
            for (int i = sizeof(passwordArray) / sizeof(passwordArray[0]) - 1; i > 0; i--)
            {
                passwordArray[i] = passwordArray[i - 1]; // 向后移动数组元素
            }
            passwordArray[0] = Password; // 存储新密码到第一个元素
            Password = 0; // 密码清零
            Count = 0; // 计次清零
            interface_display(15);
            my_delay_ms(2000);
            mode=7;
            flag7=1; //添加成功后自动跳转到密码管理界面
        }
			if(KeyNum==12)	//如果S12按键按下，取消
			{
                /* 逻辑清0 */
				Password=0;		//密码清零
				Count=0;		//计次清零
                /* 显示清0 */
                for(int i=0;i<4;i++)
                {
                 OLED_ShowStr(45+i*8, 3, " ", 2);
                }
			}
    }
}

void Delete_key()
{
    for (int i = 0; i < MM; i++)
    {
        passwordArray[i] = 0; // 将数组元素清零
    }
    my_delay_ms(1000);
    mode=7;
    flag7=1;
}




// /**
//   * @brief  This function is executed in case of error occurrence.
//   * @retval None
//   */
// void Error_Handler(void)
// {
//   /* USER CODE BEGIN Error_Handler_Debug */
//   /* User can add his own implementation to report the HAL error return state */
//   __disable_irq();
//   while (1)
//   {
//   }
//   /* USER CODE END Error_Handler_Debug */
// }

