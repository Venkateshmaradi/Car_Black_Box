subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 268 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 380 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 492 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 705 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 817 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 929 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1041 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1142 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1366 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1579 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1691 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2128 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2240 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2352 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2453 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2565 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2677 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2789 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2890 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3002 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3114 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3226 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3327 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3663 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3988 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4487 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4549 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4765 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5433 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6108 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6220 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6332 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6462 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6524 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6586 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6648 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6710 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6772 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6834 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6958 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7052 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7135 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7406 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7518 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7741 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7853 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7983 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8045 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8107 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8231 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8293 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8479 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8656 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8927 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9039 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9271 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9383 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9513 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9699 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9885 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10009 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10457 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10569 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10689 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10801 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10913 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11043 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11105 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11167 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11353 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11415 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11477 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11539 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11633 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11716 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12573 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12635 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12759 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12883 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12945 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13255 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13526 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13638 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14115 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14186 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14505 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14567 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14629 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14723 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14806 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14918 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15019 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15243 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15355 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15456 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15568 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15680 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15792 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15893 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16005 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16229 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16330 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16442 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16554 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16666 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16767 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16879 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17103 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17204 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17316 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17428 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17540 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17632 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18060 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18507 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18599 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18823 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18901 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19087 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19149 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19211 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19273 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19397 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19491 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19574 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19685 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19797 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19889 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20315 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20377 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20501 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20781 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20864 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20966 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21078 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21170 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21394 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21472 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21534 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21658 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21720 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21844 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21906 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22145 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22417 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22519 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22631 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22743 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22858 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22920 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23044 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23168 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23230 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23354 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23448 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23531 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23938 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24050 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24162 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24339 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24401 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24525 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24587 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24649 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24711 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24773 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24882 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24986 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25048 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25119 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25164 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25313 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25437 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25508 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26061 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26241 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26676 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26788 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27062 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27506 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27511 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27728 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27733 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27880 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27952 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28029 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28192 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28324 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28390 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28497 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28596 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28761 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28768 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28775 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28782 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28787 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28997 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29248 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29253 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29260 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29265 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29272 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29277 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29425 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29432 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29439 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29614 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29696 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29766 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29771 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29932 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30014 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30021 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30035 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30120 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30191 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30276 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30395 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30402 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30409 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30478 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30548 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30796 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30803 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30881 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30886 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30991 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30998 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31110 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31117 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31124 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31264 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31292 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31562 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31639 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31722 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31729 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31736 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31807 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31814 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31821 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31828 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31835 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31842 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31863 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31870 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31877 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31884 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31891 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31898 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31905 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31912 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31919 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31926 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31933 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31940 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31947 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31954 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31961 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31968 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31975 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31982 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31989 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32081 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32158 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32275 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32282 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32289 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32296 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32305 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32312 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32319 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32335 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32342 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32349 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32356 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32363 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32370 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32444 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32451 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32458 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_clcd_print
	FNCALL	_main,_clcd_putch
	FNCALL	_main,_delay
	FNCALL	_main,_get_password
	FNCALL	_main,_get_speed
	FNCALL	_main,_get_time
	FNCALL	_main,_go_to_menu
	FNCALL	_main,_init_config
	FNCALL	_main,_read_switches
	FNCALL	_main,_store_key_log
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_uart
	FNCALL	_init_config,_write_external_eeprom
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_go_to_menu,_change_password
	FNCALL	_go_to_menu,_clcd_print
	FNCALL	_go_to_menu,_clcd_putch
	FNCALL	_go_to_menu,_clcd_write
	FNCALL	_go_to_menu,_delay
	FNCALL	_go_to_menu,_print_to_console
	FNCALL	_go_to_menu,_putch
	FNCALL	_go_to_menu,_read_switches
	FNCALL	_go_to_menu,_set_time
	FNCALL	_go_to_menu,_store_key_log
	FNCALL	_go_to_menu,_view_log
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_view_log,_clcd_write
	FNCALL	_view_log,_delay
	FNCALL	_view_log,_print_log_to_clcd
	FNCALL	_view_log,_read_switches
	FNCALL	_print_log_to_clcd,_clcd_putch
	FNCALL	_print_log_to_clcd,_read_external_eeprom
	FNCALL	_store_key_log,___awmod
	FNCALL	_store_key_log,_write_external_eeprom
	FNCALL	_set_time,___awdiv
	FNCALL	_set_time,___awmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_clcd_putch
	FNCALL	_set_time,_clcd_write
	FNCALL	_set_time,_delay
	FNCALL	_set_time,_read_ds1307
	FNCALL	_set_time,_read_switches
	FNCALL	_set_time,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_print_to_console,_putch
	FNCALL	_print_to_console,_read_external_eeprom
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_delay
	FNCALL	_change_password,_read_switches
	FNCALL	_change_password,_write_external_eeprom
	FNCALL	_write_external_eeprom,_i2c_start
	FNCALL	_write_external_eeprom,_i2c_stop
	FNCALL	_write_external_eeprom,_i2c_write
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_get_speed,___ftdiv
	FNCALL	_get_speed,___ftmul
	FNCALL	_get_speed,___fttol
	FNCALL	_get_speed,___lwdiv
	FNCALL	_get_speed,___lwmod
	FNCALL	_get_speed,___lwtoft
	FNCALL	_get_speed,_read_adc
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_get_password,___lbdiv
	FNCALL	_get_password,___lbmod
	FNCALL	_get_password,_clcd_print
	FNCALL	_get_password,_clcd_putch
	FNCALL	_get_password,_clcd_write
	FNCALL	_get_password,_read_external_eeprom
	FNCALL	_get_password,_read_switches
	FNCALL	_read_switches,_scan_key
	FNCALL	_read_external_eeprom,_i2c_read
	FNCALL	_read_external_eeprom,_i2c_rep_start
	FNCALL	_read_external_eeprom,_i2c_start
	FNCALL	_read_external_eeprom,_i2c_stop
	FNCALL	_read_external_eeprom,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	global	read_switches@once
	global	go_to_menu@F10376
	global	set_time@F10423
	global	main@F10408
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"matrix_keypad.c"
	line	98

