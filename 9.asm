.SEGMENT "BANK09"
.INCLUDE "constants/charmap.asm"
.INCBIN  "gfx/9/9_p0.chr"

__ending_:
	JMP _ending_

_staff_roll:
	JMP staff_roll

_credit_init:
	JMP credit_init

_credit:
	JMP credit

_ending_:
.INCBIN  "9/9_0.bin"

staff_roll:
.INCBIN  "9/9_1.bin"

credit_init:
.INCBIN  "9/9_2.bin"

credit:
.INCBIN  "9/9_3.bin"
.INCLUDE "screen/staff_roll_1.asm"
.INCBIN  "9/9_4.bin"
.INCLUDE "screen/staff_roll_2.asm"
.INCBIN  "gfx/9/9_p1.chr"
