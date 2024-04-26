#ifndef __OPENLOONGSON_PS2_H
#define __OPENLOONGSON_PS2_H

/*****************PS2指令*****************/
// #define READY			0x5A

#define SELECT                          0XFE
#define START                           0XF7
#define UP                              0XEF
#define DOWN                            0XBF
#define LEFT                            0X7F
#define RIGHT                           0XDF
//第五帧
#define L1                              0XFB
#define L2                              0XFE
#define R1                              0XF7
#define R2                              0XFD
#define SANJIAO                         0XEF
#define CHA                             0XBF
#define FANGKUAI                        0X7F
#define YUAN                            0XDF

#define PSB_SELECT      1
#define PSB_L3          2
#define PSB_R3          3
#define PSB_START       4
#define PSB_PAD_UP      5
#define PSB_PAD_RIGHT   6
#define PSB_PAD_DOWN    7
#define PSB_PAD_LEFT    8
#define PSB_L2          9
#define PSB_R2          10
#define PSB_L1          11
#define PSB_R1          12
#define PSB_GREEN       13
#define PSB_RED         14
#define PSB_BLUE        15
#define PSB_PINK        16
#define PSB_TRIANGLE    13
#define PSB_CIRCLE      14
#define PSB_CROSS       15
#define PSB_SQUARE      16
/******************************************/
/* 左右遥感X、Y轴数据 */
#define PSS_RX 5
#define PSS_RY 6
#define PSS_LX 7
#define PSS_LY 8

/* PS2引脚 */
#define DATA_GPIO		54
#define CMD_GPIO		55
#define ATT_GPIO		56
#define CLK_GPIO		57

#define CMD_HIGH	rt_pin_write(CMD_GPIO, PIN_HIGH)
#define CMD_LOW		rt_pin_write(CMD_GPIO, PIN_LOW)

#define ATT_HIGH	rt_pin_write(ATT_GPIO, PIN_HIGH)
#define ATT_LOW		rt_pin_write(ATT_GPIO, PIN_LOW)

#define CLK_HIGH	rt_pin_write(CLK_GPIO, PIN_HIGH)
#define CLK_LOW		rt_pin_write(CLK_GPIO, PIN_LOW)

#define DATA_READ	rt_pin_read(DATA_GPIO)


#define START_CMD			0x01
#define ASK_DAT_CMD			0x42
#define PS2_LED_RED			0x73

void PS2_GPIO_Init(void);
int PS2_DataKey(void);
int PS2_RedLight(void);
void ReadWriteControl(void);
int PS2_AnologData(int button);
void PS2_ClearData(void);
#endif












