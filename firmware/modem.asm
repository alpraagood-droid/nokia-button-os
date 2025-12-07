; lcd.asm - شاشة 96x65 بسيطة (stub)
section .text
global lcd_init, lcd_clear, lcd_draw_pixel

lcd_init:
    ; تهيئة واجهة الشاشة (SPI/I2C)
    ret

lcd_clear:
    ; مسح الذاكرة الخاصة بالشاشة
    ret

lcd_draw_pixel:
    ; مدخلات x,y,color
    ret
