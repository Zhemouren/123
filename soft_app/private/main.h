#include "stdio.h"

#include "calIn8M.h"
#include "Config.h"
// #include "ls1x_pmu.h"
#include "ls1x_clock.h"
#include "ls1x_common.h"
// #include "ls1x_uart.h"
// #include "ls1x_wdg.h"
#include "ls1x_string.h"
// #include "UserGpio.h"
// #include "ls1x_printf.h"
#include"ls1c102_ptimer.h"

#include "soc_ls1c102.h"
#include "hbirdv2_uart.h"
#include "soc_gpio.h"
#include "soc_pwm.h"
#include "soc_hpet.h"
#include "soc_uart.h"
#include "soc_printf.h"
#include "soc_i2c.h"
#include "my_delay.h"
#include "soc_spi.h"


/*   OLED屏界面显示函数  */
void interface_display(uint16_t value);

/*      写ID卡函数        */
void Write_ID();

/*      删除读取到的卡号，清空卡功能        */
void Delate_ID();
/*      读ID卡函数        */
void Read_ID();

/*      按键密码锁功能函数        */
void Key_main();

/*  输入管理员按键函数 */
void Key();

/*  添加密码函数 */
void Add_Key();
/*  清空密码库函数 */
void Delete_key();
