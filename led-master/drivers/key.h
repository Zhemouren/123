#ifndef __OPENLOONGSON_KEY_H
#define __OPENLOONGSON_KEY_H

#define key_gpio1 85
#define key_gpio2 86

typedef enum 
{  
	KEY1 = 0,
	KEY2 = 1,
	KEYNULL = -1,
} Key_Def;

// 初始化KEY
// @key_gpio key所在gpio引脚
void key_init(unsigned int key_gpio);


// 获取按键值
Key_Def KEY_Scan(void);

/*按键中断*/
void key_irq_init(unsigned int key_gpio);

void ls1c_key1_irqhandler(int irq, void *param);
void ls1c_key2_irqhandler(int irq, void *param);

#endif

