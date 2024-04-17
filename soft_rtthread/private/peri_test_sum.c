// unsigned int nmi_caller;
#include "peri_test_sum.h"
// F:\GOWIN\Project\loongxin2\soft\private\peri_test_sum.c
static struct cmd_struct {
	const char *cmdname;
	int (*func)(int, void *[]);
	const char *usage;
	const char *expression;
} cmd[] __attribute__((section(".rodata"))) =  {
  {"exit",      do_exit,     "[exit]",                  ""},
  {"d1",        do_d1,       "[d1 <addr> <num>]",     "--dump address byte"},
  {"d4",        do_d4,       "[d4 <addr> <num>]",     "--dump address word"},
  {"help",      do_help,     "[help <command>]",      "--cmd list"},
  {"m1",        do_m1,       "[m1 <addr> <value>]",   "--modify address byte"},
  {"m4",        do_m4,       "[m4 <addr> <value>]",   "--modify address word"},
  {"v",         v_play,      "[v]",                   "--v1"},
  {"touch",     touch_test,  "[touch]",               "--v1"},
  {"hpet",      hpet,        "[timer test]",          "--v1"},
  {"latimer",   latimer,     "[core timer test]",     "--v1"},
  {"delay",     delay,       "[delay test]",          "--v1"},
  {"wakeup",    wakeup,      "[wakeup test]",         "--v1"},
  {"date",      date,        "[rtc test]",            "--v1"},
  {"wdg",       watch_dog,   "[wdg test]",            "--v1"},
  {"i2cp",      i2cp,        "[i2cp <prescale>]",     "--i2c prescale"},
  {"i2cw",      i2cw,        "[i2cw <chipaddr> <regaddr> <wdata>]",  "--i2c write"},
  {"i2cr",      i2cr,        "[i2cr <chipaddr> <regaddr>]",          "--i2c read"},
  {"adc",       adc,         "[adc]",                 "--adc"},
  {"batdet",    batdet,      "[batdet <n>]",          "--v1"},
  {"copy",      copy,        "[spi_flash=>in_flash]", "--v1"},
  {"copy_iram", copy_iram,   "[copy]",                "--batdet <n>"},
  {"uinit",     uart_init,   "[uart init]",           "--v1"},
  {"spinit",    spi_init,    "[spi_init]",            "--v1"},
  {"sperase",   spi_erase,   "[spi_erase]",           "--v1"},
  {"spwr",      spi_write,   "[spi_write]",           "--v1"},
  {"sprd",      spi_read,    "[spi_read]",            "--v1"},
  {"sflash",    spi_flash,   "[spi_flash]",           "--v1"},
  {"gpio_int",  gpio_int,    "[exti]",                "--v1"},
  {"t",         tmp,         "[exti]",                "--v1"},
//add
  {"NULL",      do_nothing,  "[NULL]",                "NULL"}
};

int do_exit(int argc, void *argv[])
{
}

int do_help(int argc, void *argv[])
{
	unsigned int i;
	char *s;
	switch(argc)
	{
		case 1:
			{
				printf("\ncommands:\n\n");
				for(i=0;strcmp("NULL", cmd[i].cmdname)!=0; i++)
				{
					printf("\t %2d:%s\n\r",i+1, cmd[i].cmdname);
				}
			}
			break;
		case 2:
			{
				s = (char *)argv[1];
				for(i=0; strcmp("NULL", cmd[i].cmdname)!=0; i++)
				{
					if(strcmp(s, cmd[i].cmdname)==0)
					{
						printf("\n\t%s\t%s\t%s\n", cmd[i].cmdname, cmd[i].usage, cmd[i].expression);
						break;
					}
				}
				if(strcmp("NULL", cmd[i].cmdname)==0)
				{
					printf("\n\tERROR: undefine command!!!\n");
				}
			}
			break;
		default:
			printf("\n usage: help  <cmd>\n\r");
			break;
	}
	return 0;
}

