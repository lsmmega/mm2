.SEGMENT "BANK0D"
.INCLUDE "constants/flags.asm"

_stage_select:
	JMP __stage_select

_open_menu:
	JMP __open_menu

_wily_castle:
	JMP __wily_castle

_intro:
	JMP __intro

_game_over:
	JMP __game_over

_ending:
	JMP __ending

_get_weapon:
	JMP __get_weapon

__stage_select:
.INCBIN  "13/13_0.bin"

	track_queue track_stage_select

.INCBIN  "13/13_1.bin"

	track_queue track_select

.INCBIN  "13/13_2.bin"

	track_queue track_teleport_out

.INCBIN  "13/13_3.bin"

	track_queue track_boss_show

.INCBIN  "13/13_4.bin"
.INCLUDE "data/boss_show/oam_frameset.asm"
.INCLUDE "data/boss_show/oam_sprites_pointers.asm"
.INCLUDE "data/boss_show/oam_sprites.asm"

__open_menu:
.INCBIN  "13/13_5.bin"

	track_queue track_select

.INCBIN  "13/13_6.bin"

	track_queue track_refill

.INCBIN  "13/13_7.bin"

	track_queue track_teleport_in

.INCBIN  "13/13_8.bin"

__wily_castle:
.INCBIN  "13/13_9.bin"

	track_queue track_wily_ufo

.INCBIN  "13/13_10.bin"

	track_queue track_wily_castle

.INCBIN  "13/13_11.bin"

	track_queue track_refill

.INCBIN  "13/13_12.bin"

	track_queue track_wily_castle

.INCBIN  "13/13_13.bin"

__intro:
.INCBIN  "13/13_14.bin"

	track_queue track_opening

.INCBIN  "13/13_15.bin"

	track_queue track_title

.INCBIN  "13/13_16.bin"

	track_queue track_select

.INCBIN  "13/13_17.bin"

	track_queue track_teleport_out

.INCBIN  "13/13_18.bin"

	track_queue track_password

.INCBIN  "13/13_19.bin"

	track_queue track_select

.INCBIN  "13/13_20.bin"

	track_queue track_select

.INCBIN  "13/13_21.bin"

	track_queue track_1up

.INCBIN  "13/13_22.bin"
.INCLUDE "data/password/password.asm"
.INCBIN  "13/13_23.bin"

__game_over:
.INCBIN  "13/13_24.bin"

	track_queue track_game_over

.INCBIN  "13/13_25.bin"

	track_queue track_password

.INCBIN  "13/13_26.bin"

	track_queue track_select

.INCBIN  "13/13_27.bin"

	track_queue track_1up

.INCBIN  "13/13_28.bin"
.INCLUDE "screen/title.asm"

__ending:
.INCBIN  "13/13_29.bin"

	track_queue track_ending

.INCBIN  "13/13_30.bin"

	track_queue track_title

.INCBIN  "13/13_31.bin"

	track_queue track_staff_roll

.INCBIN  "13/13_32.bin"

__get_weapon:
.INCBIN  "13/13_33.bin"

	track_queue track_get_weapon

.INCBIN  "13/13_34.bin"

	track_queue track_select

.INCBIN  "13/13_35.bin"
.INCLUDE "unused/unused_37f87.asm"
