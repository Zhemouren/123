
// #include "string.h"
// #include "stdio.h"

/* USER CODE BEGIN PFP */
// uint8_t static_late=1;
// #define MM   5             //表示密码库容量
// extern  passwordArray[MM] = {2103, 2103,2103,2103,2103};//用于储存密码   2103是初始密码
// extern  IDArray[MM] = {120, 0, 0, 0,0};//用于储存卡号  
// extern  Password,Count;
// extern uint8_t mode = 1;//运行界面
// extern uint8_t KeyNum=0;//定义一个变量用于储存键盘键码面的标志位
// extern uint8_t flag1=1,flag2=0,flag3=0,flag4=0,flag5=0,flag6=0,flag7=0,flag8=0,flag9=0;
// extern uint8_t flag10=0,flag11=0,flag12=0,flag13=0,flag14=0,flag15=0,flag16=0,flag17=0,flag18=0,flag19=0,flag20=0;	        //进入界面的标志位
// extern gImage_cc[356];

//periph
int GPIO_test(void);
void PWM_motor_test(void);
int PWM_servo_test(void) ;
int apb_test(void);
int hpet_test(void) ;
void uart_test(void);

int I2C_test(void);
int SPI_test(void) ;

void Init_main(void);
// void SystemClock_Config(void);



void my_GPIO_Init();//初始化屏幕
void my_I2C_Init();//用于oled屏幕
void my_PWM_Init();//用于舵机/电机
void my_SPI_Init();//用于读卡器
void my_USART1_Init();//用于普通串口，1=波特率115200
void my_USART0_Init();//用于指纹模块，波特率57600，需要更改硬件模块
void interrupt_fun();//开启各项中断函数
