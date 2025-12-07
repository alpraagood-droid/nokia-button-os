; modem.asm - واجهة مودم 2G/3G (stub)
section .text
global modem_init, modem_call, modem_hangup, modem_send_sms

modem_init:
    ; تهيئة UART، APN، إلخ
    ret

modem_call:
    ; call number in r0
    ret

modem_hangup:
    ret

modem_send_sms:
    ; number in r0, message pointer in r1
    ret
