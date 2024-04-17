#include "soc_hpet.h"
#include "soc_ls1c102.h"

void timer_interrupt() {
    // 定时器配置、中断配置如下
    g_timer->cfg = 0;                    // 定时器配置复位
    g_timer->cnt = 0;                    // 定时器计数值清空

    g_timer->cmp = 16000000;             // 首次进入定时器中断的计数次数为 16M ，如果时钟为 8M ，那么大约是 2s ，时间没问题。
    // g_timer->step = 8000000;
	g_timer->step = 8000000;

    g_timer->cfg = 0x07;                 // 开启周期触发，中断使能，开始计数
    intc->en |= 0x01;                    // 开启定时器全局中断
}


