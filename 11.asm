.SEGMENT "BANK0B"
.INCLUDE "constants/track.asm"
.INCLUDE "macros/audio.asm"

_boss_init:
	JMP __boss_init

_boss_ai:
.INCBIN  "11/11_0.bin"

	track_queue track_refill

.INCBIN  "11/11_1.bin"

	track_queue track_atomic_fire_release

.INCBIN  "11/11_2.bin"

	track_queue track_atomic_fire_release

.INCBIN  "11/11_3.bin"

	track_queue track_air_shooter

.INCBIN  "11/11_4.bin"

	track_queue track_time_stopper

.INCBIN  "11/11_5.bin"

	track_queue track_metal_blade

.INCBIN  "11/11_6.bin"

	track_queue track_mecha_dragon

.INCBIN  "11/11_7.bin"

	track_queue track_mecha_dragon

.INCBIN  "11/11_8.bin"

	track_queue track_boss_fighting

.INCBIN  "11/11_9.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_10.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_11.bin"

	track_queue track_wily_control

.INCBIN  "11/11_12.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_13.bin"

	track_queue track_wily_defeated

.INCBIN  "11/11_14.bin"

	track_queue track_death

.INCBIN  "11/11_15.bin"

	track_queue track_boss_defeated

.INCBIN  "11/11_16.bin"

	track_queue track_teleport_out

.INCBIN  "11/11_17.bin"

	track_queue track_refill

.INCBIN  "11/11_18.bin"

__boss_init:
.INCBIN  "11/11_19.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_20.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_21.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_22.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_23.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_24.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_25.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_26.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_27.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_28.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_29.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_30.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_31.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_32.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_33.bin"

	track_queue track_enemy_hit

.INCBIN  "11/11_34.bin"

	track_queue track_enemy_immune

.INCBIN  "11/11_35.bin"

.INCLUDE "unused/unused_2eac0.asm"
.INCLUDE "screen/stage_select.asm"
.INCBIN  "gfx/guts_tank/guts_tank_1.chr"
.INCBIN  "gfx/guts_tank/guts_tank_2.chr"
.INCLUDE "unused/unused_2ff20.asm"
