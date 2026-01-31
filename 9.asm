.SEGMENT "BANK09"
.INCLUDE "constants/charmap.asm"
.INCBIN  "gfx/stages/common.chr"
.INCBIN  "gfx/menus/border.chr"
.INCBIN  "gfx/sprites/miscellaneous/ready_font.chr"
.INCLUDE "unused/unused_244c0.asm"

___ending:
	JMP ____ending

_staff_roll:
	JMP staff_roll

_credit_init:
	JMP credit_init

_credit:
	JMP credit

____ending:
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
.INCBIN  "gfx/wily_castle/wily_castle.chr"
.INCBIN  "gfx/font/font_2.chr"
.INCBIN  "gfx/opening/opening_1.chr"
.INCBIN  "gfx/opening/japanese_subtitle_1.chr"
.INCBIN  "gfx/opening/japanese_subtitle_2.chr"
.INCBIN  "gfx/title/II_1.chr"
.INCBIN  "gfx/title/II_2.chr"
.INCBIN  "gfx/font/font_3.chr"
.INCBIN  "gfx/opening/opening_2.chr"
.INCBIN  "gfx/title/title.chr"
.INCBIN  "gfx/mecha_dragon/mecha_dragon_1.chr"
.INCBIN  "gfx/mecha_dragon/mecha_dragon_2.chr"
.INCLUDE "unused/unused_27e60.asm"
