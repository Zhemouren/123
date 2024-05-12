#include "key.h"
// #include "main.h"
#include "my_delay.h"
/**

 * 引脚连接  A11 A12 A15 B3 B4 B5 B6 B7 
 *           C4  C3  C2  C1 R1 R2 R3 R4      引脚向左。依次向下
 */
 
 /**
  * @brief  矩阵键盘读取按键键码
  * @param  无  
  * @retval KeyNumber 按下按键的键码值
			如果按键按下不放，程序会停留在此函数，松手的一瞬间，返回按键键码，没有按键按下时，返回0
  *注意消抖的时候的延时，所以不要按太快
  */
/*           函数声明区域          */

void clkey()
{//将所有行置一
  gpio_write(34,GPIO_PIN_SET);//选中C4行置1
  gpio_write(20,GPIO_PIN_SET);//选中C3行置1
  gpio_write(19,GPIO_PIN_SET);//选中C2行置1
  gpio_write(18,GPIO_PIN_SET);//选中C1行置1
}
uint8_t MatrixKey()
{
//      uint8_t KeyNumber=0;
      clkey();//将所有行置一
      my_delay_ms(20);
      gpio_write(34,GPIO_PIN_RESET);//选中C4行
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 1;}//R1
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 5;}//R2
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 9;}//R3
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 13;}//R4
         
      clkey();
      gpio_write(20,GPIO_PIN_RESET);//选中C3行
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 2;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 6;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 10;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 14;}
      
      clkey();
      gpio_write(19,GPIO_PIN_RESET);//选中C2行
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 3;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 7;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 11;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 15;}
      
      clkey();
      gpio_write(18,GPIO_PIN_RESET);//选中C1行
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 4;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 8;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 12;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 16;}
    
      return 0;
}
