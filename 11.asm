.SEGMENT "BANK0B"
.INCLUDE "constants/track.asm"
.INCLUDE "macros/audio.asm"

_boss_init_jmp:
	JMP _boss_init

_boss_ai_jmp:
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

_boss_init:
.INCBIN  "11/11_19.bin"
.INCLUDE "engine/boss_hit.asm"
.INCLUDE "engine/check_weapon_bosses_collision.asm"
.INCLUDE "engine/weapons_bosses_damage.asm"
.INCLUDE "data/weapons_bosses_damage_table.asm"
.INCLUDE "data/bosses_hit_damage_table.asm"
.INCBIN  "11/11_36.bin"
.INCLUDE "unused/unused_2eac0.asm"
.INCLUDE "screen/stage_select.asm"
.INCBIN  "gfx/guts_tank/guts_tank_1.chr"
.INCBIN  "gfx/guts_tank/guts_tank_2.chr"
.INCLUDE "unused/unused_2ff20.asm"
