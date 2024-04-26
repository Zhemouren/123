#include "soc_printf.h"
#include "my_delay.h"

// ================================================================
// may be useful 
// #include "ls1x_uart.h"
// #include "Config.h"
// #include "ls1x_string.h"
// #include "ls1x.h"
// ================================================================

void soc_myputchar(unsigned char chr) {
	volatile char uart_fifo0_ctrl;
    uart_fifo0_ctrl = UART_FIFO_CTRL;
    while((uart_fifo0_ctrl & 0x02) == 0x02) {
        ;
    }
    UART_FIFO = chr;
}

int soc_puts(char *s) {
	char c;
	while((c=*s)) {
		if(c == '\n') soc_myputchar('\r');
		soc_myputchar(c);
		s++;
	}

	return 0;
}

int soc_printbase(long v,int w,int base,int sign)
{
    int i,j;
    int c;
    char buf[64];
    unsigned long value;
    if(sign && v<0) {
		value = -v;
		soc_myputchar('-');
    } else {
		value=v;
	}

    for(i=0;value;i++) {
		buf[i]=value%base;
		value=value/base;
    }
    for(j=max(w,i);j>0;j--)
    {
        c=j>i?0:buf[j-1];
        soc_myputchar((c<=9)?c+'0':c-0xa+'a');
    }
    return 0;
}

int soc_myprintf(char *fmt,...)
{
	int i;
	char c;
	void **arg;
	void *ap;
	int w;
	__builtin_va_start(ap,fmt);
	arg = ap;
	for(i = 0; fmt[i]; i++)
	{
		c=fmt[i];
		if(c=='%')
		{
			w=1;
again:
			switch(fmt[i+1])
			{
				case 's':
					soc_puts(*arg);
					arg++;
					i++;
					break;
				case 'c':
					soc_myputchar((long)*arg);
					arg++;
					i++;
					break;
				case 'u':
					soc_printbase((long)*arg,w,10,0);
					arg++;
					i++;
					break;
				case 'd':
					soc_printbase((long)*arg,w,10,1);
					arg++;
					i++;
					break;
				case 'o':
					soc_printbase((long)*arg,w,8,0);
					arg++;
					i++;
					break;
				case 'b':
					soc_printbase((long)*arg,w,2,0);
					arg++;
					i++;
					break;
				case 'p':
				case 'x':
					soc_printbase((long)*arg,w,16,0);
					arg++;
					i++;
					break;
				case '%':
					soc_myputchar('%');
					i++;
					break;
				case '0':
					i++;
					for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
						w=w*10+(fmt[i+1]-'0');
					goto again;
						break;
				case '1' ... '9':
					for(w=0;fmt[i+1]>'0' && fmt[i+1]<='9';i++)
						w=w*10+(fmt[i+1]-'0');
					goto again;
						break;

				default:
					soc_myputchar('%');
					break;
			}
		}
		else {
			if(c=='\n') soc_myputchar('\r');
			soc_myputchar(c);
		}

		// ================================================================
		// if the maximum storage quantity of FIFO is exceeded, there will be a delay
		if((i != 0) && (i % 15 == 0))
		{
			my_delay_ms(25);
		}
		// ================================================================

	}// for(i=0;fmt[i];i++)
    return 0;
}




