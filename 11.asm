.SEGMENT "BANK0B"
.INCLUDE "constants/ppu_attributes.asm"

_boss_init:
	JMP boss_init

boss_ai:
.INCBIN  "11/11_0.bin"

boss_init:
.INCBIN  "11/11_1.bin"
.INCLUDE "screen/stage_select.asm"
.INCBIN  "gfx/11/11.chr"
