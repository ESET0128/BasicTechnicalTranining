// Saurabh Kumar | ESET0128

// From right to left
// First lest is set high and then turned OFF after starting simulation.
// second LED is always ON.
// Third LED is keeps blinking.

#include <avr/io.h>
#include <util/delay.h>

#define led_pin PD4  //port D connected to 4
#define led_pin1 PD2  // port D connected to 2
#define led_pin2 PD7  // port D connected to 7
//#define button PD7 

// int main(void){
//     DDRD |= (1 << led_pin);
//     DDRD &= ~(1 << button);
//     PORTD |= (1 << button);
//     if (button == 1)
//     while(1)
//     {
//         if (!(PIND & (1<<button)))
//         {
//         PORTD |= (1<<led_pin);
//         _delay_ms(500);

//         PORTD &= ~(1<<led_pin);
//         _delay_ms(500);
//         }
//         else
//         {
//             PORTD &= ~(1<<led_pin);
//         }
//     }
    
// }

int main(void){
    DDRD |= (1 << led_pin);
    DDRD |= (1<<led_pin1);
    DDRD |= (1<<led_pin2);

    PORTD |= (1<<led_pin1);
    _delay_ms(500);
    PORTD |= ~(1<<led_pin1);
    PORTD &= (1<<led_pin);

    while(1)
    {
      
        // PORTD |= (1<<led_pin2);
        // _delay_ms(500);

        // PORTD &= ~(1<<led_pin2);
        // _delay_ms(500);
        PORTD ^= (1<<led_pin2);
        _delay_ms(500);
        PORTD ^= (1<<led_pin2);
        _delay_ms(500);
    }
    
}