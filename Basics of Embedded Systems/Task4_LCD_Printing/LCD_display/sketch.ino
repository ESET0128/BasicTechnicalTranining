#include <avr/io.h>
#include <util/delay.h>

#define led_pin PD4  //port D connected to 4


int main(void) {
  // put your main code here, to run repeatedly:
    DDRD |= (1 << led_pin);

    while(1)
    {
        PORTD |= (1<<led_pin);
        _delay_ms(500);

        PORTD &= ~(1<<led_pin);
        _delay_ms(500);
    }


}
