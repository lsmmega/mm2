.SEGMENT "HOME"

_bankswitch:
.INCBIN  "home/home_0.bin"

	farjsr _wily_castle

.INCBIN  "home/home_1.bin"

	farjsr _game_over

.INCBIN  "home/home_2.bin"

	farjsr _get_weapon

.INCBIN  "home/home_3.bin"

	farjsr _ending

.INCBIN  "home/home_4.bin"

	farjsr _intro

.INCBIN  "home/home_5.bin"

	farjsr _stage_select

.INCBIN  "home/home_6.bin"

	farjsr _open_menu

.INCBIN  "home/home_7.bin"
	
	farjsr boss_ai

.INCBIN  "home/home_8.bin"

	farjsr _boss_init

.INCBIN  "home/home_9.bin"
	
	farjsr __ending_

.INCBIN  "home/home_10.bin"

	farjsr _staff_roll

.INCBIN  "home/home_11.bin"

	farjsr _credit_init

.INCBIN  "home/home_12.bin"

	farjsr _credit

.INCBIN  "home/home_13.bin"

	farjmp _init

.INCLUDE "home/unused/unused_3f2f3.asm"
.INCLUDE "sprites/pointers/oam_frameset_pointers.asm"
.INCLUDE "sprites/oam_frameset.asm"
.INCLUDE "home/unused/unused_3ff97.asm"
.INCBIN  "home/home_14.bin"
;.INCLUDE "home/reset.asm"
;.INCLUDE "home/nmi.asm"
;.INCLUDE "home/vectors.asm"
