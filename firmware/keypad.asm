; keypad.asm - simple keypad read stub (pseudo-ASM for your platform)
; يجب تعديل العناوين لتناسب الهاردوير الحقيقي

section .text
global keypad_init, keypad_read

keypad_init:
    ; تهيئة IO pins الخاصة بالكيباد
    ; مثال: كتابة قيمة للـ registers
    ret

keypad_read:
    ; ترجع رقم الزر المضغوط في r0 (0 = لا زر)
    mov r0, #0
    ; قراءة من منفذ 0xC000
    ldr r1, =0xC000
    ldrb r2, [r1]
    cmp r2, #0xFF
    beq no_key
    ; افترض أن كل بت يمثل زر
    ; هنا تحوّل البِت لرقم زر (بسيط)
    mov r0, r2
no_key:
    bx lr
