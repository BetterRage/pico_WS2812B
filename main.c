#include "pico/stdlib.h"
#include <stdio.h>
#include "WS2812B.h"

uint32_t colours[8]={
    WS2812B_24bit(255,0,0),
    WS2812B_24bit(255,0,0),
    WS2812B_24bit(0,0,255),
    WS2812B_24bit(0,0,255),
    WS2812B_24bit(0,255,0),
    WS2812B_24bit(0,255,0),
    WS2812B_24bit(255,0,0),
    WS2812B_24bit(255,0,0)};

int main() 
{

    stdio_init_all();
    gpio_init(WS2812B_pin);
    gpio_set_dir(WS2812B_pin, GPIO_OUT);
    set_sys_clock_khz(125000,true);
    sleep_ms(200);
    while(true)
    {
        WS2812B_reset();
        WS2812B_sendArray(colours,8);
        WS2812B_reset();
        sleep_ms(2500);   
        WS2812B_fillColour(WS2812B_24bit(0,0,0));
        WS2812B_reset();
        sleep_ms(300);      
    }
    
}