;initializer for read_switches@once
	db	low(01h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"menu.c"
	line	18

;initializer for go_to_menu@F10376
		db	low(STR_17)
	db	high(STR_17)

		db	low(STR_18)
	db	high(STR_18)

		db	low(STR_19)
	db	high(STR_19)

		db	low(STR_20)
	db	high(STR_20)

		db	low(STR_21)
	db	high(STR_21)

	file	"main.c"
	line	152

;initializer for set_time@F10423
	db	low(0)
	db	low(0)
	db	low(03Ah)
	db	low(0)
	db	low(0)
	db	low(03Ah)
	db	low(0)
	db	low(0)
	db	low(0)
	line	40

;initializer for main@F10408
	db	low(04Eh)
	db	low(052h)
	db	low(031h)
	db	low(032h)
	db	low(033h)
	db	low(034h)
	db	low(035h)
	global	set_time@clock_reg
	global	get_time@clock_reg
	global	_log_total_saved
	global	_log_iter
	global	read_switches@key
	global	get_password@flag
	global	_time
	global	_speed
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ABDOVF
_ABDOVF	set	0x7DC7
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_CKE
_CKE	set	0x7E3E
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_GODONE
_GODONE	set	0x7E11
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RCIE
_RCIE	set	0x7CED
	global	_TXIF
_TXIF	set	0x7CF4
	global	_ABDEN
_ABDEN	set	0x7DC0
	global	_WUE
_WUE	set	0x7DC1
	global	_BRG16
_BRG16	set	0x7DC3
	global	_SCKP
_SCKP	set	0x7DC4
	global	_RCIDL
_RCIDL	set	0x7DC6
	global	_RX9D
_RX9D	set	0x7D58
	global	_OERR
_OERR	set	0x7D59
	global	_FERR
_FERR	set	0x7D5A
	global	_ADDEN
_ADDEN	set	0x7D5B
	global	_CREN
_CREN	set	0x7D5C
	global	_SREN
_SREN	set	0x7D5D
	global	_RX9
_RX9	set	0x7D5E
	global	_TX9D
_TX9D	set	0x7D60
	global	_TRMT
_TRMT	set	0x7D61
	global	_BRGH
_BRGH	set	0x7D62
	global	_SENDB
_SENDB	set	0x7D63
	global	_SYNC
_SYNC	set	0x7D64
	global	_TXEN
_TXEN	set	0x7D65
	global	_TX9
_TX9	set	0x7D66
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_ADFM
_ADFM	set	0x7E07
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_RBPU
_RBPU	set	0x7F8F
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SPEN
_SPEN	set	0x7D5F
	global	_CSRC
_CSRC	set	0x7D67
	global	_PORTD
_PORTD	set	0xF83
	global	_PORTCbits
_PORTCbits	set	0xF82
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_15:
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	78	;'N'
	db	79	;'O'
	db	84	;'T'
	db	32
	db	77	;'M'
	db	65	;'A'
	db	84	;'T'
	db	67	;'C'
	db	72	;'H'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	0
	
STR_11:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	78	;'N'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_12:
	db	82	;'R'
	db	69	;'E'
	db	45
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	82	;'R'
	db	0
	
STR_27:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	32
	db	32
	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	0
	
STR_22:
	db	78	;'N'
	db	79	;'O'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	32
	db	84	;'T'
	db	79	;'O'
	db	32
	db	80	;'P'
	db	82	;'R'
	db	73	;'I'
	db	78	;'N'
	db	84	;'T'
	db	0
	
STR_10:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_7:
	db	89	;'Y'
	db	79	;'O'
	db	85	;'U'
	db	32
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	32
	db	66	;'B'
	db	76	;'L'
	db	79	;'O'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	0
	
STR_13:
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	83	;'S'
	db	84	;'T'
	db	79	;'O'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	0
	
STR_29:
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	78	;'N'
	db	101	;'e'
	db	119	;'w'
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	0
	
STR_20:
	db	67	;'C'
	db	72	;'H'
	db	65	;'A'
	db	78	;'N'
	db	71	;'G'
	db	69	;'E'
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_6:
	db	65	;'A'
	db	84	;'T'
	db	84	;'T'
	db	69	;'E'
	db	77	;'M'
	db	80	;'P'
	db	84	;'T'
	db	83	;'S'
	db	32
	db	76	;'L'
	db	69	;'E'
	db	70	;'F'
	db	84	;'T'
	db	58	;':'
	db	0
	
STR_2:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_16:
	db	82	;'R'
	db	69	;'E'
	db	84	;'T'
	db	82	;'R'
	db	89	;'Y'
	db	32
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	0
	
STR_30:
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	85	;'U'
	db	80	;'P'
	db	68	;'D'
	db	65	;'A'
	db	84	;'T'
	db	69	;'E'
	db	68	;'D'
	db	33
	db	0
	
STR_25:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	32
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	33
	db	0
	
STR_18:
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_14:
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	76	;'L'
	db	89	;'Y'
	db	33
	db	0
	
STR_23:
	db	68	;'D'
	db	79	;'O'
	db	87	;'W'
	db	78	;'N'
	db	76	;'L'
	db	79	;'O'
	db	65	;'A'
	db	68	;'D'
	db	73	;'I'
	db	78	;'N'
	db	71	;'G'
	db	0
	
STR_19:
	db	67	;'C'
	db	76	;'L'
	db	69	;'E'
	db	65	;'A'
	db	82	;'R'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_24:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	46
	db	46
	db	46
	db	46
	db	46
	db	0
	
STR_17:
	db	86	;'V'
	db	73	;'I'
	db	69	;'E'
	db	87	;'W'
	db	32
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	0
	
STR_21:
	db	83	;'S'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	0
	
STR_5:
	db	70	;'F'
	db	65	;'A'
	db	73	;'I'
	db	76	;'L'
	db	69	;'E'
	db	68	;'D'
	db	33
	db	0
	
STR_8:
	db	87	;'W'
	db	65	;'A'
	db	73	;'I'
	db	84	;'T'
	db	46
	db	46
	db	0
	
STR_1:
	db	76	;'L'
	db	79	;'O'
	db	71	;'G'
	db	83	;'S'
	db	58	;':'
	db	0
	
STR_28:
	db	32
	db	67	;'C'
	db	0
	
STR_26:
	db	79	;'O'
	db	78	;'N'
	db	0
	
STR_3:
	db	42
	db	0
STR_9	equ	STR_2+0
STR_4	equ	STR_3+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
set_time@clock_reg:
       ds      3
get_time@clock_reg:
       ds      3
	global	_log_total_saved
_log_total_saved:
       ds      2
	global	_log_iter
_log_iter:
       ds      2
read_switches@key:
       ds      1
get_password@flag:
       ds      1
	global	_time
_time:
       ds      9
	global	_speed
_speed:
       ds      3
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"matrix_keypad.c"
	line	98
read_switches@once:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
view_log@F10401:
       ds      16
change_password@F10386:
       ds      4
change_password@F10384:
       ds      4
get_password@F10367:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"menu.c"
	line	18
go_to_menu@F10376:
       ds      10
psect	dataBANK0
	file	"main.c"
	line	152
set_time@F10423:
       ds      9
psect	dataBANK0
	file	"main.c"
	line	40
main@F10408:
       ds      7
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (26 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,26
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	line	#
; Clear objects allocated to BANK0 (28 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	28
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (24 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	24
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_read_ds1307:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
?_read_external_eeprom:	; 1 bytes @ 0x0
?_delay:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
??_init_uart:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_get_speed:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_store_key_log:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_get_password:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_go_to_menu:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?___lbdiv:	; 1 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds   1
??_read_ds1307:	; 1 bytes @ 0x1
?_write_external_eeprom:	; 1 bytes @ 0x1
??_read_external_eeprom:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
??___lbdiv:	; 1 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	write_external_eeprom@data
write_external_eeprom@data:	; 1 bytes @ 0x1
	global	read_external_eeprom@address
read_external_eeprom@address:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds   1
??_write_external_eeprom:	; 1 bytes @ 0x2
?_clcd_print:	; 1 bytes @ 0x2
??_delay:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	read_external_eeprom@data
read_external_eeprom@data:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	write_external_eeprom@wait
write_external_eeprom@wait:	; 2 bytes @ 0x2
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_get_time:	; 1 bytes @ 0x3
?_print_to_console:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	print_to_console@iter
print_to_console@iter:	; 2 bytes @ 0x3
	global	delay@wait
delay@wait:	; 2 bytes @ 0x3
	ds   1
??___awdiv:	; 1 bytes @ 0x4
?___lbmod:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	write_external_eeprom@address
write_external_eeprom@address:	; 1 bytes @ 0x4
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??_clcd_print:	; 1 bytes @ 0x5
??___ftpack:	; 1 bytes @ 0x5
??_print_to_console:	; 1 bytes @ 0x5
??___lbmod:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x5
	global	delay@i
delay@i:	; 2 bytes @ 0x5
	ds   1
	global	read_adc@channel
read_adc@channel:	; 1 bytes @ 0x6
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   1
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x7
	ds   1
?_clcd_putch:	; 1 bytes @ 0x8
	global	?___awmod
?___awmod:	; 2 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x8
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
??_clcd_putch:	; 1 bytes @ 0x9
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x9
	ds   1
?_print_log_to_clcd:	; 1 bytes @ 0xA
??_get_password:	; 1 bytes @ 0xA
??_change_password:	; 1 bytes @ 0xA
	global	print_log_to_clcd@iter
print_log_to_clcd@iter:	; 1 bytes @ 0xA
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xA
	ds   1
??_print_log_to_clcd:	; 1 bytes @ 0xB
??___lwtoft:	; 1 bytes @ 0xB
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	print_log_to_clcd@LINE
print_log_to_clcd@LINE:	; 1 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds   1
??_view_log:	; 1 bytes @ 0xC
??___awmod:	; 1 bytes @ 0xC
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xC
	global	get_password@entered_password
get_password@entered_password:	; 4 bytes @ 0xC
	global	change_password@confirm
change_password@confirm:	; 4 bytes @ 0xC
	ds   1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0xD
	global	view_log@string
view_log@string:	; 16 bytes @ 0xD
	ds   1
?_write_ds1307:	; 1 bytes @ 0xE
??_store_key_log:	; 1 bytes @ 0xE
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0xE
	global	store_key_log@gear
store_key_log@gear:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	ds   1
??_write_ds1307:	; 1 bytes @ 0xF
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0xF
	ds   1
??_set_time:	; 1 bytes @ 0x10
??_init_ds1307:	; 1 bytes @ 0x10
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x10
	global	get_password@delay
get_password@delay:	; 2 bytes @ 0x10
	global	change_password@wait
change_password@wait:	; 2 bytes @ 0x10
	ds   1
??___ftdiv:	; 1 bytes @ 0x11
??_init_config:	; 1 bytes @ 0x11
	ds   1
	global	get_password@wait
get_password@wait:	; 2 bytes @ 0x12
	global	set_time@blinker
set_time@blinker:	; 2 bytes @ 0x12
	global	change_password@password
change_password@password:	; 4 bytes @ 0x12
	ds   2
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	global	get_password@wait_187
get_password@wait_187:	; 2 bytes @ 0x14
	global	set_time@time_buffer
set_time@time_buffer:	; 9 bytes @ 0x14
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	ds   1
	global	change_password@exit_flag
change_password@exit_flag:	; 1 bytes @ 0x16
	global	get_password@count
get_password@count:	; 2 bytes @ 0x16
	ds   1
	global	change_password@j_210
change_password@j_210:	; 2 bytes @ 0x17
	ds   1
	global	get_password@key_pressed
get_password@key_pressed:	; 1 bytes @ 0x18
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	global	change_password@j
change_password@j:	; 2 bytes @ 0x19
	global	get_password@c
get_password@c:	; 4 bytes @ 0x19
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1A
	ds   1
	global	change_password@j_205
change_password@j_205:	; 2 bytes @ 0x1B
	ds   2
	global	change_password@i
change_password@i:	; 1 bytes @ 0x1D
	global	set_time@exit_flag
set_time@exit_flag:	; 1 bytes @ 0x1D
	global	view_log@exit_flag
view_log@exit_flag:	; 2 bytes @ 0x1D
	global	get_password@total_attempts
get_password@total_attempts:	; 2 bytes @ 0x1D
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1D
	ds   1
	global	set_time@dummy
set_time@dummy:	; 1 bytes @ 0x1E
	ds   1
	global	view_log@i
view_log@i:	; 2 bytes @ 0x1F
	global	get_password@p
get_password@p:	; 2 bytes @ 0x1F
	global	set_time@field_select
set_time@field_select:	; 2 bytes @ 0x1F
	ds   1
??___ftmul:	; 1 bytes @ 0x20
	ds   1
	global	get_password@j
get_password@j:	; 2 bytes @ 0x21
	global	set_time@hour
set_time@hour:	; 2 bytes @ 0x21
	ds   2
	global	get_password@k
get_password@k:	; 1 bytes @ 0x23
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x23
	global	set_time@min
set_time@min:	; 2 bytes @ 0x23
	ds   1
	global	get_password@i
get_password@i:	; 2 bytes @ 0x24
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x24
	ds   1
	global	set_time@seconds
set_time@seconds:	; 2 bytes @ 0x25
	ds   2
??_go_to_menu:	; 1 bytes @ 0x27
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x27
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x28
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x29
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x29
	global	go_to_menu@menu
go_to_menu@menu:	; 10 bytes @ 0x29
	ds   4
??___fttol:	; 1 bytes @ 0x2D
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x32
	ds   1
	global	go_to_menu@exit_flag
go_to_menu@exit_flag:	; 2 bytes @ 0x33
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x33
	ds   2
	global	go_to_menu@i_247
go_to_menu@i_247:	; 2 bytes @ 0x35
	ds   2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x37
	global	go_to_menu@pos
go_to_menu@pos:	; 2 bytes @ 0x37
	ds   1
??_get_speed:	; 1 bytes @ 0x38
	global	get_speed@adc_reg_val
get_speed@adc_reg_val:	; 2 bytes @ 0x38
	ds   1
	global	go_to_menu@i
go_to_menu@i:	; 2 bytes @ 0x39
	ds   2
??_main:	; 1 bytes @ 0x3B
	global	main@gear
main@gear:	; 7 bytes @ 0x3B
	ds   7
	global	main@gear_iter
main@gear_iter:	; 2 bytes @ 0x42
	ds   2
;!
;!Data Sizes:
;!    Strings     356
;!    Constant    0
;!    Data        27
;!    BSS         52
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     68      93
;!    BANK0           160      0      54
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 22
;!		 -> STR_30(CODE[14]), STR_29(CODE[15]), STR_28(CODE[3]), STR_27(CODE[17]), 
;!		 -> STR_26(CODE[3]), STR_25(CODE[14]), STR_24(CODE[10]), STR_23(CODE[12]), 
;!		 -> STR_22(CODE[17]), STR_21(CODE[9]), STR_20(CODE[15]), STR_19(CODE[11]), 
;!		 -> STR_18(CODE[14]), STR_17(CODE[10]), STR_16(CODE[15]), STR_15(CODE[22]), 
;!		 -> STR_14(CODE[14]), STR_13(CODE[16]), STR_12(CODE[19]), STR_11(CODE[19]), 
;!		 -> STR_10(CODE[17]), STR_9(CODE[15]), STR_8(CODE[7]), STR_7(CODE[17]), 
;!		 -> STR_6(CODE[15]), STR_5(CODE[8]), STR_4(CODE[2]), STR_3(CODE[2]), 
;!		 -> STR_2(CODE[15]), STR_1(CODE[6]), speed(COMRAM[3]), time(COMRAM[9]), 
;!
;!    go_to_menu@menu	PTR const unsigned char [5] size(2) Largest target is 15
;!		 -> STR_21(CODE[9]), STR_20(CODE[15]), STR_19(CODE[11]), STR_18(CODE[14]), 
;!		 -> STR_17(CODE[10]), 
;!
;!    go_to_menu@F10376	PTR const unsigned char [5] size(2) Largest target is 15
;!		 -> STR_21(CODE[9]), STR_20(CODE[15]), STR_19(CODE[11]), STR_18(CODE[14]), 
;!		 -> STR_17(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_go_to_menu
;!    _init_config->_init_ds1307
;!    _init_ds1307->_write_ds1307
;!    _init_clcd->_clcd_write
;!    _go_to_menu->_set_time
;!    _view_log->_print_log_to_clcd
;!    _print_log_to_clcd->_clcd_putch
;!    _store_key_log->___awmod
;!    _set_time->_write_ds1307
;!    _write_ds1307->___awmod
;!    ___awmod->___awdiv
;!    _print_to_console->_read_external_eeprom
;!    _change_password->_clcd_putch
;!    _write_external_eeprom->_i2c_write
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _get_speed->___fttol
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftmul
;!    ___ftmul->___ftdiv
;!    ___ftdiv->___lwtoft
;!    _get_password->_clcd_putch
;!    _read_external_eeprom->_i2c_write
;!    _clcd_putch->___lbmod
;!    _clcd_print->_clcd_write
;!    ___lbmod->___lbdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 9     9      0  141261
;!                                             59 COMRAM     9     9      0
;!                         _clcd_print
;!                         _clcd_putch
;!                              _delay
;!                       _get_password
;!                          _get_speed
;!                           _get_time
;!                         _go_to_menu
;!                        _init_config
;!                      _read_switches
;!                      _store_key_log
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    5959
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                          _init_uart
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0    1114
;!                                             16 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    2552
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _go_to_menu                                          26    26      0   87949
;!                                             39 COMRAM    20    20      0
;!                    _change_password
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                              _delay
;!                   _print_to_console
;!                              _putch
;!                      _read_switches
;!                           _set_time
;!                      _store_key_log
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (2) _view_log                                            21    21      0   23750
;!                                             12 COMRAM    21    21      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                              _delay
;!                  _print_log_to_clcd
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (3) _print_log_to_clcd                                    2     1      1    6915
;!                                             10 COMRAM     2     1      1
;!                         _clcd_putch
;!               _read_external_eeprom
;! ---------------------------------------------------------------------------------
;! (1) _store_key_log                                        1     1      0    4893
;!                                             14 COMRAM     1     1      0
;!                            ___awmod
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _set_time                                            23    23      0   22179
;!                                             16 COMRAM    23    23      0
;!                            ___awdiv
;!                            ___awmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                              _delay
;!                        _read_ds1307
;!                      _read_switches
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     978
;!                                             14 COMRAM     2     1      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4    2424
;!                                              8 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4    1212
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (2) _print_to_console                                     2     0      2     385
;!                                              3 COMRAM     2     0      2
;!                              _putch
;!               _read_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _change_password                                     20    20      0   19679
;!                                             10 COMRAM    20    20      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                              _delay
;!                      _read_switches
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _write_external_eeprom                                4     3      1    2293
;!                                              1 COMRAM     4     3      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                7     5      2     829
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             0     0      0      67
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (1) _get_speed                                            2     2      0   10722
;!                                             56 COMRAM     2     2      0
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                            ___lwdiv
;!                            ___lwmod
;!                           ___lwtoft
;!                           _read_adc
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    2903
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     311
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     314
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     328
;!                                             41 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    3411
;!                                             26 COMRAM    15     9      6
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    3365
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2805
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _get_password                                        28    28      0   17299
;!                                             10 COMRAM    28    28      0
;!                            ___lbdiv
;!                            ___lbmod
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_external_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (1) _read_switches                                        1     1      0      44
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (2) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _read_external_eeprom                                 2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) _i2c_write                                            1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (3) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (4) _clcd_putch                                           2     1      1    6244
;!                                              8 COMRAM     2     1      1
;!                            ___lbdiv (ARG)
;!                            ___lbmod (ARG)
;!                         _clcd_write
;!               _read_external_eeprom (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _clcd_print                                           3     0      3    7027
;!                                              2 COMRAM     3     0      3
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (3) _clcd_write                                           2     1      1    2552
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (2) ___lbmod                                              4     3      1     387
;!                                              4 COMRAM     4     3      1
;!                            ___lbdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lbdiv                                              4     3      1     314
;!                                              0 COMRAM     4     3      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _clcd_print
;!     _clcd_write
;!   _clcd_putch
;!     ___lbdiv (ARG)
;!     ___lbmod (ARG)
;!       ___lbdiv (ARG)
;!     _clcd_write (ARG)
;!     _read_external_eeprom (ARG)
;!       _i2c_read
;!         _i2c_no_ack
;!         _i2c_rx_mode
;!           _i2c_idle
;!       _i2c_rep_start
;!         _i2c_idle
;!       _i2c_start
;!         _i2c_idle
;!       _i2c_stop
;!         _i2c_idle
;!       _i2c_write
;!         _i2c_idle
;!   _delay
;!   _get_password
;!     ___lbdiv
;!     ___lbmod
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _read_external_eeprom
;!     _read_switches
;!       _scan_key
;!   _get_speed
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         _read_adc (ARG)
;!       _read_adc (ARG)
;!     ___ftmul
;!       ___ftdiv (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!       _read_adc (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!       ___ftmul (ARG)
;!       ___lwtoft (ARG)
;!       _read_adc (ARG)
;!     ___lwdiv
;!     ___lwmod
;!     ___lwtoft
;!     _read_adc
;!   _get_time
;!     _read_ds1307
;!       _i2c_read
;!       _i2c_rep_start
;!       _i2c_start
;!       _i2c_stop
;!       _i2c_write
;!   _go_to_menu
;!     _change_password
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _delay
;!       _read_switches
;!       _write_external_eeprom
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _delay
;!     _print_to_console
;!       _putch
;!       _read_external_eeprom
;!     _putch
;!     _read_switches
;!     _set_time
;!       ___awdiv
;!       ___awmod
;!         ___awdiv (ARG)
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _delay
;!       _read_ds1307
;!       _read_switches
;!       _write_ds1307
;!         ___awdiv (ARG)
;!         ___awmod (ARG)
;!         _i2c_start (ARG)
;!         _i2c_stop (ARG)
;!         _i2c_write (ARG)
;!     _store_key_log
;!       ___awmod
;!       _write_external_eeprom
;!     _view_log
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _delay
;!       _print_log_to_clcd
;!         _clcd_putch
;!         _read_external_eeprom
;!       _read_switches
;!   _init_config
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_uart
;!     _write_external_eeprom
;!   _read_switches
;!   _store_key_log
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      26        0.0%
;!BITBIGSFRlll       281      0       0      24        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      36       5       33.8%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     44      5D       1       97.9%
;!BITBIGSFRhhhhhl     27      0       0      17        0.0%
;!BITBIGSFRllh         F      0       0      23        0.0%
;!BITBIGSFRhhhhhh      E      0       0      16        0.0%
;!BITBIGSFRlhhhl       9      0       0      20        0.0%
;!BITBIGSFRlhhhhl      8      0       0      19        0.0%
;!BITBIGSFRlhhhhh      7      0       0      18        0.0%
;!BITBIGSFRlhl         7      0       0      22        0.0%
;!BITBIGSFRlhhl        2      0       0      21        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      93      25        0.0%
;!DATA                 0      0      93       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  gear            7   59[COMRAM] unsigned char [7]
;;  gear_iter       2   66[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_delay
;;		_get_password
;;		_get_speed
;;		_get_time
;;		_go_to_menu
;;		_init_config
;;		_read_switches
;;		_store_key_log
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	39
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	39
	
_main:
;incstack = 0
	callstack 24
	line	41
	
l3964:
;main.c: 41: char gear[7] = {'N', 'R', '1', '2', '3', '4','5'};
	lfsr	2,(main@F10408)
	lfsr	1,(main@gear)
	movlw	7-1
u2641:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2641

	line	42
	
l3966:
;main.c: 42: int gear_iter = 0;
	movlw	high(0)
	movwf	((c:main@gear_iter+1))^00h,c
	movlw	low(0)
	movwf	((c:main@gear_iter))^00h,c
	line	43
	
l3968:
;main.c: 43: init_config();
	call	_init_config	;wreg free
	line	45
	
l3970:
;main.c: 45: clcd_print("ON", (0xC0 + (9)));
		movlw	low(STR_26)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_26)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	46
	
l3972:
;main.c: 46: get_time();
	call	_get_time	;wreg free
	line	47
	
l3974:
;main.c: 47: get_speed();
	call	_get_speed	;wreg free
	line	48
	
l3976:
;main.c: 48: store_key_log('O');
	movlw	(04Fh)&0ffh
	
	call	_store_key_log
	line	52
	
l3978:
;main.c: 51: {;main.c: 52: clcd_print("TIME     EV  RPM", (0x80 + (0)));
		movlw	low(STR_27)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_27)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	54
	
l3980:
;main.c: 54: get_time();
	call	_get_time	;wreg free
	line	55
	
l3982:
;main.c: 55: get_speed();
	call	_get_speed	;wreg free
	line	57
	
l3984:
;main.c: 57: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	58
	
l3986:
;main.c: 58: clcd_print(speed, (0xC0 + (14)));
		movlw	low(_speed)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CEh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	60
;main.c: 60: switch (read_switches(1))
	goto	l4026
	line	64
	
l3988:
;main.c: 63: {;main.c: 64: store_key_log(gear[gear_iter]);
	movf	((c:main@gear_iter))^00h,c,w
	addlw	low(main@gear)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_store_key_log
	line	66
	
l3990:
;main.c: 66: clcd_putch('G', (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(047h)&0ffh
	
	call	_clcd_putch
	line	67
	
l3992:
;main.c: 67: clcd_putch(gear[gear_iter], (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:main@gear_iter))^00h,c,w
	addlw	low(main@gear)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_clcd_putch
	line	68
	
l3994:
;main.c: 68: if (++gear_iter > 6)
	infsnz	((c:main@gear_iter))^00h,c
	incf	((c:main@gear_iter+1))^00h,c
	btfsc	((c:main@gear_iter+1))^00h,c,7
	goto	u2651
	movf	((c:main@gear_iter+1))^00h,c,w
	bnz	u2650
	movlw	7
	subwf	 ((c:main@gear_iter))^00h,c,w
	btfss	status,0
	goto	u2651
	goto	u2650

u2651:
	goto	l3978
u2650:
	line	69
	
l3996:
;main.c: 69: gear_iter = 6;
	movlw	high(06h)
	movwf	((c:main@gear_iter+1))^00h,c
	movlw	low(06h)
	movwf	((c:main@gear_iter))^00h,c
	goto	l3978
	line	74
	
l3998:
;main.c: 73: {;main.c: 74: store_key_log(gear[gear_iter]);
	movf	((c:main@gear_iter))^00h,c,w
	addlw	low(main@gear)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_store_key_log
	line	76
	
l4000:
;main.c: 76: clcd_putch('G', (0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(047h)&0ffh
	
	call	_clcd_putch
	line	77
	
l4002:
;main.c: 77: clcd_putch(gear[gear_iter], (0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:main@gear_iter))^00h,c,w
	addlw	low(main@gear)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_clcd_putch
	line	78
	
l4004:
;main.c: 78: if (--gear_iter < 0)
	decf	((c:main@gear_iter))^00h,c
	btfss	status,0
	decf	((c:main@gear_iter+1))^00h,c
	btfsc	((c:main@gear_iter+1))^00h,c,7
	goto	u2660
	goto	u2661

u2661:
	goto	l3978
u2660:
	line	79
	
l4006:
;main.c: 79: gear_iter = 0;
	movlw	high(0)
	movwf	((c:main@gear_iter+1))^00h,c
	movlw	low(0)
	movwf	((c:main@gear_iter))^00h,c
	goto	l3978
	line	84
	
l4008:
;main.c: 83: {;main.c: 84: store_key_log('C');
	movlw	(043h)&0ffh
	
	call	_store_key_log
	line	85
	
l4010:
;main.c: 85: clcd_print(" C", (0xC0 + (9)));
		movlw	low(STR_28)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_28)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C9h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	87
;main.c: 86: };main.c: 87: break;
	goto	l3978
	line	90
	
l4012:
;main.c: 89: {;main.c: 90: delay(2);
	movlw	high(02h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(02h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	92
	
l4014:
;main.c: 92: store_key_log('P');
	movlw	(050h)&0ffh
	
	call	_store_key_log
	line	93
	
l4016:
;main.c: 93: if (get_password() == 0)
	call	_get_password	;wreg free
	iorlw	0
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l4020
u2670:
	line	95
	
l4018:
;main.c: 94: {;main.c: 95: go_to_menu();
	call	_go_to_menu	;wreg free
	line	96
;main.c: 96: }
	goto	l3978
	line	97
	
l4020:
;main.c: 97: else if(get_password()==1)
	call	_get_password	;wreg free
	decf	wreg
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l471
u2680:
	line	99
	
l4022:
;main.c: 98: {;main.c: 99: get_password();
	call	_get_password	;wreg free
	goto	l3978
	line	60
	
l4026:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l4008
	xorlw	2^1	; case 2
	skipnz
	goto	l3988
	xorlw	3^2	; case 3
	skipnz
	goto	l3998
	xorlw	4^3	; case 4
	skipnz
	goto	l4012
	goto	l3978

	line	106
	
l471:
	goto	l3978
	global	start
	goto	start
	callstack 0
	line	108
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 19 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_uart
;;		_write_external_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	19
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	19
	
_init_config:
;incstack = 0
	callstack 25
	line	21
	
l3924:
;main.c: 21: init_clcd();
	call	_init_clcd	;wreg free
	line	22
;main.c: 22: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	23
	
l3926:
;main.c: 23: init_adc();
	call	_init_adc	;wreg free
	line	24
	
l3928:
;main.c: 24: init_i2c();
	call	_init_i2c	;wreg free
	line	25
;main.c: 25: init_ds1307();
	call	_init_ds1307	;wreg free
	line	26
	
l3930:
;main.c: 26: init_uart();
	call	_init_uart	;wreg free
	line	29
	
l3932:
;main.c: 29: write_external_eeprom(100, 0);
	movlw	low(0)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(064h)&0ffh
	
	call	_write_external_eeprom
	line	30
	
l3934:
;main.c: 30: write_external_eeprom(101, 0);
	movlw	low(0)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(065h)&0ffh
	
	call	_write_external_eeprom
	line	31
	
l3936:
;main.c: 31: write_external_eeprom(102, 0);
	movlw	low(0)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(066h)&0ffh
	
	call	_write_external_eeprom
	line	32
	
l3938:
;main.c: 32: write_external_eeprom(103, 0);
	movlw	low(0)
	movwf	((c:write_external_eeprom@data))^00h,c
	movlw	(067h)&0ffh
	
	call	_write_external_eeprom
	line	33
	
l456:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 12 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	12
global __ptext2
__ptext2:
psect	text2
	file	"uart.c"
	line	12
	
_init_uart:
;incstack = 0
	callstack 29
	line	15
	
l3432:
;uart.c: 15: TRISC7 = 1;
	bsf	c:(31911/8),(31911)&7	;volatile
	line	16
;uart.c: 16: TRISC6 = 0;
	bcf	c:(31910/8),(31910)&7	;volatile
	line	21
;uart.c: 21: CSRC = 0;
	bcf	c:(32103/8),(32103)&7	;volatile
	line	23
;uart.c: 23: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	25
;uart.c: 25: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	28
;uart.c: 28: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	30
;uart.c: 30: SENDB = 0;
	bcf	c:(32099/8),(32099)&7	;volatile
	line	33
;uart.c: 33: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	35
;uart.c: 35: TRMT = 0;
	bcf	c:(32097/8),(32097)&7	;volatile
	line	37
;uart.c: 37: TX9D = 0;
	bcf	c:(32096/8),(32096)&7	;volatile
	line	42
;uart.c: 42: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	44
;uart.c: 44: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	46
;uart.c: 46: SREN = 0;
	bcf	c:(32093/8),(32093)&7	;volatile
	line	48
;uart.c: 48: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	50
;uart.c: 50: ADDEN = 0;
	bcf	c:(32091/8),(32091)&7	;volatile
	line	52
;uart.c: 52: FERR = 0;
	bcf	c:(32090/8),(32090)&7	;volatile
	line	54
;uart.c: 54: OERR = 0;
	bcf	c:(32089/8),(32089)&7	;volatile
	line	56
;uart.c: 56: RX9D = 0;
	bcf	c:(32088/8),(32088)&7	;volatile
	line	61
;uart.c: 61: ABDOVF = 0;
	bcf	c:(32199/8),(32199)&7	;volatile
	line	63
;uart.c: 63: RCIDL = 1;
	bsf	c:(32198/8),(32198)&7	;volatile
	line	65
;uart.c: 65: SCKP = 0;
	bcf	c:(32196/8),(32196)&7	;volatile
	line	67
;uart.c: 67: BRG16 = 0;
	bcf	c:(32195/8),(32195)&7	;volatile
	line	69
;uart.c: 69: WUE = 0;
	bcf	c:(32193/8),(32193)&7	;volatile
	line	71
;uart.c: 71: ABDEN = 0;
	bcf	c:(32192/8),(32192)&7	;volatile
	line	75
	
l3434:
;uart.c: 75: SPBRG = 129;
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	78
	
l3436:
;uart.c: 78: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	80
	
l3438:
;uart.c: 80: TXIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	82
	
l3440:
;uart.c: 82: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	84
	
l3442:
;uart.c: 84: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	85
	
l619:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 12 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	12
global __ptext3
__ptext3:
psect	text3
	file	"matrix_keypad.c"
	line	12
	
_init_matrix_keypad:
;incstack = 0
	callstack 29
	line	15
	
l3412:
;matrix_keypad.c: 15: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	18
;matrix_keypad.c: 18: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	21
	
l3414:
;matrix_keypad.c: 21: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	23
	
l3416:
;matrix_keypad.c: 23: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	24
	
l376:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 11 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	11
global __ptext4
__ptext4:
psect	text4
	file	"i2c.c"
	line	11
	
_init_i2c:
;incstack = 0
	callstack 29
	line	14
	
l3090:
;i2c.c: 14: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	15
;i2c.c: 15: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	17
	
l3092:
;i2c.c: 17: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	19
;i2c.c: 19: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	21
	
l3094:
;i2c.c: 21: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	23
	
l3096:
;i2c.c: 23: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	25
	
l3098:
;i2c.c: 25: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	27
	
l3100:
;i2c.c: 27: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	28
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 20 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	20
global __ptext5
__ptext5:
psect	text5
	file	"ds1307.c"
	line	20
	
_init_ds1307:
;incstack = 0
	callstack 25
	line	25
	
l3102:
;ds1307.c: 22: unsigned char dummy;;ds1307.c: 25: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	26
	
l3104:
;ds1307.c: 26: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	34
	
l3106:
;ds1307.c: 34: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	35
;ds1307.c: 35: write_ds1307(0x02, dummy & 0xBF);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(0BFh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	50
	
l3108:
;ds1307.c: 50: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	53
	
l3110:
;ds1307.c: 53: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	54
;ds1307.c: 54: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	56
	
l122:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 35 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	35
global __ptext6
__ptext6:
psect	text6
	file	"clcd.c"
	line	35
	
_init_clcd:
;incstack = 0
	callstack 28
	line	38
	
l3418:
;clcd.c: 38: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	40
	
l3420:
;clcd.c: 40: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	42
	
l3422:
;clcd.c: 42: PORTCbits.RC0 = 0;
	bcf	((c:3970))^0f00h,c,0	;volatile
	line	44
	
l3424:
;clcd.c: 44: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	45
	
l3426:
;clcd.c: 45: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	46
	
l3428:
;clcd.c: 46: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	47
	
l3430:
;clcd.c: 47: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	48
	
l545:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 12 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	12
global __ptext7
__ptext7:
psect	text7
	file	"adc.c"
	line	12
	
_init_adc:
;incstack = 0
	callstack 29
	line	15
	
l3074:
;adc.c: 15: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	21
;adc.c: 21: ACQT2 = 1;
	bsf	c:(32261/8),(32261)&7	;volatile
	line	22
;adc.c: 22: ACQT1 = 0;
	bcf	c:(32260/8),(32260)&7	;volatile
	line	23
;adc.c: 23: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	29
;adc.c: 29: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	30
;adc.c: 30: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	31
;adc.c: 31: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	34
;adc.c: 34: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	40
;adc.c: 40: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	42
;adc.c: 42: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	45
	
l3076:
;adc.c: 45: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	46
;adc.c: 46: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	49
	
l3078:
;adc.c: 49: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	50
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_go_to_menu

;; *************** function _go_to_menu *****************
;; Defined at:
;;		line 17 in file "menu.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   53[COMRAM] int 
;;  menu           10   41[COMRAM] PTR const unsigned char 
;;		 -> STR_21(9), STR_20(15), STR_19(11), STR_18(14), 
;;		 -> STR_17(10), 
;;  i               2   57[COMRAM] int 
;;  pos             2   55[COMRAM] int 
;;  exit_flag       2   51[COMRAM] int 
;;  seconds         2    0        int 
;;  once            2    0        int 
;;  ret_value       2    0        int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        18       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_change_password
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay
;;		_print_to_console
;;		_putch
;;		_read_switches
;;		_set_time
;;		_store_key_log
;;		_view_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"menu.c"
	line	17
global __ptext8
__ptext8:
psect	text8
	file	"menu.c"
	line	17
	
_go_to_menu:
;incstack = 0
	callstack 24
	line	19
	
l3792:
;menu.c: 19: const char *menu[] = {"VIEW LOGS", "DOWNLOAD LOGS", "CLEAR LOGS", "CHANGEPASSWORD", "SET TIME"};
	lfsr	2,(go_to_menu@F10376)
	lfsr	1,(go_to_menu@menu)
	movlw	10-1
u2521:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2521

	line	20
	
l3794:
;menu.c: 20: int i = 0, pos = 0, once = 0, ret_value, seconds = 0, exit_flag = 0;
	movlw	high(0)
	movwf	((c:go_to_menu@i+1))^00h,c
	movlw	low(0)
	movwf	((c:go_to_menu@i))^00h,c
	
l3796:
	movlw	high(0)
	movwf	((c:go_to_menu@pos+1))^00h,c
	movlw	low(0)
	movwf	((c:go_to_menu@pos))^00h,c
	
l3798:
	
l3800:
	
l3802:
	movlw	high(0)
	movwf	((c:go_to_menu@exit_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:go_to_menu@exit_flag))^00h,c
	line	22
;menu.c: 22: while (!exit_flag)
	goto	l3918
	line	24
	
l3804:
;menu.c: 23: {;menu.c: 24: if (pos == 0)
	movf	((c:go_to_menu@pos))^00h,c,w
iorwf	((c:go_to_menu@pos+1))^00h,c,w
	btfss	status,2
	goto	u2531
	goto	u2530

u2531:
	goto	l3808
u2530:
	line	25
	
l3806:
;menu.c: 25: clcd_putch('*', (0x80 + (0)));
	movlw	low(080h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	goto	l3810
	line	27
	
l3808:
;menu.c: 26: else;menu.c: 27: clcd_putch('*', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	29
	
l3810:
;menu.c: 29: clcd_print(menu[i], (0x80 + (2)));
	movf	((c:go_to_menu@i))^00h,c,w
	mullw	02h
	movf	(prodl)^0f00h,c,w
	addlw	low(go_to_menu@menu)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	30
	
l3812:
;menu.c: 30: clcd_print(menu[i + 1], (0xC0 + (2)));
	movf	((c:go_to_menu@i))^00h,c,w
	mullw	02h
	movff	prodl,??_go_to_menu+0+0
	movlw	02h
	addwf	(??_go_to_menu+0+0)^00h,c
	movf	(??_go_to_menu+0+0)^00h,c,w
	addlw	low(go_to_menu@menu)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:clcd_print@data)
	movff	postdec2,(c:clcd_print@data+1)
	movlw	low(0C2h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	32
;menu.c: 32: switch (read_switches(1))
	goto	l3916
	line	36
	
l3814:
;menu.c: 35: {;menu.c: 36: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	38
;menu.c: 38: if (read_switches(0) == 4)
	movlw	(0)&0ffh
	
	call	_read_switches
	xorlw	04h
	btfss	status,2
	goto	u2541
	goto	u2540
u2541:
	goto	l3890
u2540:
	goto	l3888
	line	44
	
l3818:
;menu.c: 43: {;menu.c: 44: store_key_log('V');
	movlw	(056h)&0ffh
	
	call	_store_key_log
	line	45
	
l3820:
;menu.c: 45: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	46
	
l3822:
;menu.c: 46: if (log_total_saved > 0)
	btfsc	((c:_log_total_saved+1))^00h,c,7
	goto	u2551
	movf	((c:_log_total_saved+1))^00h,c,w
	bnz	u2550
	decf	((c:_log_total_saved))^00h,c,w
	btfss	status,0
	goto	u2551
	goto	u2550

u2551:
	goto	l3826
u2550:
	line	48
	
l3824:
;menu.c: 47: {;menu.c: 48: view_log();
	call	_view_log	;wreg free
	line	49
;menu.c: 49: }
	goto	l3828
	line	51
	
l3826:
;menu.c: 50: else;menu.c: 51: clcd_print("NO LOGS TO PRINT", (0x80 + (0)));
		movlw	low(STR_22)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_22)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	53
	
l3828:
;menu.c: 53: delay(10);
	movlw	high(0Ah)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	55
	
l3830:
;menu.c: 55: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	57
;menu.c: 56: };menu.c: 57: break;
	goto	l3918
	line	60
	
l3832:
;menu.c: 59: {;menu.c: 60: store_key_log('D');
	movlw	(044h)&0ffh
	
	call	_store_key_log
	line	61
	
l3834:
;menu.c: 61: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	62
	
l3836:
;menu.c: 62: clcd_print("DOWNLOADING", (0x80 + (2)));
		movlw	low(STR_23)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_23)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	63
	
l3838:
;menu.c: 63: clcd_print("LOGS.....", (0xC0 + (3)));
		movlw	low(STR_24)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_24)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C3h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	64
	
l3840:
;menu.c: 64: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	66
	
l3842:
;menu.c: 66: for (int i = 0; i < log_total_saved && i < 10; i++)
	movlw	high(0)
	movwf	((c:go_to_menu@i_247+1))^00h,c
	movlw	low(0)
	movwf	((c:go_to_menu@i_247))^00h,c
	goto	l3850
	line	68
	
l3844:
;menu.c: 67: {;menu.c: 68: putch('\r');
	movlw	(0Dh)&0ffh
	
	call	_putch
	line	69
	
l3846:
;menu.c: 69: print_to_console(i);
	movff	(c:go_to_menu@i_247),(c:print_to_console@iter)
	movff	(c:go_to_menu@i_247+1),(c:print_to_console@iter+1)
	call	_print_to_console	;wreg free
	line	66
	
l3848:
	infsnz	((c:go_to_menu@i_247))^00h,c
	incf	((c:go_to_menu@i_247+1))^00h,c
	
l3850:
		movf	((c:_log_total_saved))^00h,c,w
	subwf	((c:go_to_menu@i_247))^00h,c,w
	movf	((c:go_to_menu@i_247+1))^00h,c,w
	xorlw	80h
	movwf	(??_go_to_menu+0+0)^00h,c
	movf	((c:_log_total_saved+1))^00h,c,w
	xorlw	80h
	subwfb	(??_go_to_menu+0+0)^00h,c,w
	btfsc	status,0
	goto	u2561
	goto	u2560

u2561:
	goto	l3854
u2560:
	
l3852:
	btfsc	((c:go_to_menu@i_247+1))^00h,c,7
	goto	u2571
	movf	((c:go_to_menu@i_247+1))^00h,c,w
	bnz	u2570
	movlw	10
	subwf	 ((c:go_to_menu@i_247))^00h,c,w
	btfss	status,0
	goto	u2571
	goto	u2570

u2571:
	goto	l3844
u2570:
	line	72
	
l3854:
;menu.c: 70: };menu.c: 72: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	74
;menu.c: 73: };menu.c: 74: break;
	goto	l3918
	line	78
	
l3856:
;menu.c: 77: {;menu.c: 78: store_key_log('X');
	movlw	(058h)&0ffh
	
	call	_store_key_log
	line	79
	
l3858:
;menu.c: 79: log_iter = 0;
	movlw	high(0)
	movwf	((c:_log_iter+1))^00h,c
	movlw	low(0)
	movwf	((c:_log_iter))^00h,c
	line	80
	
l3860:
;menu.c: 80: log_total_saved = 0;
	movlw	high(0)
	movwf	((c:_log_total_saved+1))^00h,c
	movlw	low(0)
	movwf	((c:_log_total_saved))^00h,c
	line	81
	
l3862:
;menu.c: 81: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	82
	
l3864:
;menu.c: 82: clcd_print("LOGS CLEARED!", (0x80 + (0)));
		movlw	low(STR_25)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_25)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	83
	
l3866:
;menu.c: 83: delay(10);
	movlw	high(0Ah)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	84
	
l3868:
;menu.c: 84: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	86
;menu.c: 85: };menu.c: 86: break;
	goto	l3918
	line	89
	
l3870:
;menu.c: 88: {;menu.c: 89: store_key_log('W');
	movlw	(057h)&0ffh
	
	call	_store_key_log
	line	90
	
l3872:
;menu.c: 90: change_password();
	call	_change_password	;wreg free
	line	92
;menu.c: 91: };menu.c: 92: break;
	goto	l3918
	line	95
	
l3874:
;menu.c: 94: {;menu.c: 95: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	96
	
l3876:
;menu.c: 96: set_time();
	call	_set_time	;wreg free
	line	97
	
l3878:
;menu.c: 97: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	98
	
l3880:
;menu.c: 98: clcd_putch(' ',(0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	99
	
l3882:
;menu.c: 99: clcd_putch(' ',(0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	100
	
l3884:
;menu.c: 100: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	102
;menu.c: 101: };menu.c: 102: break;
	goto	l3918
	line	40
	
l3888:
	movf	((c:go_to_menu@i))^00h,c,w
	addwf	((c:go_to_menu@pos))^00h,c,w
	movwf	(??_go_to_menu+0+0)^00h,c
	movf	((c:go_to_menu@i+1))^00h,c,w
	addwfc	((c:go_to_menu@pos+1))^00h,c,w
	movwf	(??_go_to_menu+0+0+1)^00h,c
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_go_to_menu+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4040
	goto	l3918
	
l4040:
; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	movf ??_go_to_menu+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3818
	xorlw	1^0	; case 1
	skipnz
	goto	l3832
	xorlw	2^1	; case 2
	skipnz
	goto	l3856
	xorlw	3^2	; case 3
	skipnz
	goto	l3870
	xorlw	4^3	; case 4
	skipnz
	goto	l3874
	goto	l3918

	line	107
	
l3890:
;menu.c: 105: else;menu.c: 106: {;menu.c: 107: if (i > 0)
	btfsc	((c:go_to_menu@i+1))^00h,c,7
	goto	u2581
	movf	((c:go_to_menu@i+1))^00h,c,w
	bnz	u2580
	decf	((c:go_to_menu@i))^00h,c,w
	btfss	status,0
	goto	u2581
	goto	u2580

u2581:
	goto	l337
u2580:
	line	109
	
l3892:
;menu.c: 108: {;menu.c: 109: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	110
	
l3894:
;menu.c: 110: if (--pos < 0)
	decf	((c:go_to_menu@pos))^00h,c
	btfss	status,0
	decf	((c:go_to_menu@pos+1))^00h,c
	btfsc	((c:go_to_menu@pos+1))^00h,c,7
	goto	u2590
	goto	u2591

u2591:
	goto	l337
u2590:
	line	112
	
l3896:
;menu.c: 111: {;menu.c: 112: i--;
	decf	((c:go_to_menu@i))^00h,c
	btfss	status,0
	decf	((c:go_to_menu@i+1))^00h,c
	line	113
	
l3898:
;menu.c: 113: pos = 0;
	movlw	high(0)
	movwf	((c:go_to_menu@pos+1))^00h,c
	movlw	low(0)
	movwf	((c:go_to_menu@pos))^00h,c
	goto	l3918
	line	121
	
l3900:
;menu.c: 120: {;menu.c: 121: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	123
;menu.c: 123: if (read_switches(0) == 5)
	movlw	(0)&0ffh
	
	call	_read_switches
	xorlw	05h
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3904
u2600:
	line	124
	
l3902:
;menu.c: 124: exit_flag = 1;
	movlw	high(01h)
	movwf	((c:go_to_menu@exit_flag+1))^00h,c
	movlw	low(01h)
	movwf	((c:go_to_menu@exit_flag))^00h,c
	goto	l3918
	line	127
	
l3904:
;menu.c: 125: else;menu.c: 126: {;menu.c: 127: if (i < 3)
	btfsc	((c:go_to_menu@i+1))^00h,c,7
	goto	u2610
	movf	((c:go_to_menu@i+1))^00h,c,w
	bnz	u2611
	movlw	3
	subwf	 ((c:go_to_menu@i))^00h,c,w
	btfsc	status,0
	goto	u2611
	goto	u2610

u2611:
	goto	l3918
u2610:
	line	129
	
l3906:
;menu.c: 128: {;menu.c: 129: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	130
	
l3908:
;menu.c: 130: if (++pos >= 2)
	infsnz	((c:go_to_menu@pos))^00h,c
	incf	((c:go_to_menu@pos+1))^00h,c
	btfsc	((c:go_to_menu@pos+1))^00h,c,7
	goto	u2621
	movf	((c:go_to_menu@pos+1))^00h,c,w
	bnz	u2620
	movlw	2
	subwf	 ((c:go_to_menu@pos))^00h,c,w
	btfss	status,0
	goto	u2621
	goto	u2620

u2621:
	goto	l3918
u2620:
	line	132
	
l3910:
;menu.c: 131: {;menu.c: 132: i++;
	infsnz	((c:go_to_menu@i))^00h,c
	incf	((c:go_to_menu@i+1))^00h,c
	line	133
	
l3912:
;menu.c: 133: pos = 1;
	movlw	high(01h)
	movwf	((c:go_to_menu@pos+1))^00h,c
	movlw	low(01h)
	movwf	((c:go_to_menu@pos))^00h,c
	goto	l3918
	line	32
	
l3916:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3814
	xorlw	5^4	; case 5
	skipnz
	goto	l3900
	goto	l3918

	line	139
	
l337:
	line	22
	
l3918:
	movf	((c:go_to_menu@exit_flag))^00h,c,w
iorwf	((c:go_to_menu@exit_flag+1))^00h,c,w
	btfsc	status,2
	goto	u2631
	goto	u2630

u2631:
	goto	l3804
u2630:
	line	141
	
l344:
	return	;funcret
	callstack 0
GLOBAL	__end_of_go_to_menu
	__end_of_go_to_menu:
	signat	_go_to_menu,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 115 in file "event_logger.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  string         16   13[COMRAM] unsigned char [16]
;;  i               2   31[COMRAM] int 
;;  exit_flag       2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        20       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        21       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay
;;		_print_log_to_clcd
;;		_read_switches
;; This function is called by:
;;		_go_to_menu
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"event_logger.c"
	line	115
global __ptext9
__ptext9:
psect	text9
	file	"event_logger.c"
	line	115
	
_view_log:
;incstack = 0
	callstack 24
	line	117
	
l3168:
;event_logger.c: 117: int i = 0, exit_flag = 0;
	movlw	high(0)
	movwf	((c:view_log@i+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@i))^00h,c
	movlw	high(0)
	movwf	((c:view_log@exit_flag+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@exit_flag))^00h,c
	line	118
	
l3170:
;event_logger.c: 118: char string[16] = {0};
	lfsr	2,(view_log@string)
	movlw	16-1
u1901:
	clrf	postinc2
	decf	wreg
	bc	u1901
	line	120
;event_logger.c: 120: while (!exit_flag)
	goto	l3200
	line	122
	
l3172:
;event_logger.c: 121: {;event_logger.c: 122: clcd_print("LOGS:", (0x80 + (0)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	123
	
l3174:
;event_logger.c: 123: clcd_putch('0' + i, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:view_log@i))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	124
	
l3176:
;event_logger.c: 124: clcd_putch('.', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Eh)&0ffh
	
	call	_clcd_putch
	line	125
	
l3178:
;event_logger.c: 125: print_log_to_clcd(0xC0, i);
	movff	(c:view_log@i),(c:print_log_to_clcd@iter)
	movlw	(0C0h)&0ffh
	
	call	_print_log_to_clcd
	line	127
;event_logger.c: 127: switch (read_switches(1))
	goto	l3198
	line	131
	
l3180:
;event_logger.c: 130: {;event_logger.c: 131: if (i > 0)
	btfsc	((c:view_log@i+1))^00h,c,7
	goto	u1911
	movf	((c:view_log@i+1))^00h,c,w
	bnz	u1910
	decf	((c:view_log@i))^00h,c,w
	btfss	status,0
	goto	u1911
	goto	u1910

u1911:
	goto	l3200
u1910:
	line	132
	
l3182:
;event_logger.c: 132: i--;
	decf	((c:view_log@i))^00h,c
	btfss	status,0
	decf	((c:view_log@i+1))^00h,c
	goto	l3200
	line	137
	
l3184:
;event_logger.c: 136: {;event_logger.c: 137: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	139
;event_logger.c: 139: if (read_switches(0) == 5)
	movlw	(0)&0ffh
	
	call	_read_switches
	xorlw	05h
	btfss	status,2
	goto	u1921
	goto	u1920
u1921:
	goto	l3188
u1920:
	line	140
	
l3186:
;event_logger.c: 140: exit_flag = 1;
	movlw	high(01h)
	movwf	((c:view_log@exit_flag+1))^00h,c
	movlw	low(01h)
	movwf	((c:view_log@exit_flag))^00h,c
	goto	l3200
	line	141
	
l3188:
;event_logger.c: 141: else if (log_total_saved > 9)
	btfsc	((c:_log_total_saved+1))^00h,c,7
	goto	u1931
	movf	((c:_log_total_saved+1))^00h,c,w
	bnz	u1930
	movlw	10
	subwf	 ((c:_log_total_saved))^00h,c,w
	btfss	status,0
	goto	u1931
	goto	u1930

u1931:
	goto	l3194
u1930:
	line	143
	
l3190:
;event_logger.c: 142: {;event_logger.c: 143: if (i < 9)
	btfsc	((c:view_log@i+1))^00h,c,7
	goto	u1940
	movf	((c:view_log@i+1))^00h,c,w
	bnz	u1941
	movlw	9
	subwf	 ((c:view_log@i))^00h,c,w
	btfsc	status,0
	goto	u1941
	goto	u1940

u1941:
	goto	l3200
u1940:
	line	144
	
l3192:
;event_logger.c: 144: i++;
	infsnz	((c:view_log@i))^00h,c
	incf	((c:view_log@i+1))^00h,c
	goto	l3200
	line	146
	
l3194:
;event_logger.c: 146: else if (i < log_iter)
		movf	((c:_log_iter))^00h,c,w
	subwf	((c:view_log@i))^00h,c,w
	movf	((c:view_log@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_view_log+0+0)^00h,c
	movf	((c:_log_iter+1))^00h,c,w
	xorlw	80h
	subwfb	(??_view_log+0+0)^00h,c,w
	btfsc	status,0
	goto	u1951
	goto	u1950

u1951:
	goto	l3200
u1950:
	goto	l3192
	line	127
	
l3198:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3180
	xorlw	5^4	; case 5
	skipnz
	goto	l3184
	goto	l3200

	line	120
	
l3200:
	movf	((c:view_log@exit_flag))^00h,c,w
iorwf	((c:view_log@exit_flag+1))^00h,c,w
	btfsc	status,2
	goto	u1961
	goto	u1960

u1961:
	goto	l3172
u1960:
	line	151
	
l3202:
;event_logger.c: 150: };event_logger.c: 151: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	152
	
l194:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_print_log_to_clcd

;; *************** function _print_log_to_clcd *****************
;; Defined at:
;;		line 97 in file "event_logger.c"
;; Parameters:    Size  Location     Type
;;  LINE            1    wreg     unsigned char 
;;  iter            1   10[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  LINE            1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_putch
;;		_read_external_eeprom
;; This function is called by:
;;		_view_log
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	97
global __ptext10
__ptext10:
psect	text10
	file	"event_logger.c"
	line	97
	
_print_log_to_clcd:
;incstack = 0
	callstack 24
;print_log_to_clcd@LINE stored from wreg
	movwf	((c:print_log_to_clcd@LINE))^00h,c
	line	99
	
l2894:
;event_logger.c: 99: clcd_putch(read_external_eeprom(iter * 10 + 0), LINE + 2);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(02h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	100
;event_logger.c: 100: clcd_putch(read_external_eeprom(iter * 10 + 1), LINE + 3);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(03h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	incf	(prodl)^0f00h,c,w
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	101
	
l2896:
;event_logger.c: 101: clcd_putch(':', LINE + 4);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(04h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	102
	
l2898:
;event_logger.c: 102: clcd_putch(read_external_eeprom(iter * 10 + 2), LINE + 5);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(05h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(02h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	103
	
l2900:
;event_logger.c: 103: clcd_putch(read_external_eeprom(iter * 10 + 3), LINE + 6);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(06h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(03h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	104
	
l2902:
;event_logger.c: 104: clcd_putch(':', LINE + 7);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(07h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(03Ah)&0ffh
	
	call	_clcd_putch
	line	105
;event_logger.c: 105: clcd_putch(read_external_eeprom(iter * 10 + 4), LINE + 8);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(08h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	106
;event_logger.c: 106: clcd_putch(read_external_eeprom(iter * 10 + 5), LINE + 9);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(09h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	107
	
l2904:
;event_logger.c: 107: clcd_putch(' ', LINE + 10);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Ah)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	108
	
l2906:
;event_logger.c: 108: clcd_putch(read_external_eeprom(iter * 10 + 6), LINE + 11);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Bh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	109
	
l2908:
;event_logger.c: 109: clcd_putch(read_external_eeprom(iter * 10 + 7), LINE + 12);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Ch)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	110
	
l2910:
;event_logger.c: 110: clcd_putch(' ', LINE + 13);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Dh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	111
;event_logger.c: 111: clcd_putch(read_external_eeprom(iter * 10 + 8), LINE + 14);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Eh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(08h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	112
;event_logger.c: 112: clcd_putch(read_external_eeprom(iter * 10 + 9), LINE + 15);
	movf	((c:print_log_to_clcd@LINE))^00h,c,w
	addlw	low(0Fh)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:print_log_to_clcd@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(09h)
	
	call	_read_external_eeprom
	
	call	_clcd_putch
	line	113
	
l175:
	return	;funcret
	callstack 0
GLOBAL	__end_of_print_log_to_clcd
	__end_of_print_log_to_clcd:
	signat	_print_log_to_clcd,8313
	global	_store_key_log

;; *************** function _store_key_log *****************
;; Defined at:
;;		line 21 in file "event_logger.c"
;; Parameters:    Size  Location     Type
;;  gear            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  gear            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awmod
;;		_write_external_eeprom
;; This function is called by:
;;		_go_to_menu
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	21
global __ptext11
__ptext11:
psect	text11
	file	"event_logger.c"
	line	21
	
_store_key_log:
;incstack = 0
	callstack 27
;store_key_log@gear stored from wreg
	movwf	((c:store_key_log@gear))^00h,c
	line	23
	
l3112:
;event_logger.c: 23: write_external_eeprom(log_iter * 10 + 0, time[0]);
	movff	(c:_time),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	
	call	_write_external_eeprom
	line	24
;event_logger.c: 24: write_external_eeprom(log_iter * 10 + 1, time[1]);
	movff	0+((c:_time)+01h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	incf	(prodl)^0f00h,c,w
	
	call	_write_external_eeprom
	line	25
;event_logger.c: 25: write_external_eeprom(log_iter * 10 + 2, time[3]);
	movff	0+((c:_time)+03h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(02h)
	
	call	_write_external_eeprom
	line	26
;event_logger.c: 26: write_external_eeprom(log_iter * 10 + 3, time[4]);
	movff	0+((c:_time)+04h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(03h)
	
	call	_write_external_eeprom
	line	27
;event_logger.c: 27: write_external_eeprom(log_iter * 10 + 4, time[6]);
	movff	0+((c:_time)+06h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	
	call	_write_external_eeprom
	line	28
;event_logger.c: 28: write_external_eeprom(log_iter * 10 + 5, time[7]);
	movff	0+((c:_time)+07h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	
	call	_write_external_eeprom
	line	30
	
l3114:
;event_logger.c: 30: if (gear == 'C')
		movlw	67
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1831
	goto	u1830

u1831:
	goto	l3118
u1830:
	line	32
	
l3116:
;event_logger.c: 31: {;event_logger.c: 32: write_external_eeprom(log_iter * 10 + 6, ' ');
	movlw	low(020h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	33
;event_logger.c: 33: write_external_eeprom(log_iter * 10 + 7, 'C');
	movlw	low(043h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	34
;event_logger.c: 34: }
	goto	l156
	line	35
	
l3118:
;event_logger.c: 35: else if (gear == 'O')
		movlw	79
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1841
	goto	u1840

u1841:
	goto	l3122
u1840:
	line	37
	
l3120:
;event_logger.c: 36: {;event_logger.c: 37: write_external_eeprom(log_iter * 10 + 6, 'O');
	movlw	low(04Fh)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	38
;event_logger.c: 38: write_external_eeprom(log_iter * 10 + 7, 'N');
	movlw	low(04Eh)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	39
;event_logger.c: 39: }
	goto	l156
	line	40
	
l3122:
;event_logger.c: 40: else if(gear == 'P')
		movlw	80
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1851
	goto	u1850

u1851:
	goto	l3126
u1850:
	line	42
	
l3124:
;event_logger.c: 41: {;event_logger.c: 42: write_external_eeprom(log_iter * 10 + 6, 'P');
	movlw	low(050h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	43
;event_logger.c: 43: write_external_eeprom(log_iter * 10 + 7, 'A');
	movlw	low(041h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	44
;event_logger.c: 44: }
	goto	l156
	line	45
	
l3126:
;event_logger.c: 45: else if(gear == 'V')
		movlw	86
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1861
	goto	u1860

u1861:
	goto	l3130
u1860:
	line	47
	
l3128:
;event_logger.c: 46: {;event_logger.c: 47: write_external_eeprom(log_iter * 10 + 6, 'V');
	movlw	low(056h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	48
;event_logger.c: 48: write_external_eeprom(log_iter * 10 + 7, 'L');
	movlw	low(04Ch)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	49
;event_logger.c: 49: }
	goto	l156
	line	50
	
l3130:
;event_logger.c: 50: else if(gear == 'D')
		movlw	68
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1871
	goto	u1870

u1871:
	goto	l3134
u1870:
	line	52
	
l3132:
;event_logger.c: 51: {;event_logger.c: 52: write_external_eeprom(log_iter * 10 + 6, 'D');
	movlw	low(044h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	53
;event_logger.c: 53: write_external_eeprom(log_iter * 10 + 7, 'L');
	movlw	low(04Ch)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	54
;event_logger.c: 54: }
	goto	l156
	line	55
	
l3134:
;event_logger.c: 55: else if(gear == 'X')
		movlw	88
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1881
	goto	u1880

u1881:
	goto	l3138
u1880:
	line	57
	
l3136:
;event_logger.c: 56: {;event_logger.c: 57: write_external_eeprom(log_iter * 10 + 6, 'C');
	movlw	low(043h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	58
;event_logger.c: 58: write_external_eeprom(log_iter * 10 + 7, 'L');
	movlw	low(04Ch)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	59
;event_logger.c: 59: }
	goto	l156
	line	60
	
l3138:
;event_logger.c: 60: else if(gear == 'W')
		movlw	87
	xorwf	((c:store_key_log@gear))^00h,c,w
	btfss	status,2
	goto	u1891
	goto	u1890

u1891:
	goto	l3142
u1890:
	line	62
	
l3140:
;event_logger.c: 61: {;event_logger.c: 62: write_external_eeprom(log_iter * 10 + 6, 'C');
	movlw	low(043h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	63
;event_logger.c: 63: write_external_eeprom(log_iter * 10 + 7, 'P');
	movlw	low(050h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	64
;event_logger.c: 64: }
	goto	l156
	line	67
	
l3142:
;event_logger.c: 65: else;event_logger.c: 66: {;event_logger.c: 67: write_external_eeprom(log_iter * 10 + 6, 'G');
	movlw	low(047h)
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_write_external_eeprom
	line	68
;event_logger.c: 68: write_external_eeprom(log_iter * 10 + 7, gear);
	movff	(c:store_key_log@gear),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_write_external_eeprom
	line	69
	
l156:
	line	71
;event_logger.c: 69: };event_logger.c: 71: write_external_eeprom(log_iter * 10 + 8, speed[0]);
	movff	(c:_speed),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(08h)
	
	call	_write_external_eeprom
	line	72
;event_logger.c: 72: write_external_eeprom(log_iter * 10 + 9, speed[1]);
	movff	0+((c:_speed)+01h),(c:write_external_eeprom@data)
	movf	((c:_log_iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(09h)
	
	call	_write_external_eeprom
	line	74
	
l3144:
;event_logger.c: 74: log_iter = (log_iter + 1) % 10;
	movlw	low(01h)
	addwf	((c:_log_iter))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:_log_iter+1))^00h,c,w
	movwf	1+((c:___awmod@dividend))^00h,c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:_log_iter)
	movff	1+?___awmod,(c:_log_iter+1)
	line	75
	
l3146:
;event_logger.c: 75: log_total_saved++;
	infsnz	((c:_log_total_saved))^00h,c
	incf	((c:_log_total_saved+1))^00h,c
	line	76
	
l169:
	return	;funcret
	callstack 0
GLOBAL	__end_of_store_key_log
	__end_of_store_key_log:
	signat	_store_key_log,4217
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 140 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time_buffer     9   20[COMRAM] unsigned char [9]
;;  seconds         2   37[COMRAM] int 
;;  min             2   35[COMRAM] int 
;;  hour            2   33[COMRAM] int 
;;  field_select    2   31[COMRAM] int 
;;  blinker         2   18[COMRAM] unsigned int 
;;  dummy           1   30[COMRAM] unsigned char 
;;  exit_flag       1   29[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        21       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        23       0       0       0       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay
;;		_read_ds1307
;;		_read_switches
;;		_write_ds1307
;; This function is called by:
;;		_go_to_menu
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	140
global __ptext12
__ptext12:
psect	text12
	file	"main.c"
	line	140
	
_set_time:
;incstack = 0
	callstack 25
	line	142
	
l3312:
;main.c: 142: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	143
	
l3314:
;main.c: 143: clcd_print("Enter New Time", (0x80 + (1)));
		movlw	low(STR_29)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_29)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	148
	
l3316:
;main.c: 145: unsigned char dummy;;main.c: 148: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:set_time@dummy))^00h,c
	line	149
	
l3318:
;main.c: 149: write_ds1307(0x00, dummy | 0x80);
	movf	((c:set_time@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	151
	
l3320:
;main.c: 151: int hour = 0, min = 0, seconds = 0, field_select = 0;
	movlw	high(0)
	movwf	((c:set_time@hour+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@hour))^00h,c
	
l3322:
	movlw	high(0)
	movwf	((c:set_time@min+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@min))^00h,c
	
l3324:
	movlw	high(0)
	movwf	((c:set_time@seconds+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@seconds))^00h,c
	
l3326:
	movlw	high(0)
	movwf	((c:set_time@field_select+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@field_select))^00h,c
	line	152
	
l3328:
;main.c: 152: unsigned int blinker = 0;
	movlw	high(0)
	movwf	((c:set_time@blinker+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@blinker))^00h,c
	line	153
	
l3330:
;main.c: 153: char time_buffer[9] = {0, 0, ':', 0, 0, ':', 0, 0, 0};
	lfsr	2,(set_time@F10423)
	lfsr	1,(set_time@time_buffer)
	movlw	9-1
u2061:
	movff	plusw2,plusw1
	decf	wreg
	bc	u2061

	line	154
	
l3332:
;main.c: 154: char exit_flag = 0;
	movlw	low(0)
	movwf	((c:set_time@exit_flag))^00h,c
	line	156
;main.c: 156: while (!exit_flag)
	goto	l3378
	line	160
	
l3334:
;main.c: 157: {;main.c: 160: time_buffer[0] = ((hour / 10) % 10);
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	(c:set_time@hour),(c:___awdiv@dividend)
	movff	(c:set_time@hour+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	((c:set_time@time_buffer))^00h,c
	line	161
;main.c: 161: time_buffer[1] = hour % 10;
	movff	(c:set_time@hour),(c:___awmod@dividend)
	movff	(c:set_time@hour+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	(0+((c:set_time@time_buffer)+01h))^00h,c
	line	162
;main.c: 162: time_buffer[3] = ((min / 10) % 10);
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	(c:set_time@min),(c:___awdiv@dividend)
	movff	(c:set_time@min+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	(0+((c:set_time@time_buffer)+03h))^00h,c
	line	163
;main.c: 163: time_buffer[4] = min % 10;
	movff	(c:set_time@min),(c:___awmod@dividend)
	movff	(c:set_time@min+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	(0+((c:set_time@time_buffer)+04h))^00h,c
	line	164
;main.c: 164: time_buffer[6] = ((seconds / 10) % 10);
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	movff	(c:set_time@seconds),(c:___awdiv@dividend)
	movff	(c:set_time@seconds+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	(0+((c:set_time@time_buffer)+06h))^00h,c
	line	165
;main.c: 165: time_buffer[7] = seconds % 10;
	movff	(c:set_time@seconds),(c:___awmod@dividend)
	movff	(c:set_time@seconds+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	(0+((c:set_time@time_buffer)+07h))^00h,c
	line	167
;main.c: 167: clcd_putch(time_buffer[0] + '0', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:set_time@time_buffer))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	168
;main.c: 168: clcd_putch(time_buffer[1] + '0', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+01h))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	169
	
l3336:
;main.c: 169: clcd_putch(time_buffer[2], (0xC0 + (2)));
	movlw	low(0C2h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+02h))^00h,c,w
	
	call	_clcd_putch
	line	170
	
l3338:
;main.c: 170: clcd_putch(time_buffer[3] + '0', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+03h))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	171
	
l3340:
;main.c: 171: clcd_putch(time_buffer[4] + '0', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+04h))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	172
	
l3342:
;main.c: 172: clcd_putch(time_buffer[5], (0xC0 + (5)));
	movlw	low(0C5h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+05h))^00h,c,w
	
	call	_clcd_putch
	line	173
;main.c: 173: clcd_putch(time_buffer[6] + '0', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+06h))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	174
;main.c: 174: clcd_putch(time_buffer[7] + '0', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	(0+((c:set_time@time_buffer)+07h))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	176
	
l3344:
;main.c: 176: if (blinker++ <= 20000)
	movf	((c:set_time@blinker))^00h,c,w
	movwf	(??_set_time+0+0)^00h,c
	movf	((c:set_time@blinker+1))^00h,c,w
	movwf	1+(??_set_time+0+0)^00h,c
	infsnz	((c:set_time@blinker))^00h,c
	incf	((c:set_time@blinker+1))^00h,c
		movlw	33
	subwf	 (??_set_time+0+0)^00h,c,w
	movlw	78
	subwfb	(??_set_time+0+1)^00h,c,w
	btfsc	status,0
	goto	u2071
	goto	u2070

u2071:
	goto	l3376
u2070:
	goto	l3356
	line	181
	
l3348:
;main.c: 181: clcd_putch(' ', (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	182
;main.c: 182: clcd_putch(' ', (0xC0 + (1)));
	movlw	low(0C1h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	183
;main.c: 183: break;
	goto	l3376
	line	185
	
l3350:
;main.c: 185: clcd_putch(' ', (0xC0 + (3)));
	movlw	low(0C3h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	186
;main.c: 186: clcd_putch(' ', (0xC0 + (4)));
	movlw	low(0C4h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	187
;main.c: 187: break;
	goto	l3376
	line	189
	
l3352:
;main.c: 189: clcd_putch(' ', (0xC0 + (6)));
	movlw	low(0C6h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	190
;main.c: 190: clcd_putch(' ', (0xC0 + (7)));
	movlw	low(0C7h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	191
;main.c: 191: break;
	goto	l3376
	line	178
	
l3356:
	movff	(c:set_time@field_select),??_set_time+0+0
	movff	(c:set_time@field_select+1),??_set_time+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4042
	goto	l3376
	
l4042:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3348
	xorlw	1^0	; case 1
	skipnz
	goto	l3350
	xorlw	2^1	; case 2
	skipnz
	goto	l3352
	goto	l3376

	line	198
	
l3358:
;main.c: 198: field_select = (field_select + 1) % 3;
	movlw	low(01h)
	addwf	((c:set_time@field_select))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:set_time@field_select+1))^00h,c,w
	movwf	1+((c:___awmod@dividend))^00h,c
	movlw	high(03h)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03h)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:set_time@field_select)
	movff	1+?___awmod,(c:set_time@field_select+1)
	line	199
;main.c: 199: break;
	goto	l3378
	line	202
	
l3360:
;main.c: 201: {;main.c: 202: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	204
;main.c: 204: if (read_switches(0) == 4)
	movlw	(0)&0ffh
	
	call	_read_switches
	xorlw	04h
	btfss	status,2
	goto	u2081
	goto	u2080
u2081:
	goto	l3372
u2080:
	line	205
	
l3362:
;main.c: 205: exit_flag = 1;
	movlw	low(01h)
	movwf	((c:set_time@exit_flag))^00h,c
	goto	l3378
	line	211
	
l3364:
;main.c: 211: hour = (hour + 1) % 24;
	movlw	low(01h)
	addwf	((c:set_time@hour))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:set_time@hour+1))^00h,c,w
	movwf	1+((c:___awmod@dividend))^00h,c
	movlw	high(018h)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(018h)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:set_time@hour)
	movff	1+?___awmod,(c:set_time@hour+1)
	line	212
;main.c: 212: break;
	goto	l3378
	line	214
	
l3366:
;main.c: 214: min = (min + 1) % 60;
	movlw	low(01h)
	addwf	((c:set_time@min))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:set_time@min+1))^00h,c,w
	movwf	1+((c:___awmod@dividend))^00h,c
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:set_time@min)
	movff	1+?___awmod,(c:set_time@min+1)
	line	215
;main.c: 215: break;
	goto	l3378
	line	217
	
l3368:
;main.c: 217: seconds = (seconds + 1) % 60;
	movlw	low(01h)
	addwf	((c:set_time@seconds))^00h,c,w
	movwf	((c:___awmod@dividend))^00h,c
	movlw	high(01h)
	addwfc	((c:set_time@seconds+1))^00h,c,w
	movwf	1+((c:___awmod@dividend))^00h,c
	movlw	high(03Ch)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:set_time@seconds)
	movff	1+?___awmod,(c:set_time@seconds+1)
	line	218
;main.c: 218: break;
	goto	l3378
	line	208
	
l3372:
	movff	(c:set_time@field_select),??_set_time+0+0
	movff	(c:set_time@field_select+1),??_set_time+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4044
	goto	l504
	
l4044:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_set_time+0+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l3364
	xorlw	1^0	; case 1
	skipnz
	goto	l3366
	xorlw	2^1	; case 2
	skipnz
	goto	l3368
	goto	l504

	line	195
	
l3376:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3360
	xorlw	5^4	; case 5
	skipnz
	goto	l3358
	goto	l3378

	line	223
	
l504:
	line	156
	
l3378:
	movf	((c:set_time@exit_flag))^00h,c,w
	btfsc	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l3334
u2090:
	line	229
	
l3380:
;main.c: 224: };main.c: 227: static unsigned char clock_reg[3];;main.c: 229: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:set_time@clock_reg))^00h,c
	line	230
;main.c: 230: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:set_time@clock_reg)+01h))^00h,c
	line	231
;main.c: 231: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:set_time@clock_reg)+02h))^00h,c
	line	235
	
l3382:
;main.c: 235: write_ds1307(0x02, (clock_reg[0] & 0xCF) | (hour / 10 << 4));
	movff	(c:set_time@hour),(c:___awdiv@dividend)
	movff	(c:set_time@hour+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	swapf	(0+?___awdiv)^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(0+?___awdiv)^00h,c
	movf	((c:set_time@clock_reg))^00h,c,w
	andlw	low(0CFh)
	iorwf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	236
	
l3384:
;main.c: 236: write_ds1307(0x02, (clock_reg[0] & 0xF0) | (hour % 10));
	movff	(c:set_time@hour),(c:___awmod@dividend)
	movff	(c:set_time@hour+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	((c:set_time@clock_reg))^00h,c,w
	andlw	low(0F0h)
	iorwf	(0+?___awmod)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	239
	
l3386:
;main.c: 239: write_ds1307(0x01, (clock_reg[1] & 0x0F) | (min / 10 << 4));
	movff	(c:set_time@min),(c:___awdiv@dividend)
	movff	(c:set_time@min+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	swapf	(0+?___awdiv)^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(0+?___awdiv)^00h,c
	movf	(0+((c:set_time@clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	iorwf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	240
	
l3388:
;main.c: 240: write_ds1307(0x01, (clock_reg[1] & 0xF0) | min % 10);
	movff	(c:set_time@min),(c:___awmod@dividend)
	movff	(c:set_time@min+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+((c:set_time@clock_reg)+01h))^00h,c,w
	andlw	low(0F0h)
	iorwf	(0+?___awmod)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	243
	
l3390:
;main.c: 243: write_ds1307(0x00, (clock_reg[2] & 0x0F) | (seconds / 10 << 4));
	movff	(c:set_time@seconds),(c:___awdiv@dividend)
	movff	(c:set_time@seconds+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	swapf	(0+?___awdiv)^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	(0+?___awdiv)^00h,c
	movf	(0+((c:set_time@clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	iorwf	(0+?___awdiv)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	244
	
l3392:
;main.c: 244: write_ds1307(0x00, (clock_reg[2] & 0xF0) | seconds % 10);
	movff	(c:set_time@seconds),(c:___awmod@dividend)
	movff	(c:set_time@seconds+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+((c:set_time@clock_reg)+02h))^00h,c,w
	andlw	low(0F0h)
	iorwf	(0+?___awmod)^00h,c,w
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	247
;main.c: 247: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:set_time@dummy))^00h,c
	line	248
	
l3394:
;main.c: 248: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:set_time@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	250
	
l3396:
;main.c: 250: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	251
	
l3398:
;main.c: 251: clcd_print("TIME UPDATED!", (0x80 + (1)));
		movlw	low(STR_30)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_30)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	252
	
l3400:
;main.c: 252: delay(5);
	movlw	high(05h)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(05h)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	253
	
l3402:
;main.c: 253: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	254
	
l516:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 58 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	58
global __ptext13
__ptext13:
psect	text13
	file	"ds1307.c"
	line	58
	
_write_ds1307:
;incstack = 0
	callstack 26
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	60
	
l2866:
;ds1307.c: 60: i2c_start();
	call	_i2c_start	;wreg free
	line	61
	
l2868:
;ds1307.c: 61: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	62
	
l2870:
;ds1307.c: 62: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	63
	
l2872:
;ds1307.c: 63: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	64
	
l2874:
;ds1307.c: 64: i2c_stop();
	call	_i2c_stop	;wreg free
	line	65
	
l125:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] int 
;;  divisor         2   10[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMRAM] unsigned char 
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_store_key_log
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
	line	7
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 29
	line	12
	
l3038:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l3040:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u1760
	goto	u1761

u1761:
	goto	l3046
u1760:
	line	14
	
l3042:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l3044:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l3046:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u1770
	goto	u1771

u1771:
	goto	l3050
u1770:
	line	18
	
l3048:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l3050:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u1781
	goto	u1780

u1781:
	goto	l3066
u1780:
	line	20
	
l3052:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l3056
	line	22
	
l3054:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l3056:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u1791
	goto	u1790
u1791:
	goto	l3054
u1790:
	line	26
	
l3058:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u1801
	goto	u1800

u1801:
	goto	l3062
u1800:
	line	27
	
l3060:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l3062:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l3064:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l3058
	line	31
	
l3066:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u1811
	goto	u1810
u1811:
	goto	l3070
u1810:
	line	32
	
l3068:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l3070:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l887:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
	line	7
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 28
	line	13
	
l2994:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l2996:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u1700
	goto	u1701

u1701:
	goto	l3002
u1700:
	line	15
	
l2998:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l3000:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l3002:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u1710
	goto	u1711

u1711:
	goto	l3008
u1710:
	line	19
	
l3004:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l3006:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l3008:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l3010:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u1721
	goto	u1720

u1721:
	goto	l3030
u1720:
	line	24
	
l3012:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l3016
	line	26
	
l3014:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l3016:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l3014
u1730:
	line	30
	
l3018:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l3020:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u1741
	goto	u1740

u1741:
	goto	l3026
u1740:
	line	32
	
l3022:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l3024:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l3026:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l3028:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l3018
	line	38
	
l3030:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u1751
	goto	u1750
u1751:
	goto	l3034
u1750:
	line	39
	
l3032:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l3034:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l874:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_print_to_console

;; *************** function _print_to_console *****************
;; Defined at:
;;		line 78 in file "event_logger.c"
;; Parameters:    Size  Location     Type
;;  iter            2    3[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_putch
;;		_read_external_eeprom
;; This function is called by:
;;		_go_to_menu
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"event_logger.c"
	line	78
global __ptext16
__ptext16:
psect	text16
	file	"event_logger.c"
	line	78
	
_print_to_console:
;incstack = 0
	callstack 25
	line	80
	
l3148:
;event_logger.c: 80: putch(read_external_eeprom(iter * 10 + 0));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	
	call	_read_external_eeprom
	
	call	_putch
	line	81
;event_logger.c: 81: putch(read_external_eeprom(iter * 10 + 1));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	incf	(prodl)^0f00h,c,w
	
	call	_read_external_eeprom
	
	call	_putch
	line	82
	
l3150:
;event_logger.c: 82: putch(':');
	movlw	(03Ah)&0ffh
	
	call	_putch
	line	83
	
l3152:
;event_logger.c: 83: putch(read_external_eeprom(iter * 10 + 2));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(02h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	84
	
l3154:
;event_logger.c: 84: putch(read_external_eeprom(iter * 10 + 3));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(03h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	85
	
l3156:
;event_logger.c: 85: putch(':');
	movlw	(03Ah)&0ffh
	
	call	_putch
	line	86
;event_logger.c: 86: putch(read_external_eeprom(iter * 10 + 4));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(04h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	87
;event_logger.c: 87: putch(read_external_eeprom(iter * 10 + 5));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(05h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	88
	
l3158:
;event_logger.c: 88: putch(' ');
	movlw	(020h)&0ffh
	
	call	_putch
	line	89
	
l3160:
;event_logger.c: 89: putch(read_external_eeprom(iter * 10 + 6));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(06h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	90
	
l3162:
;event_logger.c: 90: putch(read_external_eeprom(iter * 10 + 7));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(07h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	91
	
l3164:
;event_logger.c: 91: putch(' ');
	movlw	(020h)&0ffh
	
	call	_putch
	line	92
;event_logger.c: 92: putch(read_external_eeprom(iter * 10 + 8));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(08h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	93
;event_logger.c: 93: putch(read_external_eeprom(iter * 10 + 9));
	movf	((c:print_to_console@iter))^00h,c,w
	mullw	0Ah
	movf	(prodl)^0f00h,c,w
	addlw	low(09h)
	
	call	_read_external_eeprom
	
	call	_putch
	line	94
	
l3166:
;event_logger.c: 94: putch('\n');
	movlw	(0Ah)&0ffh
	
	call	_putch
	line	95
	
l172:
	return	;funcret
	callstack 0
GLOBAL	__end_of_print_to_console
	__end_of_print_to_console:
	signat	_print_to_console,4217
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 87 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_to_console
;;		_go_to_menu
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	87
global __ptext17
__ptext17:
psect	text17
	file	"uart.c"
	line	87
	
_putch:
;incstack = 0
	callstack 29
;putch@byte stored from wreg
	movwf	((c:putch@byte))^00h,c
	line	91
	
l2890:
	line	94
;uart.c: 91: while(!TXIF)
	
l622:
	line	91
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1511
	goto	u1510
u1511:
	goto	l622
u1510:
	line	95
	
l2892:
;uart.c: 94: };uart.c: 95: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	96
	
l625:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 114 in file "password.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2   16[COMRAM] unsigned int 
;;  j               2   27[COMRAM] int 
;;  j               2   23[COMRAM] int 
;;  j               2   25[COMRAM] int 
;;  password        4   18[COMRAM] unsigned char [4]
;;  confirm         4   12[COMRAM] unsigned char [4]
;;  i               1   29[COMRAM] unsigned char 
;;  exit_flag       1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        18       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_delay
;;		_read_switches
;;		_write_external_eeprom
;; This function is called by:
;;		_go_to_menu
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"password.c"
	line	114
global __ptext18
__ptext18:
psect	text18
	file	"password.c"
	line	114
	
_change_password:
;incstack = 0
	callstack 26
	line	116
	
l3204:
;password.c: 116: char exit_flag = 0;
	movlw	low(0)
	movwf	((c:change_password@exit_flag))^00h,c
	line	117
;password.c: 117: while (!exit_flag)
	goto	l3310
	line	119
	
l3206:
;password.c: 118: {;password.c: 119: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	120
	
l3208:
;password.c: 120: char i = 0;
	movlw	low(0)
	movwf	((c:change_password@i))^00h,c
	line	121
	
l3210:
;password.c: 121: char password[4] = {0}, confirm[4] = {0};
	movlw	low(0)
	movwf	((c:change_password@password))^00h,c
	movlw	high(0)
	movwf	((c:change_password@password+1))^00h,c
	movlw	low highword(0)
	movwf	((c:change_password@password+2))^00h,c
	movlw	high highword(0)
	movwf	((c:change_password@password+3))^00h,c
	
l3212:
	movlw	low(0)
	movwf	((c:change_password@confirm))^00h,c
	movlw	high(0)
	movwf	((c:change_password@confirm+1))^00h,c
	movlw	low highword(0)
	movwf	((c:change_password@confirm+2))^00h,c
	movlw	high highword(0)
	movwf	((c:change_password@confirm+3))^00h,c
	line	122
;password.c: 122: while (i < 4)
	goto	l3230
	line	124
	
l3214:
;password.c: 123: {;password.c: 124: clcd_print("ENTER NEW PASSWORD", (0x80 + (0)));
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_11)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	126
;password.c: 126: switch (read_switches(1))
	goto	l3228
	line	130
	
l3216:
;password.c: 129: {;password.c: 130: clcd_putch('*', (0xC0 + (0 + i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	131
	
l3218:
;password.c: 131: password[i++] = 1;
	movf	((c:change_password@i))^00h,c,w
	addlw	low(change_password@password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	movwf	indf2
	
l3220:
	incf	((c:change_password@i))^00h,c
	line	133
;password.c: 132: };password.c: 133: break;
	goto	l3230
	line	136
	
l3222:
;password.c: 135: {;password.c: 136: clcd_putch('*', (0xC0 + (0 + i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	137
	
l3224:
;password.c: 137: password[i++] = 0;
	movf	((c:change_password@i))^00h,c,w
	addlw	low(change_password@password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l3220
	line	126
	
l3228:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3222
	xorlw	5^4	; case 5
	skipnz
	goto	l3216
	goto	l3230

	line	122
	
l3230:
		movlw	04h-1
	cpfsgt	((c:change_password@i))^00h,c
	goto	u1971
	goto	u1970

u1971:
	goto	l3214
u1970:
	line	142
	
l3232:
;password.c: 140: };password.c: 142: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	143
	
l3234:
;password.c: 143: i = 0;
	movlw	low(0)
	movwf	((c:change_password@i))^00h,c
	line	145
;password.c: 145: while (i < 4)
	goto	l3252
	line	147
	
l3236:
;password.c: 146: {;password.c: 147: clcd_print("RE-ENTER PASSWORDR", (0x80 + (2)));
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(082h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	149
;password.c: 149: switch (read_switches(1))
	goto	l3250
	line	153
	
l3238:
;password.c: 152: {;password.c: 153: clcd_putch('*', (0xC0 + (0 + i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	154
	
l3240:
;password.c: 154: confirm[i++] = 1;
	movf	((c:change_password@i))^00h,c,w
	addlw	low(change_password@confirm)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	movwf	indf2
	
l3242:
	incf	((c:change_password@i))^00h,c
	line	156
;password.c: 155: };password.c: 156: break;
	goto	l3252
	line	159
	
l3244:
;password.c: 158: {;password.c: 159: clcd_putch('*', (0xC0 + (0 + i)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	160
	
l3246:
;password.c: 160: confirm[i++] = 0;
	movf	((c:change_password@i))^00h,c,w
	addlw	low(change_password@confirm)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l3242
	line	149
	
l3250:
	movlw	(01h)&0ffh
	
	call	_read_switches
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3244
	xorlw	5^4	; case 5
	skipnz
	goto	l3238
	goto	l3252

	line	145
	
l3252:
		movlw	04h-1
	cpfsgt	((c:change_password@i))^00h,c
	goto	u1981
	goto	u1980

u1981:
	goto	l3236
u1980:
	line	165
	
l3254:
;password.c: 163: };password.c: 165: i = 0;
	movlw	low(0)
	movwf	((c:change_password@i))^00h,c
	line	166
;password.c: 166: for (int j = 0; j < 4; j++)
	movlw	high(0)
	movwf	((c:change_password@j+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@j))^00h,c
	line	168
	
l3260:
;password.c: 167: {;password.c: 168: if (confirm[j] == password[j])
	movf	((c:change_password@j))^00h,c,w
	addlw	low(change_password@password)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:change_password@j))^00h,c,w
	addlw	low(change_password@confirm)
	movwf	fsr1l
	clrf	fsr1h
	movf	postinc2,w
xorwf	postinc1,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l271
u1990:
	line	169
	
l3262:
;password.c: 169: i++;
	incf	((c:change_password@i))^00h,c
	
l271:
	line	166
	infsnz	((c:change_password@j))^00h,c
	incf	((c:change_password@j+1))^00h,c
	
l3264:
	btfsc	((c:change_password@j+1))^00h,c,7
	goto	u2001
	movf	((c:change_password@j+1))^00h,c,w
	bnz	u2000
	movlw	4
	subwf	 ((c:change_password@j))^00h,c,w
	btfss	status,0
	goto	u2001
	goto	u2000

u2001:
	goto	l3260
u2000:
	line	172
	
l3266:
;password.c: 170: };password.c: 172: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	174
	
l3268:
;password.c: 174: if (i == 4)
		movlw	4
	xorwf	((c:change_password@i))^00h,c,w
	btfss	status,2
	goto	u2011
	goto	u2010

u2011:
	goto	l3294
u2010:
	line	176
	
l3270:
;password.c: 175: {;password.c: 176: for (int j = 0; j < 4; j++)
	movlw	high(0)
	movwf	((c:change_password@j_205+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@j_205))^00h,c
	line	177
	
l3276:
;password.c: 177: write_external_eeprom(100 + j, password[j]);
	movf	((c:change_password@j_205))^00h,c,w
	addlw	low(change_password@password)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:change_password@j_205))^00h,c,w
	addlw	low(064h)
	
	call	_write_external_eeprom
	line	176
	
l3278:
	infsnz	((c:change_password@j_205))^00h,c
	incf	((c:change_password@j_205+1))^00h,c
	
l3280:
	btfsc	((c:change_password@j_205+1))^00h,c,7
	goto	u2021
	movf	((c:change_password@j_205+1))^00h,c,w
	bnz	u2020
	movlw	4
	subwf	 ((c:change_password@j_205))^00h,c,w
	btfss	status,0
	goto	u2021
	goto	u2020

u2021:
	goto	l3276
u2020:
	line	179
	
l3282:
;password.c: 179: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	181
	
l3284:
;password.c: 181: clcd_print("PASSWORD STORED", (0x80 + (0)));
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	182
	
l3286:
;password.c: 182: clcd_print("SUCCESSFULLY!", (0xC0 + (1)));
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	184
	
l3288:
;password.c: 184: delay(10);
	movlw	high(0Ah)
	movwf	((c:delay@ms+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:delay@ms))^00h,c
	call	_delay	;wreg free
	line	185
	
l3290:
;password.c: 185: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	187
	
l3292:
;password.c: 187: exit_flag = 1;
	movlw	low(01h)
	movwf	((c:change_password@exit_flag))^00h,c
	line	188
;password.c: 188: }
	goto	l3296
	line	191
	
l3294:
;password.c: 189: else;password.c: 190: {;password.c: 191: clcd_print("PASSWORD NOT MATCHING", (0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	192
;password.c: 192: clcd_print("RETRY ENTERING", (0xC0 + (1)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	195
	
l3296:
;password.c: 193: };password.c: 195: for (int j = 0; j < 10; j++)
	movlw	high(0)
	movwf	((c:change_password@j_210+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@j_210))^00h,c
	line	196
	
l3302:
;password.c: 196: for (unsigned int wait = 50000; wait--;);
	movlw	high(0C350h)
	movwf	((c:change_password@wait+1))^00h,c
	movlw	low(0C350h)
	movwf	((c:change_password@wait))^00h,c
	
l3304:
	decf	((c:change_password@wait))^00h,c
	btfss	status,0
	decf	((c:change_password@wait+1))^00h,c
		incf	((c:change_password@wait))^00h,c,w
	bnz	u2031
	incf	((c:change_password@wait+1))^00h,c,w
	btfss	status,2
	goto	u2031
	goto	u2030

u2031:
	goto	l3304
u2030:
	line	195
	
l3306:
	infsnz	((c:change_password@j_210))^00h,c
	incf	((c:change_password@j_210+1))^00h,c
	
l3308:
	btfsc	((c:change_password@j_210+1))^00h,c,7
	goto	u2041
	movf	((c:change_password@j_210+1))^00h,c,w
	bnz	u2040
	movlw	10
	subwf	 ((c:change_password@j_210))^00h,c,w
	btfss	status,0
	goto	u2041
	goto	u2040

u2041:
	goto	l3302
u2040:
	line	117
	
l3310:
	movf	((c:change_password@exit_flag))^00h,c,w
	btfsc	status,2
	goto	u2051
	goto	u2050
u2051:
	goto	l3206
u2050:
	line	198
	
l282:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,89
	global	_write_external_eeprom

;; *************** function _write_external_eeprom *****************
;; Defined at:
;;		line 13 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    4[COMRAM] unsigned char 
;;  wait            2    2[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_store_key_log
;;		_change_password
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	13
global __ptext19
__ptext19:
psect	text19
	file	"eeprom.c"
	line	13
	
_write_external_eeprom:
;incstack = 0
	callstack 27
;write_external_eeprom@address stored from wreg
	movwf	((c:write_external_eeprom@address))^00h,c
	line	15
	
l2876:
;eeprom.c: 15: i2c_start();
	call	_i2c_start	;wreg free
	line	16
	
l2878:
;eeprom.c: 16: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	17
	
l2880:
;eeprom.c: 17: i2c_write(address);
	movf	((c:write_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	18
	
l2882:
;eeprom.c: 18: i2c_write(data);
	movf	((c:write_external_eeprom@data))^00h,c,w
	
	call	_i2c_write
	line	19
	
l2884:
;eeprom.c: 19: i2c_stop();
	call	_i2c_stop	;wreg free
	line	20
	
l2886:
;eeprom.c: 20: for (unsigned int wait = 3000; wait--;);
	movlw	high(0BB8h)
	movwf	((c:write_external_eeprom@wait+1))^00h,c
	movlw	low(0BB8h)
	movwf	((c:write_external_eeprom@wait))^00h,c
	
l2888:
	decf	((c:write_external_eeprom@wait))^00h,c
	btfss	status,0
	decf	((c:write_external_eeprom@wait+1))^00h,c
		incf	((c:write_external_eeprom@wait))^00h,c,w
	bnz	u1501
	incf	((c:write_external_eeprom@wait+1))^00h,c,w
	btfss	status,2
	goto	u1501
	goto	u1500

u1501:
	goto	l2888
u1500:
	line	21
	
l360:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_external_eeprom
	__end_of_write_external_eeprom:
	signat	_write_external_eeprom,8313
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 256 in file "main.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  wait            2    3[COMRAM] unsigned int 
;;  i               2    5[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_log
;;		_change_password
;;		_go_to_menu
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	256
global __ptext20
__ptext20:
psect	text20
	file	"main.c"
	line	256
	
_delay:
;incstack = 0
	callstack 28
	line	258
	
l2920:
;main.c: 258: for (int i = 0; i < ms; i++)
	movlw	high(0)
	movwf	((c:delay@i+1))^00h,c
	movlw	low(0)
	movwf	((c:delay@i))^00h,c
	goto	l2928
	line	259
	
l2922:
;main.c: 259: for (unsigned int wait = 50000; wait--;)
	movlw	high(0C350h)
	movwf	((c:delay@wait+1))^00h,c
	movlw	low(0C350h)
	movwf	((c:delay@wait))^00h,c
	
l2924:
	decf	((c:delay@wait))^00h,c
	btfss	status,0
	decf	((c:delay@wait+1))^00h,c
		incf	((c:delay@wait))^00h,c,w
	bnz	u1551
	incf	((c:delay@wait+1))^00h,c,w
	btfss	status,2
	goto	u1551
	goto	u1550

u1551:
	goto	l2924
u1550:
	line	258
	
l2926:
	infsnz	((c:delay@i))^00h,c
	incf	((c:delay@i+1))^00h,c
	
l2928:
		movf	((c:delay@ms))^00h,c,w
	subwf	((c:delay@i))^00h,c,w
	movf	((c:delay@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_delay+0+0)^00h,c
	movf	((c:delay@ms+1))^00h,c,w
	xorlw	80h
	subwfb	(??_delay+0+0)^00h,c,w
	btfss	status,0
	goto	u1561
	goto	u1560

u1561:
	goto	l2922
u1560:
	line	261
	
l525:
	return	;funcret
	callstack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4217
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 110 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	110
global __ptext21
__ptext21:
psect	text21
	file	"main.c"
	line	110
	
_get_time:
;incstack = 0
	callstack 26
	line	114
	
l3940:
;main.c: 112: static unsigned char clock_reg[3];;main.c: 114: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:get_time@clock_reg))^00h,c
	line	115
;main.c: 115: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:get_time@clock_reg)+01h))^00h,c
	line	116
;main.c: 116: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:get_time@clock_reg)+02h))^00h,c
	line	118
	
l3942:
;main.c: 118: time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:get_time@clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movwf	((c:_time))^00h,c
	line	119
	
l3944:
;main.c: 119: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:get_time@clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+01h))^00h,c
	line	121
	
l3946:
;main.c: 121: time[2] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:_time)+02h))^00h,c
	line	123
	
l3948:
;main.c: 123: time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:get_time@clock_reg)+01h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+03h))^00h,c
	line	124
	
l3950:
;main.c: 124: time[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:get_time@clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+04h))^00h,c
	line	126
	
l3952:
;main.c: 126: time[5] = ':';
	movlw	low(03Ah)
	movwf	(0+((c:_time)+05h))^00h,c
	line	127
	
l3954:
;main.c: 127: time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	swapf	(0+((c:get_time@clock_reg)+02h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+06h))^00h,c
	line	128
	
l3956:
;main.c: 128: time[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:get_time@clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+((c:_time)+07h))^00h,c
	line	129
	
l3958:
;main.c: 129: time[8] = '\0';
	movlw	low(0)
	movwf	(0+((c:_time)+08h))^00h,c
	line	130
	
l486:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 67 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	67
global __ptext22
__ptext22:
psect	text22
	file	"ds1307.c"
	line	67
	
_read_ds1307:
;incstack = 0
	callstack 25
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	71
	
l2852:
;ds1307.c: 69: unsigned char data;;ds1307.c: 71: i2c_start();
	call	_i2c_start	;wreg free
	line	72
	
l2854:
;ds1307.c: 72: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	73
	
l2856:
;ds1307.c: 73: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	74
	
l2858:
;ds1307.c: 74: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	75
	
l2860:
;ds1307.c: 75: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	76
;ds1307.c: 76: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	77
	
l2862:
;ds1307.c: 77: i2c_stop();
	call	_i2c_stop	;wreg free
	line	79
;ds1307.c: 79: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	80
	
l128:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_get_speed

;; *************** function _get_speed *****************
;; Defined at:
;;		line 132 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  adc_reg_val     2   56[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lwdiv
;;		___lwmod
;;		___lwtoft
;;		_read_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	132
global __ptext23
__ptext23:
psect	text23
	file	"main.c"
	line	132
	
_get_speed:
;incstack = 0
	callstack 28
	line	134
	
l3960:
;main.c: 134: unsigned short adc_reg_val = (float)read_adc(0x04) / 1023 * 99;
	movlw	low(float24(99.000000000000000))
	movwf	((c:___ftmul@f2))^00h,c
	movlw	high(float24(99.000000000000000))
	movwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(float24(99.000000000000000))
	movwf	((c:___ftmul@f2+2))^00h,c

	movlw	low(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(1023.0000000000000))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:___lwtoft@c)
	movff	1+?_read_adc,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftdiv@f1)
	movff	1+?___lwtoft,(c:___ftdiv@f1+1)
	movff	2+?___lwtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f1)
	movff	1+?___ftdiv,(c:___ftmul@f1+1)
	movff	2+?___ftdiv,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___fttol@f1)
	movff	1+?___ftmul,(c:___fttol@f1+1)
	movff	2+?___ftmul,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:get_speed@adc_reg_val)
	movff	1+?___fttol,(c:get_speed@adc_reg_val+1)
	line	135
;main.c: 135: speed[0] = '0' + adc_reg_val / 10;
	movff	(c:get_speed@adc_reg_val),(c:___lwdiv@dividend)
	movff	(c:get_speed@adc_reg_val+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	movwf	((c:_speed))^00h,c
	line	136
;main.c: 136: speed[1] = '0' + adc_reg_val % 10;
	movff	(c:get_speed@adc_reg_val),(c:___lwmod@dividend)
	movff	(c:get_speed@adc_reg_val+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movwf	(0+((c:_speed)+01h))^00h,c
	line	137
	
l3962:
;main.c: 137: speed[2] = '\0';
	movlw	low(0)
	movwf	(0+((c:_speed)+02h))^00h,c
	line	138
	
l489:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_speed
	__end_of_get_speed:
	signat	_get_speed,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 52 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	52
global __ptext24
__ptext24:
psect	text24
	file	"adc.c"
	line	52
	
_read_adc:
;incstack = 0
	callstack 29
;read_adc@channel stored from wreg
	movwf	((c:read_adc@channel))^00h,c
	line	58
	
l3080:
;adc.c: 54: unsigned short reg_val;;adc.c: 58: ADCON0 = (ADCON0 & 0xC3) | (channel << 2);
	movff	(c:read_adc@channel),??_read_adc+0+0
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	61
	
l3082:
;adc.c: 61: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	62
;adc.c: 62: while (GO);
	
l36:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l36
u1820:
	line	63
	
l3084:
;adc.c: 63: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)^00h,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0)^00h,c
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	65
	
l3086:
;adc.c: 65: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	66
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:
;incstack = 0
	callstack 28
	line	30
	
l3664:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l1144:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 29
	line	12
	
l3648:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2361
	goto	u2360

u2361:
	goto	l1132
u2360:
	line	13
	
l3650:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3654
	line	15
	
l3652:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3654:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3652
u2370:
	line	19
	
l3656:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2381
	goto	u2380

u2381:
	goto	l3660
u2380:
	line	20
	
l3658:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3660:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3662:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3656
	line	23
	
l1132:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1139:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 29
	line	13
	
l3626:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l3628:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2331
	goto	u2330

u2331:
	goto	l1122
u2330:
	line	15
	
l3630:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l3634
	line	17
	
l3632:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l3634:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l3632
u2340:
	line	21
	
l3636:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l3638:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2351
	goto	u2350

u2351:
	goto	l3644
u2350:
	line	23
	
l3640:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l3642:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l3644:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l3646:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l3636
	line	28
	
l1122:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1129:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   41[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   51[COMRAM] unsigned long 
;;  exp1            1   55[COMRAM] unsigned char 
;;  sign1           1   50[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   41[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\fttol.c"
	line	44
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 29
	line	49
	
l3538:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u2211
	bsf	(??___fttol+0+0+1)^00h,c,0
u2211:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l3544
u2220:
	line	50
	
l3540:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l1017
	line	51
	
l3544:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u2230
u2235:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u2230:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u2235
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l3546:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l3548:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l3550:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l3552:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l3554:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u2240
	goto	u2241

u2241:
	goto	l3566
u2240:
	line	57
	
l3556:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u2251
	goto	u2250

u2251:
	goto	l3562
u2250:
	goto	l3540
	line	60
	
l3562:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l3564:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l3562
	goto	l3576
	line	63
	
l3566:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u2261
	goto	u2260

u2261:
	goto	l3574
u2260:
	goto	l3540
	line	66
	
l3572:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l3574:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l3572
u2270:
	line	70
	
l3576:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l3580
u2280:
	line	71
	
l3578:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l3580:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l1017:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   36[COMRAM] unsigned um
;;  sign            1   40[COMRAM] unsigned char 
;;  cntr            1   39[COMRAM] unsigned char 
;;  exp             1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftmul.c"
	line	62
	
___ftmul:
;incstack = 0
	callstack 28
	line	67
	
l3490:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f1+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u2151
	bsf	(??___ftmul+0+0+1)^00h,c,0
u2151:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@exp))^00h,c
	movf	((c:___ftmul@exp))^00h,c,w
	btfss	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l3496
u2160:
	line	68
	
l3492:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l996
	line	69
	
l3496:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)^00h,c
	clrf	(??___ftmul+0+0+2)^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c,w
	rlcf	(??___ftmul+0+0)^00h,c
	bnc	u2171
	bsf	(??___ftmul+0+0+1)^00h,c,0
u2171:
	movf	(??___ftmul+0+0)^00h,c,w
	movwf	((c:___ftmul@sign))^00h,c
	movf	((c:___ftmul@sign))^00h,c,w
	btfss	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l3502
u2180:
	line	70
	
l3498:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2))^00h,c

	goto	l996
	line	71
	
l3502:
	movf	((c:___ftmul@sign))^00h,c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp))^00h,c
	line	72
	
l3504:
	movff	0+((c:___ftmul@f1)+02h),(c:___ftmul@sign)
	line	73
	movf	(0+((c:___ftmul@f2)+02h))^00h,c,w
	xorwf	((c:___ftmul@sign))^00h,c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign))^00h,c
	line	75
	
l3506:
	bsf	(0+(15/8)+(c:___ftmul@f1))^00h,c,(15)&7
	line	77
	
l3508:
	bsf	(0+(15/8)+(c:___ftmul@f2))^00h,c,(15)&7
	line	78
	
l3510:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2))^00h,c

	line	79
	
l3512:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product))^00h,c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2))^00h,c

	line	134
	
l3514:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	136
	
l3516:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l3520
u2190:
	line	137
	
l3518:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	138
	
l3520:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2))^00h,c
	rlcf	((c:___ftmul@f2+1))^00h,c
	rlcf	((c:___ftmul@f2+2))^00h,c
	line	140
	
l3522:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l3516
	line	143
	
l3524:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr))^00h,c
	line	145
	
l3526:
	
	btfss	((c:___ftmul@f1))^00h,c,(0)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l3530
u2200:
	line	146
	
l3528:
	movf	((c:___ftmul@f2))^00h,c,w
	addwf	((c:___ftmul@f3_as_product))^00h,c
	movf	((c:___ftmul@f2+1))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+1))^00h,c
	movf	((c:___ftmul@f2+2))^00h,c,w
	addwfc	((c:___ftmul@f3_as_product+2))^00h,c

	line	147
	
l3530:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2))^00h,c
	rrcf	((c:___ftmul@f1+1))^00h,c
	rrcf	((c:___ftmul@f1))^00h,c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2))^00h,c
	rrcf	((c:___ftmul@f3_as_product+1))^00h,c
	rrcf	((c:___ftmul@f3_as_product))^00h,c
	line	149
	
l3532:
	decfsz	((c:___ftmul@cntr))^00h,c
	
	goto	l3526
	line	156
	
l3534:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	line	157
	
l996:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[COMRAM] float 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_get_speed
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	54
global __ptext30
__ptext30:
psect	text30
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 28
	line	63
	
l3444:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u2101
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u2101:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l3450
u2110:
	line	64
	
l3446:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l981
	line	65
	
l3450:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u2121
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u2121:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u2131
	goto	u2130
u2131:
	goto	l3456
u2130:
	line	66
	
l3452:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l981
	line	67
	
l3456:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l3458:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l3460:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l3462:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l3464:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l3466:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l3468:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l3470:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l3472:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l3474:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l3476:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l3478:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u2141
	goto	u2140

u2141:
	goto	l984
u2140:
	line	80
	
l3480:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l3482:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l984:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l3484:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l3476
	line	85
	
l3486:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l981:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
global __ptext31
__ptext31:
psect	text31
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 28
	line	64
	
l2958:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l2962
u1620:
	
l2960:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u1631
	goto	u1630

u1631:
	goto	l2968
u1630:
	line	65
	
l2962:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l915
	line	67
	
l2966:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l2968:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u1641
	goto	u1640

u1641:
	goto	l2966
u1640:
	goto	l2974
	line	71
	
l2970:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l2972:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l2974:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u1651
	goto	u1650

u1651:
	goto	l2970
u1650:
	goto	l2978
	line	76
	
l2976:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l2978:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l926
u1660:
	
l2980:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u1671
	goto	u1670

u1671:
	goto	l2976
u1670:
	
l926:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l2984
u1680:
	line	80
	
l2982:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l2984:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l2986:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l2990
u1690:
	line	84
	
l2988:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l2990:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l915:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_get_password

;; *************** function _get_password *****************
;; Defined at:
;;		line 16 in file "password.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2   20[COMRAM] unsigned int 
;;  c               4   25[COMRAM] unsigned long 
;;  p               2   31[COMRAM] int 
;;  j               2   33[COMRAM] int 
;;  k               1   35[COMRAM] unsigned char 
;;  count           2   22[COMRAM] int 
;;  wait            2   18[COMRAM] unsigned int 
;;  entered_pass    4   12[COMRAM] unsigned char [4]
;;  i               2   36[COMRAM] int 
;;  total_attemp    2   29[COMRAM] int 
;;  delay           2   16[COMRAM] int 
;;  key_pressed     1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        26       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        28       0       0       0       0       0       0
;;Total ram usage:       28 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lbdiv
;;		___lbmod
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_external_eeprom
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"password.c"
	line	16
global __ptext32
__ptext32:
psect	text32
	file	"password.c"
	line	16
	
_get_password:
;incstack = 0
	callstack 26
	line	18
	
l3668:
;password.c: 18: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	19
	
l3670:
;password.c: 19: clcd_print("ENTER PASSWORD", (0x80 + (1)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	20
	
l3672:
;password.c: 20: char entered_password[4] = {0};
	movlw	low(0)
	movwf	((c:get_password@entered_password))^00h,c
	movlw	high(0)
	movwf	((c:get_password@entered_password+1))^00h,c
	movlw	low highword(0)
	movwf	((c:get_password@entered_password+2))^00h,c
	movlw	high highword(0)
	movwf	((c:get_password@entered_password+3))^00h,c
	line	21
	
l3674:
;password.c: 21: int total_attempts = 3;
	movlw	high(03h)
	movwf	((c:get_password@total_attempts+1))^00h,c
	movlw	low(03h)
	movwf	((c:get_password@total_attempts))^00h,c
	line	22
	
l3676:
;password.c: 22: int i = 0;
	movlw	high(0)
	movwf	((c:get_password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@i))^00h,c
	line	23
	
l3678:
;password.c: 23: int delay = 0;
	movlw	high(0)
	movwf	((c:get_password@delay+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@delay))^00h,c
	line	26
;password.c: 24: static char flag=0;;password.c: 25: unsigned char key_pressed;;password.c: 26: while (flag !=1)
	goto	l3790
	line	28
	
l3680:
;password.c: 27: {;password.c: 28: key_pressed = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:get_password@key_pressed))^00h,c
	line	30
	
l3682:
;password.c: 30: for (unsigned int wait = 5000; wait--;)
	movlw	high(01388h)
	movwf	((c:get_password@wait+1))^00h,c
	movlw	low(01388h)
	movwf	((c:get_password@wait))^00h,c
	
l3684:
	decf	((c:get_password@wait))^00h,c
	btfss	status,0
	decf	((c:get_password@wait+1))^00h,c
		incf	((c:get_password@wait))^00h,c,w
	bnz	u2391
	incf	((c:get_password@wait+1))^00h,c,w
	btfss	status,2
	goto	u2391
	goto	u2390

u2391:
	goto	l3684
u2390:
	line	33
	
l3686:
;password.c: 33: if (i < 4)
	btfsc	((c:get_password@i+1))^00h,c,7
	goto	u2400
	movf	((c:get_password@i+1))^00h,c,w
	bnz	u2401
	movlw	4
	subwf	 ((c:get_password@i))^00h,c,w
	btfsc	status,0
	goto	u2401
	goto	u2400

u2401:
	goto	l3708
u2400:
	line	35
	
l3688:
;password.c: 34: {;password.c: 35: if (delay++ < 15000)
	movf	((c:get_password@delay))^00h,c,w
	movwf	(??_get_password+0+0)^00h,c
	movf	((c:get_password@delay+1))^00h,c,w
	movwf	1+(??_get_password+0+0)^00h,c
	infsnz	((c:get_password@delay))^00h,c
	incf	((c:get_password@delay+1))^00h,c
	btfsc	(??_get_password+0+1)^00h,c,7
	goto	u2410
	movlw	152
	subwf	 (??_get_password+0+0)^00h,c,w
	movlw	58
	subwfb	(??_get_password+0+1)^00h,c,w
	btfsc	status,0
	goto	u2411
	goto	u2410

u2411:
	goto	l3692
u2410:
	line	37
	
l3690:
;password.c: 36: {;password.c: 37: clcd_putch('_', (0xC0 + (i)));
	movf	((c:get_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(05Fh)&0ffh
	
	call	_clcd_putch
	line	38
;password.c: 38: }
	goto	l3706
	line	41
	
l3692:
;password.c: 39: else;password.c: 40: {;password.c: 41: clcd_putch(' ', (0xC0 + (i)));
	movf	((c:get_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	goto	l3706
	line	48
	
l3694:
;password.c: 47: {;password.c: 48: clcd_print("*", (0xC0 + (i)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1))^00h,c

	movf	((c:get_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	49
	
l3696:
;password.c: 49: entered_password[i++] = 1;
	movf	((c:get_password@i))^00h,c,w
	addlw	low(get_password@entered_password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	movwf	indf2
	
l3698:
	infsnz	((c:get_password@i))^00h,c
	incf	((c:get_password@i+1))^00h,c
	line	51
;password.c: 50: };password.c: 51: break;
	goto	l3756
	line	54
	
l3700:
;password.c: 53: {;password.c: 54: clcd_print("*", (0xC0 + (i)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1))^00h,c

	movf	((c:get_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	55
	
l3702:
;password.c: 55: entered_password[i++] = 0;
	movf	((c:get_password@i))^00h,c,w
	addlw	low(get_password@entered_password)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	goto	l3698
	line	44
	
l3706:
	movf	((c:get_password@key_pressed))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 4 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	4^0	; case 4
	skipnz
	goto	l3700
	xorlw	5^4	; case 5
	skipnz
	goto	l3694
	goto	l3756

	line	61
	
l3708:
;password.c: 59: else;password.c: 60: {;password.c: 61: int count = 0;
	movlw	high(0)
	movwf	((c:get_password@count+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@count))^00h,c
	line	64
;password.c: 64: for (int j = 0; j < 4; j++)
	movlw	high(0)
	movwf	((c:get_password@j+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@j))^00h,c
	line	67
	
l3714:
;password.c: 65: {;password.c: 67: if (read_external_eeprom(100 + j) == entered_password[j])
	movf	((c:get_password@j))^00h,c,w
	addlw	low(get_password@entered_password)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:get_password@j))^00h,c,w
	addlw	low(064h)
	
	call	_read_external_eeprom
	movwf	(??_get_password+1+0)^00h,c
	movf	postinc2,w
xorwf	((??_get_password+1+0))^00h,c,w
	btfss	status,2
	goto	u2421
	goto	u2420

u2421:
	goto	l230
u2420:
	line	68
	
l3716:
;password.c: 68: count++;
	infsnz	((c:get_password@count))^00h,c
	incf	((c:get_password@count+1))^00h,c
	
l230:
	line	64
	infsnz	((c:get_password@j))^00h,c
	incf	((c:get_password@j+1))^00h,c
	
l3718:
	btfsc	((c:get_password@j+1))^00h,c,7
	goto	u2431
	movf	((c:get_password@j+1))^00h,c,w
	bnz	u2430
	movlw	4
	subwf	 ((c:get_password@j))^00h,c,w
	btfss	status,0
	goto	u2431
	goto	u2430

u2431:
	goto	l3714
u2430:
	line	71
	
l3720:
;password.c: 69: };password.c: 71: if (count == 4)
		movlw	4
	xorwf	((c:get_password@count))^00h,c,w
iorwf	((c:get_password@count+1))^00h,c,w
	btfss	status,2
	goto	u2441
	goto	u2440

u2441:
	goto	l3730
u2440:
	line	73
	
l3722:
;password.c: 72: {;password.c: 73: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	74
	
l3724:
;password.c: 74: return 0;
	movlw	(0)&0ffh
	goto	l232
	line	78
	
l3730:
;password.c: 76: else;password.c: 77: {;password.c: 78: i = 0;
	movlw	high(0)
	movwf	((c:get_password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@i))^00h,c
	line	79
	
l3732:
;password.c: 79: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	80
	
l3734:
;password.c: 80: clcd_print("FAILED!", (0xC0 + (4)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C4h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	81
	
l3736:
;password.c: 81: for (int p = 0; p < 10; p++)
	movlw	high(0)
	movwf	((c:get_password@p+1))^00h,c
	movlw	low(0)
	movwf	((c:get_password@p))^00h,c
	line	82
	
l3742:
;password.c: 82: for (unsigned int wait = 50000; wait--;);
	movlw	high(0C350h)
	movwf	((c:get_password@wait_187+1))^00h,c
	movlw	low(0C350h)
	movwf	((c:get_password@wait_187))^00h,c
	
l3744:
	decf	((c:get_password@wait_187))^00h,c
	btfss	status,0
	decf	((c:get_password@wait_187+1))^00h,c
		incf	((c:get_password@wait_187))^00h,c,w
	bnz	u2451
	incf	((c:get_password@wait_187+1))^00h,c,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l3744
u2450:
	line	81
	
l3746:
	infsnz	((c:get_password@p))^00h,c
	incf	((c:get_password@p+1))^00h,c
	
l3748:
	btfsc	((c:get_password@p+1))^00h,c,7
	goto	u2461
	movf	((c:get_password@p+1))^00h,c,w
	bnz	u2460
	movlw	10
	subwf	 ((c:get_password@p))^00h,c,w
	btfss	status,0
	goto	u2461
	goto	u2460

u2461:
	goto	l3742
u2460:
	line	83
	
l3750:
;password.c: 83: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	84
	
l3752:
;password.c: 84: clcd_print("ATTEMPTS LEFT:", (0x80 + (0)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	85
	
l3754:
;password.c: 85: clcd_putch('0' + --total_attempts, (0x80 + (15)));
	movlw	low(08Fh)
	movwf	((c:clcd_putch@addr))^00h,c
	decf	((c:get_password@total_attempts))^00h,c
	btfss	status,0
	decf	((c:get_password@total_attempts+1))^00h,c
	movf	((c:get_password@total_attempts))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	89
	
l3756:
;password.c: 86: };password.c: 87: };password.c: 89: if(total_attempts==0)
	movf	((c:get_password@total_attempts))^00h,c,w
iorwf	((c:get_password@total_attempts+1))^00h,c,w
	btfss	status,2
	goto	u2471
	goto	u2470

u2471:
	goto	l3790
u2470:
	line	91
	
l3758:
;password.c: 90: {;password.c: 91: flag=1;
	movlw	low(01h)
	movwf	((c:get_password@flag))^00h,c
	line	92
	
l3760:
;password.c: 92: clcd_print("YOU ARE BLOCKED ",(0x80 + (0)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	93
	
l3762:
;password.c: 93: unsigned char k=120;
	movlw	low(078h)
	movwf	((c:get_password@k))^00h,c
	line	94
;password.c: 94: while(k!=0)
	goto	l3778
	line	96
	
l3764:
;password.c: 95: {;password.c: 96: clcd_putch((k%10) + '0',(0xC0 + (10)));
	movlw	low(0CAh)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:get_password@k))^00h,c,w
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	line	97
;password.c: 97: clcd_putch(((k/10)%10) + '0',(0xC0 + (9)));
	movlw	low(0C9h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:get_password@k))^00h,c,w
	
	call	___lbdiv
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	line	98
;password.c: 98: clcd_putch(((k/100)%10) + '0',(0xC0 + (8)));
	movlw	low(0C8h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lbmod@divisor))^00h,c
	movlw	low(064h)
	movwf	((c:___lbdiv@divisor))^00h,c
	movf	((c:get_password@k))^00h,c,w
	
	call	___lbdiv
	
	call	___lbmod
	addlw	low(030h)
	
	call	_clcd_putch
	line	99
	
l3766:
;password.c: 99: clcd_print("WAIT..",(0xC0 + (0)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	100
	
l3768:
;password.c: 100: for(unsigned long int c =0;c<200000;c++);
	movlw	low(0)
	movwf	((c:get_password@c))^00h,c
	movlw	high(0)
	movwf	((c:get_password@c+1))^00h,c
	movlw	low highword(0)
	movwf	((c:get_password@c+2))^00h,c
	movlw	high highword(0)
	movwf	((c:get_password@c+3))^00h,c
	
l3774:
	movlw	low(01h)
	addwf	((c:get_password@c))^00h,c
	movlw	0
	addwfc	((c:get_password@c+1))^00h,c
	addwfc	((c:get_password@c+2))^00h,c
	addwfc	((c:get_password@c+3))^00h,c
		movf	((c:get_password@c+3))^00h,c,w
	bnz	u2480
	movlw	64
	subwf	 ((c:get_password@c))^00h,c,w
	movlw	13
	subwfb	((c:get_password@c+1))^00h,c,w
	movlw	3
	subwfb	((c:get_password@c+2))^00h,c,w
	btfss	status,0
	goto	u2481
	goto	u2480

u2481:
	goto	l3774
u2480:
	line	101
	
l3776:
;password.c: 101: k--;
	decf	((c:get_password@k))^00h,c
	line	94
	
l3778:
	movf	((c:get_password@k))^00h,c,w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l3764
u2490:
	line	103
	
l3780:
;password.c: 102: };password.c: 103: if(flag==1)
		decf	((c:get_password@flag))^00h,c,w
	btfss	status,2
	goto	u2501
	goto	u2500

u2501:
	goto	l3790
u2500:
	line	105
	
l3782:
;password.c: 104: {;password.c: 105: flag=0;
	movlw	low(0)
	movwf	((c:get_password@flag))^00h,c
	line	106
;password.c: 106: total_attempts=3;
	movlw	high(03h)
	movwf	((c:get_password@total_attempts+1))^00h,c
	movlw	low(03h)
	movwf	((c:get_password@total_attempts))^00h,c
	line	107
	
l3784:
;password.c: 107: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	108
	
l3786:
;password.c: 108: clcd_print("ENTER PASSWORD", (0x80 + (1)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	109
	
l3788:
;password.c: 109: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_10)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_10)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	26
	
l3790:
		decf	((c:get_password@flag))^00h,c,w
	btfss	status,2
	goto	u2511
	goto	u2510

u2511:
	goto	l3680
u2510:
	line	113
	
l232:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_password
	__end_of_get_password:
	signat	_get_password,89
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 96 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_view_log
;;		_get_password
;;		_change_password
;;		_go_to_menu
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	96
global __ptext33
__ptext33:
psect	text33
	file	"matrix_keypad.c"
	line	96
	
_read_switches:
;incstack = 0
	callstack 29
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	100
	
l2930:
;matrix_keypad.c: 98: static unsigned char once = 1, key;;matrix_keypad.c: 100: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1571
	goto	u1570

u1571:
	goto	l2948
u1570:
	line	102
	
l2932:
;matrix_keypad.c: 101: {;matrix_keypad.c: 102: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	103
	
l2934:
;matrix_keypad.c: 103: if(key != 0xFF && once )
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u1581
	goto	u1580

u1581:
	goto	l2944
u1580:
	
l2936:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u1591
	goto	u1590
u1591:
	goto	l2944
u1590:
	line	105
	
l2938:
;matrix_keypad.c: 104: {;matrix_keypad.c: 105: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once))^00h,c
	line	106
;matrix_keypad.c: 106: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l409
	line	108
	
l2944:
;matrix_keypad.c: 108: else if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u1601
	goto	u1600

u1601:
	goto	l2954
u1600:
	line	110
	
l2946:
;matrix_keypad.c: 109: {;matrix_keypad.c: 110: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l2954
	line	113
	
l2948:
;matrix_keypad.c: 113: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2954
u1610:
	line	115
	
l2950:
;matrix_keypad.c: 114: {;matrix_keypad.c: 115: return scan_key();
	call	_scan_key	;wreg free
	goto	l409
	line	118
	
l2954:
;matrix_keypad.c: 116: };matrix_keypad.c: 118: return 0xFF;
	movlw	(0FFh)&0ffh
	line	119
	
l409:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 26 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	26
global __ptext34
__ptext34:
psect	text34
	file	"matrix_keypad.c"
	line	26
	
_scan_key:
;incstack = 0
	callstack 29
	line	28
	
l2780:
;matrix_keypad.c: 28: PORTBbits.RB5 = 0;
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	29
;matrix_keypad.c: 29: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	30
;matrix_keypad.c: 30: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	32
;matrix_keypad.c: 32: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1381
	goto	u1380
u1381:
	goto	l379
u1380:
	line	34
	
l2782:
;matrix_keypad.c: 33: {;matrix_keypad.c: 34: return 1;
	movlw	(01h)&0ffh
	goto	l380
	line	36
	
l379:
;matrix_keypad.c: 36: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1391
	goto	u1390
u1391:
	goto	l382
u1390:
	line	38
	
l2788:
;matrix_keypad.c: 37: {;matrix_keypad.c: 38: return 4;
	movlw	(04h)&0ffh
	goto	l380
	line	40
	
l382:
;matrix_keypad.c: 40: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1401
	goto	u1400
u1401:
	goto	l384
u1400:
	line	42
	
l2794:
;matrix_keypad.c: 41: {;matrix_keypad.c: 42: return 7;
	movlw	(07h)&0ffh
	goto	l380
	line	44
	
l384:
;matrix_keypad.c: 44: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1411
	goto	u1410
u1411:
	goto	l381
u1410:
	line	46
	
l2800:
;matrix_keypad.c: 45: {;matrix_keypad.c: 46: return 10;
	movlw	(0Ah)&0ffh
	goto	l380
	line	49
	
l381:
;matrix_keypad.c: 47: };matrix_keypad.c: 49: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	50
;matrix_keypad.c: 50: PORTBbits.RB6 = 0;
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	51
;matrix_keypad.c: 51: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	53
;matrix_keypad.c: 53: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1421
	goto	u1420
u1421:
	goto	l387
u1420:
	line	55
	
l2804:
;matrix_keypad.c: 54: {;matrix_keypad.c: 55: return 2;
	movlw	(02h)&0ffh
	goto	l380
	line	57
	
l387:
;matrix_keypad.c: 57: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1431
	goto	u1430
u1431:
	goto	l389
u1430:
	line	59
	
l2810:
;matrix_keypad.c: 58: {;matrix_keypad.c: 59: return 5;
	movlw	(05h)&0ffh
	goto	l380
	line	61
	
l389:
;matrix_keypad.c: 61: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1441
	goto	u1440
u1441:
	goto	l391
u1440:
	line	63
	
l2816:
;matrix_keypad.c: 62: {;matrix_keypad.c: 63: return 8;
	movlw	(08h)&0ffh
	goto	l380
	line	65
	
l391:
;matrix_keypad.c: 65: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1451
	goto	u1450
u1451:
	goto	l388
u1450:
	line	67
	
l2822:
;matrix_keypad.c: 66: {;matrix_keypad.c: 67: return 11;
	movlw	(0Bh)&0ffh
	goto	l380
	line	70
	
l388:
;matrix_keypad.c: 68: };matrix_keypad.c: 70: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	71
;matrix_keypad.c: 71: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	72
;matrix_keypad.c: 72: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	74
;matrix_keypad.c: 74: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	76
;matrix_keypad.c: 76: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1461
	goto	u1460
u1461:
	goto	l394
u1460:
	line	78
	
l2826:
;matrix_keypad.c: 77: {;matrix_keypad.c: 78: return 3;
	movlw	(03h)&0ffh
	goto	l380
	line	80
	
l394:
;matrix_keypad.c: 80: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l396
u1470:
	line	82
	
l2832:
;matrix_keypad.c: 81: {;matrix_keypad.c: 82: return 6;
	movlw	(06h)&0ffh
	goto	l380
	line	84
	
l396:
;matrix_keypad.c: 84: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1481
	goto	u1480
u1481:
	goto	l398
u1480:
	line	86
	
l2838:
;matrix_keypad.c: 85: {;matrix_keypad.c: 86: return 9;
	movlw	(09h)&0ffh
	goto	l380
	line	88
	
l398:
;matrix_keypad.c: 88: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l397
u1490:
	line	90
	
l2844:
;matrix_keypad.c: 89: {;matrix_keypad.c: 90: return 12;
	movlw	(0Ch)&0ffh
	goto	l380
	line	93
	
l397:
	
l2848:
;matrix_keypad.c: 91: };matrix_keypad.c: 93: return 0xFF;
	movlw	(0FFh)&0ffh
	line	94
	
l380:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_read_external_eeprom

;; *************** function _read_external_eeprom *****************
;; Defined at:
;;		line 23 in file "eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_print_to_console
;;		_print_log_to_clcd
;;		_get_password
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"eeprom.c"
	line	23
global __ptext35
__ptext35:
psect	text35
	file	"eeprom.c"
	line	23
	
_read_external_eeprom:
;incstack = 0
	callstack 24
;read_external_eeprom@address stored from wreg
	movwf	((c:read_external_eeprom@address))^00h,c
	line	27
	
l2764:
;eeprom.c: 25: unsigned char data;;eeprom.c: 27: i2c_start();
	call	_i2c_start	;wreg free
	line	28
	
l2766:
;eeprom.c: 28: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	29
	
l2768:
;eeprom.c: 29: i2c_write(address);
	movf	((c:read_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	30
	
l2770:
;eeprom.c: 30: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	31
	
l2772:
;eeprom.c: 31: i2c_write(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	32
;eeprom.c: 32: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_external_eeprom@data))^00h,c
	line	33
	
l2774:
;eeprom.c: 33: i2c_stop();
	call	_i2c_stop	;wreg free
	line	35
;eeprom.c: 35: return data;
	movf	((c:read_external_eeprom@data))^00h,c,w
	line	36
	
l363:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_external_eeprom
	__end_of_read_external_eeprom:
	signat	_read_external_eeprom,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 62 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	62
global __ptext36
__ptext36:
psect	text36
	file	"i2c.c"
	line	62
	
_i2c_write:
;incstack = 0
	callstack 27
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	64
	
l2734:
;i2c.c: 64: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	65
	
l2736:
;i2c.c: 65: i2c_idle();
	call	_i2c_idle	;wreg free
	line	66
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 50 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	50
global __ptext37
__ptext37:
psect	text37
	file	"i2c.c"
	line	50
	
_i2c_stop:
;incstack = 0
	callstack 27
	line	52
	
l2726:
;i2c.c: 52: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	53
	
l2728:
;i2c.c: 53: i2c_idle();
	call	_i2c_idle	;wreg free
	line	54
	
l90:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 44 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	line	44
global __ptext38
__ptext38:
psect	text38
	file	"i2c.c"
	line	44
	
_i2c_start:
;incstack = 0
	callstack 27
	line	46
	
l2722:
;i2c.c: 46: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	47
	
l2724:
;i2c.c: 47: i2c_idle();
	call	_i2c_idle	;wreg free
	line	48
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 56 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	56
global __ptext39
__ptext39:
psect	text39
	file	"i2c.c"
	line	56
	
_i2c_rep_start:
;incstack = 0
	callstack 26
	line	58
	
l2730:
;i2c.c: 58: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	59
	
l2732:
;i2c.c: 59: i2c_idle();
	call	_i2c_idle	;wreg free
	line	60
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 80 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	80
global __ptext40
__ptext40:
psect	text40
	file	"i2c.c"
	line	80
	
_i2c_read:
;incstack = 0
	callstack 25
	line	82
	
l2738:
;i2c.c: 82: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	83
;i2c.c: 83: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	85
	
l2740:
;i2c.c: 85: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	86
	
l105:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 68 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	68
global __ptext41
__ptext41:
psect	text41
	file	"i2c.c"
	line	68
	
_i2c_rx_mode:
;incstack = 0
	callstack 25
	line	70
	
l2716:
;i2c.c: 70: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	71
	
l2718:
;i2c.c: 71: i2c_idle();
	call	_i2c_idle	;wreg free
	line	72
	
l99:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 30 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext42
__ptext42:
psect	text42
	file	"i2c.c"
	line	30
	
_i2c_idle:
;incstack = 0
	callstack 27
	line	32
	
l2714:
;i2c.c: 32: while (!SSPIF);
	
l77:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1351
	goto	u1350
u1351:
	goto	l77
u1350:
	
l79:
	line	33
;i2c.c: 33: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	34
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 74 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	74
global __ptext43
__ptext43:
psect	text43
	file	"i2c.c"
	line	74
	
_i2c_no_ack:
;incstack = 0
	callstack 26
	line	76
	
l2720:
;i2c.c: 76: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	77
;i2c.c: 77: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	78
	
l102:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 59 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    9[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_print_log_to_clcd
;;		_view_log
;;		_get_password
;;		_change_password
;;		_go_to_menu
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	59
global __ptext44
__ptext44:
psect	text44
	file	"clcd.c"
	line	59
	
_clcd_putch:
;incstack = 0
	callstack 26
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	61
	
l2778:
;clcd.c: 61: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	62
;clcd.c: 62: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	63
	
l554:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 50 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    2[COMRAM] PTR const unsigned char 
;;		 -> STR_30(14), STR_29(15), STR_28(3), STR_27(17), 
;;		 -> STR_26(3), STR_25(14), STR_24(10), STR_23(12), 
;;		 -> STR_22(17), STR_21(9), STR_20(15), STR_19(11), 
;;		 -> STR_18(14), STR_17(10), STR_16(15), STR_15(22), 
;;		 -> STR_14(14), STR_13(16), STR_12(19), STR_11(19), 
;;		 -> STR_10(17), STR_9(15), STR_8(7), STR_7(17), 
;;		 -> STR_6(15), STR_5(8), STR_4(2), STR_3(2), 
;;		 -> STR_2(15), STR_1(6), speed(3), time(9), 
;;  addr            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_view_log
;;		_get_password
;;		_change_password
;;		_go_to_menu
;;		_main
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	50
global __ptext45
__ptext45:
psect	text45
	file	"clcd.c"
	line	50
	
_clcd_print:
;incstack = 0
	callstack 27
	line	52
	
l2912:
;clcd.c: 52: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	53
;clcd.c: 53: while (*data != '\0')
	goto	l2918
	line	55
	
l2914:
;clcd.c: 54: {;clcd.c: 55: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1527
	tblrd	*
	
	movf	tablat,w
	bra	u1520
u1527:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1520:
	
	call	_clcd_write
	
l2916:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	53
	
l2918:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1537
	tblrd	*
	
	movf	tablat,w
	bra	u1530
u1537:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1530:
	iorlw	0
	btfss	status,2
	goto	u1541
	goto	u1540
u1541:
	goto	l2914
u1540:
	line	57
	
l551:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 12 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_log
;;		_get_password
;;		_change_password
;;		_go_to_menu
;;		_set_time
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	12
global __ptext46
__ptext46:
psect	text46
	file	"clcd.c"
	line	12
	
_clcd_write:
;incstack = 0
	callstack 28
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	14
	
l2744:
;clcd.c: 14: PORTCbits.RC1 = control_bit;
	btfsc	(c:clcd_write@control_bit)^00h,c,0
	bra	u1365
	bcf	((c:3970))^0f00h,c,1	;volatile
	bra	u1366
	u1365:
	bsf	((c:3970))^0f00h,c,1	;volatile
	u1366:

	line	15
	
l2746:
;clcd.c: 15: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	18
	
l2748:
;clcd.c: 18: PORTCbits.RC2 = 1;
	bsf	((c:3970))^0f00h,c,2	;volatile
	line	19
	
l2750:
;clcd.c: 19: PORTCbits.RC2 = 0;
	bcf	((c:3970))^0f00h,c,2	;volatile
	line	21
	
l2752:
;clcd.c: 21: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	22
	
l2754:
;clcd.c: 22: PORTCbits.RC0 = 1;
	bsf	((c:3970))^0f00h,c,0	;volatile
	line	23
	
l2756:
;clcd.c: 23: PORTCbits.RC1 = 0;
	bcf	((c:3970))^0f00h,c,1	;volatile
	line	27
	
l2758:
;clcd.c: 26: {;clcd.c: 27: PORTCbits.RC2 = 1;
	bsf	((c:3970))^0f00h,c,2	;volatile
	line	28
	
l2760:
;clcd.c: 28: PORTCbits.RC2 = 0;
	bcf	((c:3970))^0f00h,c,2	;volatile
	line	29
	
l2762:
;clcd.c: 29: } while (PORTDbits.RD7);
	btfsc	((c:3971))^0f00h,c,7	;volatile
	goto	u1371
	goto	u1370
u1371:
	goto	l2758
u1370:
	
l541:
	line	31
;clcd.c: 31: PORTCbits.RC0 = 0;
	bcf	((c:3970))^0f00h,c,0	;volatile
	line	32
;clcd.c: 32: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	33
	
l542:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    5[COMRAM] unsigned char 
;;  rem             1    7[COMRAM] unsigned char 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_password
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
	line	4
global __ptext47
__ptext47:
psect	text47
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbmod.c"
	line	4
	
___lbmod:
;incstack = 0
	callstack 29
;___lbmod@dividend stored from wreg
	movwf	((c:___lbmod@dividend))^00h,c
	line	9
	
l3610:
	movlw	low(08h)
	movwf	((c:___lbmod@counter))^00h,c
	line	10
	movlw	low(0)
	movwf	((c:___lbmod@rem))^00h,c
	line	12
	
l3612:
	bcf	status,0
	rlcf	((c:___lbmod@dividend))^00h,c,w
	rlcf	((c:___lbmod@rem))^00h,c,w
	movwf	((c:___lbmod@rem))^00h,c
	line	13
	
l3614:
	bcf status,0
	rlcf	((c:___lbmod@dividend))^00h,c

	line	14
	
l3616:
		movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c,w
	btfss	status,0
	goto	u2321
	goto	u2320

u2321:
	goto	l3620
u2320:
	line	15
	
l3618:
	movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c
	line	16
	
l3620:
	decfsz	((c:___lbmod@counter))^00h,c
	
	goto	l3612
	line	17
	
l3622:
	movf	((c:___lbmod@rem))^00h,c,w
	line	18
	
l1043:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	___lbdiv

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMRAM] unsigned char 
;;  quotient        1    3[COMRAM] unsigned char 
;;  counter         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_password
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
	line	4
global __ptext48
__ptext48:
psect	text48
	file	"C:\Program Files\Microchip\xc8\v2.36\pic\sources\c90\common\lbdiv.c"
	line	4
	
___lbdiv:
;incstack = 0
	callstack 29
;___lbdiv@dividend stored from wreg
	movwf	((c:___lbdiv@dividend))^00h,c
	line	9
	
l3584:
	movlw	low(0)
	movwf	((c:___lbdiv@quotient))^00h,c
	line	10
	
l3586:
	movf	((c:___lbdiv@divisor))^00h,c,w
	btfsc	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l3606
u2290:
	line	11
	
l3588:
	movlw	low(01h)
	movwf	((c:___lbdiv@counter))^00h,c
	line	12
	goto	l3594
	line	13
	
l3590:
	bcf status,0
	rlcf	((c:___lbdiv@divisor))^00h,c

	line	14
	
l3592:
	incf	((c:___lbdiv@counter))^00h,c
	line	12
	
l3594:
	
	btfss	((c:___lbdiv@divisor))^00h,c,(7)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l3590
u2300:
	line	17
	
l3596:
	bcf status,0
	rlcf	((c:___lbdiv@quotient))^00h,c

	line	18
		movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c,w
	btfss	status,0
	goto	u2311
	goto	u2310

u2311:
	goto	l3602
u2310:
	line	19
	
l3598:
	movf	((c:___lbdiv@divisor))^00h,c,w
	subwf	((c:___lbdiv@dividend))^00h,c
	line	20
	
l3600:
	bsf	(0+(0/8)+(c:___lbdiv@quotient))^00h,c,(0)&7
	line	22
	
l3602:
	bcf status,0
	rrcf	((c:___lbdiv@divisor))^00h,c

	line	23
	
l3604:
	decfsz	((c:___lbdiv@counter))^00h,c
	
	goto	l3596
	line	25
	
l3606:
	movf	((c:___lbdiv@quotient))^00h,c,w
	line	26
	
l1037:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
	signat	___lbdiv,8313
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
