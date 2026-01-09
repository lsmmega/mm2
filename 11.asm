.SEGMENT "BANK0B"
.INCLUDE "constants/ppu_attributes.asm"

_boss_init:
	JMP boss_init

boss_ai:
.INCBIN  "11/11_0.bin"

boss_init:
.INCBIN  "11/11_1.bin"
.INCLUDE "unused/unused_2eac0.asm"
.INCLUDE "screen/stage_select.asm"
.INCBIN  "gfx/guts_tank/guts_tank_1.chr"
.INCBIN  "gfx/guts_tank/guts_tank_2.chr"
.INCLUDE "unused/unused_2ff20.asm"
