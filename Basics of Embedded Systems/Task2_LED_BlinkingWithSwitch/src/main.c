// Saurabh Kumar    |   ESET0128

// Single LED blinking with switch control
#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4
#define BUTTON PD2

int main(void){
    DDRD |= (1<<PD4); 
    DDRD &= ~(1<<BUTTON);
    PORTD |=(1<<BUTTON);

    while(1){

        if(!(PIND &(1<<BUTTON))){
            PORTD |= (1 << LED_PIN);
            _delay_ms(500);
            PORTD &= ~(1 << LED_PIN);
            _delay_ms(500);
        }
        else{
            PORTD &= ~(1 << LED_PIN);
            _delay_ms(500);
        }
        
    }
}





