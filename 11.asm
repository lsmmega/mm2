.SEGMENT "BANK0B"

_boss_init:
	JMP boss_init

boss_ai:
.INCBIN  "11/11_0.bin"

boss_init:
.INCBIN  "11/11_1.bin"
.INCBIN  "gfx/11/11.chr"