int cmdline(void)
{
	char c;
	char cmdbuffer[80];
	char cmdpara[8][30];
	int (*op)(int argc, void *argv[]);
	char *p[8];
	char *cmdptr;
	short cp, i, j, k, num;
	short h = 0;  			
	int tmp = 11;
	char history_str[13][80];
	for(j=0;j<13;j++) 
	{
		for(i=0; i<80; i++)
		{
			history_str[j][i] = '\0';
		}
	}

	while(1)
	{
START:
		for(i=0; i<80; i++)
		{
			cmdbuffer[i] = '\0';
		}
		printf("\n$ ");
		cmdptr = cmdpara[0];
		cp = 0; 
		while(1)
		{
			c = getchar();
			if((c>0x1f)&&(c<0x7f))
			{
				if(h > 0)
				{
					for(i=0; i<h ; i++)
					{
						cmdbuffer[cp-i] = cmdbuffer[cp-i-1];
					}
					cmdbuffer[cp-h] = c;
					cp++;
					for(i=h; i>=0; i--)
					{
						putchar(cmdbuffer[cp-i]);
					}
					for(i=0; i<cp-1; i++)
					{
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
					for(i=0; cmdbuffer[i]; i++)
					{
						putchar(cmdbuffer[i]);
					}
					for(i=h; i>0; i--)
					{
						putchar(0x08);
					}
				}
				else
				{
					cmdbuffer[cp++] = c;
					putchar(c);
				}
			}
			else if(c == 0x8)
			{
				if((h != 0) && (cp-h > 0))
				{
					for(i=h; i>=0; i--)
					{
						putchar(cmdbuffer[cp-i]);
					}
					for(i=0; i<cp; i++)
					{
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
					for(i=h; i>0 ; i--)
					{
						cmdbuffer[cp-i-1] = cmdbuffer[cp-i];
					}
					cmdbuffer[--cp] = '\0'; 
					for(i=0; cmdbuffer[i]; i++)
					{
						putchar(cmdbuffer[i]);
					}
					for(i=h; i>0; i--) 
					{
						putchar(0x08);
					}
				}
				else
				{
					if((cp != 0) && (h == 0))
					{
						cmdbuffer[--cp] = '\0';
						putchar(0x8);
						putchar(0x20);
						putchar(0x8);
					}
				}
			}
			else if((c==0xa) || (c==0xd))
			{
				if(cmdbuffer[0] == '\0')
				{
					 goto START;
				}
				h = 0;
				tmp = 11;
				for(j=0;cmdbuffer[j];j++)
				{
					history_str[11][j] = cmdbuffer[j];
				}
				break;
			}

/****************************************************************************/


			else if(c==0x1b)
			{
				c = getchar();
				if(c==0x5b)
				{
					c = getchar();
					switch(c)
					{
						case 0x44:
									if(h < cp)
									{
										putchar(0x8);
										h++;
									}
									else
										h = cp;
									break;
						case 0x41: 
									if(tmp>=1)
									{
										if(tmp==1)
										{
											tmp = 1;
											break;
										}
										else
											tmp--;
										for(; h != 0; h--)
										{
											putchar(cmdbuffer[cp-h]);
										}
										if((cmdbuffer[0] != 0)||(cp == 0))
										{
											for(i=0;cmdbuffer[i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
												cmdbuffer[i] = '\0';
											}
										}
										else
										{
											for(i=0;history_str[tmp+1][i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
											}
										}
										for(j=0;history_str[tmp][j];j++)
										{
											cmdbuffer[j] = history_str[tmp][j];
											putchar(cmdbuffer[j]);
										}
									}
									cp = j;
									break;
						case 0x43:		
									if(h > 0)
									{
										putchar(cmdbuffer[cp-h]);
										h--;
									}
									else
										h = 0;
									break;
						case 0x42:                      
									if(tmp <= 11)  
									{
										if(tmp == 11)
										{
											tmp = 11;
											break;
										}
										else
											tmp++;
										for(; h != 0; h--)
										{
											putchar(cmdbuffer[cp-h]);
										}
										if((cmdbuffer[0] != 0)||(cp == 0))
										{
											for(i=0;cmdbuffer[i];i++)
											{
													putchar(0x8);
													putchar(0x20);
													putchar(0x8);
													cmdbuffer[i] = '\0';
											}
										}
										else
										{
											for(i=0;history_str[tmp-1][i];i++)
											{
												putchar(0x8);
												putchar(0x20);
												putchar(0x8);
											}
										}
										for(j=0;history_str[tmp][j];j++)
										{
											cmdbuffer[j] = history_str[tmp][j];
											putchar(cmdbuffer[j]);
										}
									}
									cp = j;
									break;
						default :
									break;
					}
				}
				c = 0;
			}

/***********************************************************************/
		}
/***********************************************************************/
		if(tmp == 11)
		{
			for(j=1;j<12;j++) 
			{
				for(i=0;i<30;i++)
					history_str[j][i]=history_str[j+1][i];
			}
			for(i=0; i<30; i++) 
			{
				history_str[11][i] = '\0';
			}
		}

/***********************************************************************/
		if(cp == 0)
		{
			goto START;
		}
		else
		{
			for(i=0; i<8; i++)
				for(j=0; j<30; j++)
					cmdpara[i][j] = '\0';
			num = 0;  //argc
//			printf("\ncmd:%s\n", cmdbuffer);

			for(j = 0,i=0; i<cp; i++) //xpj
			{
				if(cmdbuffer[i] == 0x20)  //space
				{
					if((cmdbuffer[i+1] != 0x20) && ((cmdbuffer[i+1] != '\0'))) 
					{
						j = 0;
						num++;
						cmdptr = cmdpara[num];
					}
				}
				else
				{
					*(cmdptr + j) = cmdbuffer[i];
					j++;
				}
			}

			cmdptr = cmdpara[0];
			if(strcmp(cmdptr, cmd[0].cmdname)==0)
			{
				break;
			}
			else
			{
				for(k=1; strcmp("NULL", cmd[k].cmdname)!=0; k++)
				{
					if(strcmp(cmdptr, cmd[k].cmdname)==0)
					{
						op = cmd[k].func;
						for(j=0; j<=num; j++)
						{
							p[j] = (char *)(cmdpara[j]);
//							printf("cmdpara[%d]: %s\n", j, cmdpara[j]);
						}
						op(j, (void *)p);
						break;
					}
				}
				if(strcmp("NULL", cmd[k].cmdname)==0)
				{
					printf("\n\tERROR: undefine command!!!\n");
				}
			}
		}
	}
	return 0;
}



// =====================     GPIO   ===============================

volatile int num = 0; 

int GPIO_test(void) {

    EnableInt();// 开总中断

	gpio_init(1, 1);
    gpio_init(13, 1);
    gpio_init(18, 1);
    gpio_init(19, 1);
    gpio_init(20, 1);
    gpio_init(34, 1);
    gpio_init(35, 1);
    gpio_init(36, 1);
    gpio_init(37, 1);
    gpio_init(38, 1);
    gpio_init(39, 1);
    gpio_init(40, 1);
    my_delay_ms(1000);

    while(1){
        gpio_write(1, 1);
        gpio_write(13, 1);
        gpio_write(18, 1);
        gpio_write(19, 1);
        gpio_write(20, 1);
        gpio_write(34, 1);
        gpio_write(35, 1);
        gpio_write(36, 1);
        gpio_write(37, 1);
        gpio_write(38, 1);
        gpio_write(39, 1);
        gpio_write(40, 1);
        my_delay_ms(1000);
        
        gpio_write(1, 0);
        gpio_write(13, 0);
        gpio_write(18, 0);
        gpio_write(19, 0);
        gpio_write(20, 0);
        gpio_write(34, 0);
        gpio_write(35, 0);
        gpio_write(36, 0);
        gpio_write(37, 0);
        gpio_write(38, 0);
        gpio_write(39, 0);
        gpio_write(40, 0);
        my_delay_ms(1000);
    }

    return 0;
}


// ====================			PWM motor		==============================
int PWM_motor_test(void) {

    EnableInt();// 开总中断

	gpio_init(1, 1);

	gpio_write(1, 1);
	my_delay_ms(1000);
	gpio_write(1, 0);
	my_delay_ms(1000);

	pwm_init();
    int div_freq = 500;
    int comp = 0;
	
    while(1) {
        if(comp > 500) {
            comp = 0;
        } else {
            comp += 10;
        }
        pwm_set(div_freq, comp);
        my_delay_ms(200);
    }

    return 0;
}



// =====================		PWM_servo	==============================
int PWM_servo_test(void) {

    EnableInt();// 开总中断

	gpio_init(1, 1);

	pwm_steering_engine_init();
	pwm_steering_engine_set(45);
	my_delay_ms(1000);
	pwm_steering_engine_set(90);
	my_delay_ms(1000);
	pwm_steering_engine_set(135);
	my_delay_ms(1000);
	pwm_steering_engine_set(180);
	my_delay_ms(1000);
	pwm_steering_engine_set(45);
	my_delay_ms(1000);
	pwm_steering_engine_set(90);
	my_delay_ms(1000);
	pwm_steering_engine_set(135);
	my_delay_ms(1000);
	pwm_steering_engine_set(180);
	my_delay_ms(1000);
	
    while(1) {
		gpio_write(1, 1);
        my_delay_ms(2000);
		
		gpio_write(1, 0);
        my_delay_ms(2000);
    }

    return 0;
}


// =======================		apb		=================================
int apb_test(void) {

    EnableInt();// 开总中断

	volatile int *p = (volatile int *)0xbfeb0000;
	
	*p |= (0x01);

	my_delay_ms(1000);

	*p &= ~(0x01<<1);

    while(1) {
		*p |= (0x01);
		
		my_delay_ms(3000);
		
		*p &= ~(0x01);

		my_delay_ms(3000);
    }

    return 0;
}


// ===========================	 	hpet		============================
int hpet_test(void) {

    EnableInt();// 开总中断

    gpio_init(1, 1);
    gpio_init(13, 1);
    gpio_init(18, 1);
    gpio_init(19, 1);
    gpio_init(20, 1);

    gpio_write(20, 1);
    my_delay_ms(1000);
    gpio_write(20, 0);
    my_delay_ms(1000);

    gpio_write(1, 1);
    my_delay_ms(1000);
    gpio_write(1, 0);
    my_delay_ms(1000);
	
    my_delay_ms(100);
    timer_interrupt();

    while(1) {
		gpio_write(1, 1);
		my_delay_ms(1000);
		
		gpio_write(1, 0);
		my_delay_ms(1000);
    }

    return 0;
}


// ======================	 	uart			===================================
int uart_test(void) {

    EnableInt();// 开总中断

	UART_FIFO_CTRL = 0x05;// baud_rate = 19200, enable parity check
    my_delay_ms(2000);// delay 2000ms at least after modifying UART_FIFO_CTRL. delay 1000ms is false.
    
    soc_printf("\r\n");
    my_delay_ms(25);
    
    uint8_t *str0 = "ABCD";
    soc_printf("str0 = %s\r\n", str0);
	my_delay_ms(25);// delay 25ms at least between two soc_printf.
    soc_printf("str0 = %s over 16 char\r\n", str0);// sending more than 16 characters at once will get stuck
    my_delay_ms(25);
    
	/*
    uint8_t buf0[4] = {"ABCD"};
    soc_printf("strlen = %d\r\n", sizeof(buf0));
    my_delay_ms(25);
    // soc_printf("buf0 = %s\r\n", buf0);// there is an error with printing the character array
    // my_delay_ms(25);
    
    for(volatile int i = 0; i < 4; i++)
    {
        soc_printf("buf0 = %c\r\n", buf0[i]);
        my_delay_ms(25);
    }

    uint8_t buf1[4];
    memset(buf1, 0x1, 4);
    for(volatile int i = 0; i < 4; i++)
    {
        soc_printf("buf1 = %d\r\n", buf1[i]);
        my_delay_ms(25);
    }
	*/

    uint8_t buf0[4] = "ABCD";
    soc_printf("len = %d\r\n", sizeof(buf0));
	my_delay_ms(25);

	volatile int num = 8;
    soc_printf("num = %d\r\n", num);
    my_delay_ms(25);

	gpio_init(1, 1);
	gpio_init(20, 1);
	uart1_interrupt();

    while(1) {
        my_delay_ms(1000);
		gpio_write(1, 1);
		my_delay_ms(1000);
		gpio_write(1, 0);
    }

    return 0;
}


// ======================		I2C		==================================
int I2C_test(void) {

    EnableInt();// 开总中断

	gpio_init(1, 1);
	gpio_init(13, 1);
	gpio_init(18, 1);

    I2C_InitTypeDef I2C_InitStruct0;
    soc_I2C_StructInit(&I2C_InitStruct0);
    soc_I2C_Init(&I2C_InitStruct0);

    uint16_t u16Addr0 = 0x0;
    uint8_t u8Data_t = 0xA5;
    uint8_t u8Data_r = 0x0;

    AT24CXX_WriteByte(u16Addr0, u8Data_t);
    my_delay_ms(10);
    u8Data_r = AT24CXX_ReadByte(u16Addr0);
    
    if(u8Data_r == 0xA5)
    {
        gpio_write(18, 1);
        my_delay_ms(1000);
        gpio_write(18, 0);
        my_delay_ms(1000);
    }
    
    u16Addr0 = 0x01;
    u8Data_t = 0xAA;
    u8Data_r = 0x0;

    AT24CXX_WriteByte(u16Addr0, u8Data_t);
    my_delay_ms(10);
    /*
        Calling the write program(whether it is single byte write or page write)requires a delay of 10ms before
    operating the device, otherwise the device will not respond to commands during this period;
    */
    u8Data_r = AT24CXX_ReadByte(u16Addr0);
    
    if(u8Data_r == 0xAA)
    {
        gpio_write(18, 1);
        my_delay_ms(1000);
        gpio_write(18, 0);
        my_delay_ms(1000);
    }

    while(1) {
        my_delay_ms(1000);
		gpio_write(1, 1);
		
		my_delay_ms(1000);
		gpio_write(1, 0);
    }

    return 0;
}


// ==================		SPI			======================================
int SPI_test(void) {

    EnableInt();// 开总中断

	gpio_init(1, 1);
	gpio_init(13, 1);
	gpio_init(18, 1);
	
    soc_Spi_Init(SPI_DIV_2);

    uint16_t id = 0;
	id = W25QXX_ReadID();
    if (id == W25Q128)
    {
        gpio_write(13, 1);
        my_delay_ms(1000);

        gpio_write(13, 0);
        my_delay_ms(1000);
    }
    else if(id == 0X17EF)
    {
        gpio_write(18, 1);
        my_delay_ms(1000);

        gpio_write(18, 0);
        my_delay_ms(1000);
    }

    while(1) {
        my_delay_ms(1000);
		gpio_write(1, 1);

		my_delay_ms(1000);
		gpio_write(1, 0);
    }

    return 0;
}
