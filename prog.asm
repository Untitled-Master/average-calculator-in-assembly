%include"asm_io.asm"

segment .bss
section .data
	msg1 db " _______  __   __  _______  ______    _______  _______  _______ ", 0
	msg2 db "|   _   ||  | |  ||       ||    _ |  |   _   ||       ||       |", 0
	msg3 db "|  |_|  ||  |_|  ||    ___||   | ||  |  |_|  ||    ___||    ___|", 0
	msg4 db "|       ||       ||   |___ |   |_||_ |       ||   | __ |   |___ ", 0
	msg5 db "|       ||       ||    ___||    __  ||       ||   ||  ||    ___|", 0
	msg6 db "|   _   | |     | |   |___ |   |  | ||   _   ||   |_| ||   |___ ", 0
	msg7 db "|__| |__|  |___|  |_______||___|  |_||__| |__||_______||_______|", 0

	msg8 db"====================================================================", 0
	msg9 db"|  HOW TO USE                                                      |", 0
	msg10 db"|  multiplay your mark by 100, if your mark is 18, type it as 1800 |", 0
	msg11 db"|  When reading                                                    |", 0
	msg12 db"|  read the first two digits from left as the interger part and the|", 0
	msg13 db"|  rest as the fractional part                                     |", 0

    ana db "ANA 2: ", 0
    anatd db "ANA 2 (TD): ", 0
    anac db "Enter coff: ", 0

    asdd db "ASDD: ", 0
    asddtd db "ASDD (TD):", 0

    elef db "ELEF 1: ", 0
    eleftd db "ELEF 1 (TD):", 0

    os db "OS 2: ", 0
    ostd db "OS 2 (TD): ", 0

    meca db "MECA: ", 0
    mecatd db "MECA (TD): ", 0

    alg db "ALG 2: ", 0
    algtd db "ALG 2 (TD): ", 0

    anglais db "ANGLAIS 1: ", 0
    anglaistd db "ANGLAIS 1 (TD): ", 0

    teo db "TEO: ", 0
    teotd db "TEO (TD):", 0


segment .text

global main
	main:

MOV EAX, msg1
CALL print_string
CALL print_nl

MOV EAX, msg2
CALL print_string
CALL print_nl

MOV EAX, msg3
CALL print_string
CALL print_nl

MOV EAX, msg4
CALL print_string
CALL print_nl

MOV EAX, msg5
CALL print_string
CALL print_nl

MOV EAX, msg6
CALL print_string
CALL print_nl

MOV EAX, msg7
CALL print_string
CALL print_nl

MOV EAX, msg8
CALL print_string
CALL print_nl

MOV EAX, msg9
CALL print_string
CALL print_nl

MOV EAX, msg10
CALL print_string
CALL print_nl

MOV EAX, msg11
CALL print_string
CALL print_nl

MOV EAX, msg12
CALL print_string
CALL print_nl

MOV EAX, msg13
CALL print_string
CALL print_nl

MOV EAX, msg8
CALL print_string
CALL print_nl

MOV EAX, anatd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, ana
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

MOV ECX, 0
ADD ECX, EAX

MOV EAX, asddtd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, asdd
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX


MOV EAX, eleftd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, elef
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX

MOV EAX, ostd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, os
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX

MOV EAX, mecatd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, meca
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX

MOV EAX, algtd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, alg
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX

MOV EAX, anglaistd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, anglais
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX

MOV EAX, teotd
CALL print_string
CALL print_nl
CALL read_int
MOV EBX, EAX

MOV EAX, teo
CALL print_string
CALL print_nl
CALL read_int

ADD EAX, EAX
ADD EAX, EBX

MOV EDX, 0
MOV EDI, 3
DIV EDI
MOV EDI, EAX
CALL print_int
CALL print_nl

MOV EAX, anac
CALL print_string
CALL print_nl
CALL read_int

MUL EDI
CALL print_int
CALL print_nl

ADD ECX, EAX
MOV EBX, 26
MOV EAX, ECX
DIV EBX
CALL print_int
CALL print_nl

MOV EAX, 1
MOV EBX, 0
INT 0x80
