#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<fcntl.h>
#include<stdbool.h>
#define PS_LED_BASE		338
#define PS_LED_INDEX	40
#define PS_LED_ADDR		(PS_LED_BASE+PS_LED_INDEX)



void led_ctl_init(void)
{
int lGpioFd;
char lCache[100];
lGpioFd = open("/sys/class/gpio/export", O_WRONLY);
if(lGpioFd < 0)
{
printf("open export fail\n");
return;
}
int len = sprintf(lCache, "%d", PS_LED_ADDR);
write(lGpioFd, lCache, len+1);
close(lGpioFd);
sprintf(lCache, "/sys/class/gpio/gpio%d/direction", PS_LED_ADDR);
lGpioFd = open(lCache, O_RDWR);
if (lGpioFd < 0)
{
printf("open direction fail\n");
return;
}
write(lGpioFd, "out", 4);
close(lGpioFd);
}

void led_ctl_on(bool isON)
{
int lGpioFd;
char lCache[100];
sprintf(lCache, "/sys/class/gpio/gpio%d/value", PS_LED_ADDR);
lGpioFd = open(lCache, O_RDWR);
if (lGpioFd < 0)
{
printf("open value fail\n");
return;
}
if(isON)
{
write(lGpioFd, "1", 2);
}
else
{
write(lGpioFd, "0", 2);
}
close(lGpioFd);
}

int main()
{
led_ctl_init();
printf("================start led ctrl==============\n");

led_ctl_on(true);
printf("on\r\n");
usleep(500000);
led_ctl_on(false);
printf("off\r\n");
usleep(500000);

return 0;
}