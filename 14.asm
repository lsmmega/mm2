.SEGMENT "BANK0E"
.INCLUDE "constants/mmc1.asm"
.INCLUDE "macros/stack.asm"

.INCLUDE "engine/init.asm"
.INCBIN  "14/14_0_0.bin"

	JSR _homeintro

.INCBIN  "14/14_0_1.bin"

	track_queue track_refill

.INCBIN  "14/14_1.bin"

	track_queue track_refill

.INCBIN  "14/14_2.bin"
.INCLUDE "engine/e_tank.asm"
.INCLUDE "engine/1up.asm"

.INCBIN  "14/14_4.bin"

	track_queue track_boss_fighting

.INCBIN  "14/14_5.bin"

	track_queue track_teleport_in

.INCBIN  "14/14_6.bin"

	track_queue track_wily3_4_5

.INCBIN  "14/14_7.bin"

	track_queue track_boss_fighting

.INCBIN  "14/14_8.bin"

	track_queue track_landing

.INCBIN  "14/14_9.bin"

	track_queue track_jump_into_water

.INCBIN  "14/14_10.bin"

	track_queue track_door

.INCBIN  "14/14_11.bin"

	track_queue track_boss_fighting

.INCBIN  "14/14_12.bin"

	track_queue track_door

.INCBIN  "14/14_13.bin"

	track_queue track_enemy_hit

.INCBIN  "14/14_14.bin"

	track_queue track_force_beam

.INCBIN  "14/14_15.bin"

	track_queue track_enemy_hit

.INCBIN  "14/14_16.bin"

	track_queue track_fly_boy

.INCBIN  "14/14_17.bin"

	track_queue track_time_stopper

.INCBIN  "14/14_18.bin"

	track_queue track_enemy_bullet

.INCBIN  "14/14_19.bin"

	track_queue track_enemy_bullet

.INCBIN  "14/14_20.bin"

	track_queue track_time_stopper

.INCBIN  "14/14_21.bin"

	track_queue track_enemy_bullet

.INCBIN  "14/14_22.bin"

	track_queue track_enemy_bullet

.INCBIN  "14/14_23.bin"

	track_queue track_appearing_block

.INCBIN  "14/14_24.bin"

	track_queue track_crash_bomber_grab

.INCBIN  "14/14_25.bin"

	track_queue track_enemy_hit

.INCBIN  "14/14_26.bin"

	track_queue track_boss_fighting

.INCBIN  "14/14_27.bin"
.INCLUDE "unused/unused_3bd34.asm"
