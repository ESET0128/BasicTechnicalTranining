// Saurabh Kumar    |   ESET0128

// Printing "Hello World" in LCD using Arduino Microcontroller.
#include <avr/io.h>
#include <Arduino.h>
#include <util/delay.h>

#define LCD_PIN7 PD7  
#define LCD_PIN6 PB0  
#define LCD_PIN5 PB1
#define LCD_PIN4 PB2  
#define ENABLE PB3
#define DATA_RS PB4

void lcd_pulse()
{
    PORTB |= (1 << ENABLE);
    _delay_ms(200);
    PORTB &= ~(1 << ENABLE);
    _delay_ms(200);
}

void lcd_command(unsigned char cmd)
{
    PORTB &= ~(1<<DATA_RS);

 // Send high nibble
    if (cmd & 0x20) PORTB |= (1<<LCD_PIN5); else PORTB &= ~(1<<LCD_PIN5);
    if (cmd & 0x40) PORTB |= (1<<LCD_PIN6); else PORTB &= ~(1<<LCD_PIN6);
    if (cmd & 0x10) PORTB |= (1<<LCD_PIN4); else PORTB &= ~(1<<LCD_PIN4);
    if (cmd & 0x80) PORTD |= (1<<LCD_PIN7); else PORTD &= ~(1<<LCD_PIN7);
    lcd_pulse();

    // Send low nibble
    if (cmd & 0x01) PORTB |= (1<<LCD_PIN4); else PORTB &= ~(1<<LCD_PIN4);
    if (cmd & 0x02) PORTB |= (1<<LCD_PIN5); else PORTB &= ~(1<<LCD_PIN5);
    if (cmd & 0x04) PORTB |= (1<<LCD_PIN6); else PORTB &= ~(1<<LCD_PIN6);
    if (cmd & 0x08) PORTD |= (1<<LCD_PIN7); else PORTD &= ~(1<<LCD_PIN7);
    lcd_pulse();
}

void lcd_data(unsigned char data) 
{
    PORTB |= (1<<DATA_RS); // RS=1 for data

    // Send high nibble
    if (data & 0x10) PORTB |= (1<<LCD_PIN4); else PORTB &= ~(1<<LCD_PIN4);
    if (data & 0x20) PORTB |= (1<<LCD_PIN5); else PORTB &= ~(1<<LCD_PIN5);
    if (data & 0x40) PORTB |= (1<<LCD_PIN6); else PORTB &= ~(1<<LCD_PIN6);
    if (data & 0x80) PORTD |= (1<<LCD_PIN7); else PORTD &= ~(1<<LCD_PIN7);
    lcd_pulse();

    // Send low nibble
    if (data & 0x01) PORTB |= (1<<LCD_PIN4); else PORTB &= ~(1<<LCD_PIN4);
    if (data & 0x02) PORTB |= (1<<LCD_PIN5); else PORTB &= ~(1<<LCD_PIN5);
    if (data & 0x04) PORTB |= (1<<LCD_PIN6); else PORTB &= ~(1<<LCD_PIN6);
    if (data & 0x08) PORTD |= (1<<LCD_PIN7); else PORTD &= ~(1<<LCD_PIN7);
    lcd_pulse();
}

void lcd_init()
{
    _delay_ms(20);     // wait for LCD power ON
    lcd_command(0x02);  // 4-bit mode
    lcd_command(0x28);  // 2 line, 5X7 matrix
    lcd_command(0x0C);  // Display ON, cursor OFF
    lcd_command(0x06);  // Increment cursor
    lcd_command(0x01);  // clear screen
    _delay_ms(2);      
}

void lcd_string(const char *str) {
    while (*str) {
        lcd_data(*str++);
    }
}

int main(void) {
    DDRB = 0xFF;    // Port B as output (RS, EN, D4-D6)
    DDRD |= (1<<LCD_PIN7); // PD7 as output for D7

    lcd_init();

    lcd_command(0x80);              // First line, first position
    lcd_string("Hello, World!");

    lcd_command(0xC0);              // Second line
    lcd_string("LCD Working :)");

    while (1) {
        // Loop forever
    }
}