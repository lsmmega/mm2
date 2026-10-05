.SEGMENT "BANK0E"
.INCLUDE "constants/mmc1.asm"
.INCLUDE "macros/stack.asm"
.INCLUDE "engine/main.asm"
.INCBIN  "14/14_0_1_3.bin"
.INCLUDE "data/ready_oam_coord.asm"
.INCLUDE "data/stages/tracks.asm"
.INCLUDE "engine/teleport_to_coord.asm"
.INCLUDE "engine/run_stage_wily_5.asm"
.INCLUDE "data/teleport_coord_table.asm"
.INCLUDE "engine/check_scroll.asm"
.INCLUDE "engine/megaman_hit_item.asm"

_run_megaman:
.INCBIN  "14/14_8.bin"

	track_queue track_landing

.INCBIN  "14/14_9.bin"

	track_queue track_jump_into_water

.INCBIN  "14/14_10.bin"
.INCLUDE "engine/scrolling_mapset.asm"
.INCLUDE "engine/draw_screen_instant.asm"
.INCLUDE "engine/handle_scrolling_object.asm"
.INCLUDE "engine/clean_object_in_teleporting.asm"

_run_enemies_ai:
.INCBIN  "14/14_13_2.bin"

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
