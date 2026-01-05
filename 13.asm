.SEGMENT "BANK0D"

_stage_select:
	JMP stage_select

_open_menu:
	JMP open_menu

_wily_castle:
	JMP wily_castle

_intro:
	JMP intro

_game_over:
	JMP game_over

_ending:
	JMP ending

_get_weapon:
	JMP get_weapon

stage_select:
.INCBIN  "13/13_0.bin"

open_menu:
.INCBIN  "13/13_1.bin"

wily_castle:
.INCBIN  "13/13_2.bin"

intro:
.INCBIN  "13/13_3.bin"

game_over:
.INCBIN  "13/13_4.bin"
.INCLUDE "screen/title.asm"

ending:
.INCBIN  "13/13_5.bin"

get_weapon:
.INCBIN  "13/13_6.bin"
