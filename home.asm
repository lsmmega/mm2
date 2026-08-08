.SEGMENT "HOME"
.INCLUDE "constants/stage.asm"
.INCLUDE "home/bankswitch.asm"
.INCLUDE "home/track_queue.asm"
.INCLUDE "home/mmc1_control.asm"
.INCLUDE "home/wily_castle.asm"
.INCLUDE "home/nmi_wait.asm"
.INCLUDE "home/unused/unknown_3c110.asm"

	track_queue track_death

.INCBIN  "home/home_3.bin"

	farjsr _game_over_jmp

.INCBIN  "home/home_4.bin"

	farjsr _get_weapon_jmp

.INCBIN  "home/home_5.bin"

	farjsr _ending_jmp

.INCBIN  "home/home_6_0.bin"
.INCLUDE "home/create_explosion.asm"
.INCLUDE "home/background_palette.asm"
.INCLUDE "home/init_stage.asm"
.INCLUDE "home/init_checkpoint.asm"
.INCLUDE "home/intro.asm"
.INCLUDE "home/stage_select.asm"
.INCLUDE "home/open_menu.asm"
.INCBIN  "home/home_9.bin"

	farjsr _boss_ai_jmp

.INCBIN  "home/home_10_0.bin"
.INCLUDE "home/load_cutscene_screen.asm"
.INCLUDE "home/load_cutscene_tiles.asm"
.INCLUDE "home/load_boss_tiles.asm"
.INCLUDE "home/load_copipi_tiles.asm"
.INCLUDE "home/load_title_tiles.asm"
.INCBIN  "home/home_10_1.bin"
.INCLUDE "home/load_stage_scrolling.asm"
.INCLUDE "home/megaman_beam_down.asm"
.INCBIN  "home/home_11.bin"

	farjsr _boss_init_jmp

.INCBIN  "home/home_12_0_0.bin"
.INCLUDE "home/divide_mod.asm"
.INCBIN  "home/home_12_0_1_0.bin"
.INCLUDE "home/draw_menu.asm"
.INCLUDE "home/draw_other_on_screen.asm"
.INCLUDE "home/scrolling.asm"
.INCLUDE "home/scrolling_object_tiles.asm"
.INCLUDE "home/object_palette.asm"
.INCBIN  "home/home_12_0_2.bin"

	bankswitch $0B
	RTS

.INCLUDE "home/init_sprites.asm"
.INCLUDE "home/sprites.asm"
.INCLUDE "home/nmi.asm"
.INCLUDE "home/joy.asm"
.INCLUDE "home/palette.asm"
.INCLUDE "home/screen.asm"
.INCLUDE "home/object_tiles.asm"
.INCLUDE "home/draw_other.asm"
.INCLUDE "home/weapon_palette.asm"

	track_queue track_megaman_hit

.INCBIN  "home/home_13.bin"
.INCLUDE "home/credit_far.asm"
.INCBIN  "home/home_17_0.bin"
.INCLUDE "home/check_object.asm"
.INCBIN  "home/home_17_1.bin"

	track_queue track_mega_buster

.INCBIN  "home/home_18.bin"

	track_queue track_air_shooter

.INCBIN  "home/home_19.bin"

	track_queue track_mega_buster

.INCBIN  "home/home_20.bin"

	track_queue track_mega_buster

.INCBIN  "home/home_21.bin"

	track_queue track_mega_buster

.INCBIN  "home/home_22.bin"

	track_queue track_metal_blade

.INCBIN  "home/home_23.bin"

	track_queue track_time_stopper

.INCBIN  "home/home_24.bin"

	track_queue track_atomic_fire_release

.INCBIN  "home/home_25.bin"

	track_queue track_leaf_shield

.INCBIN  "home/home_26.bin"

	track_queue track_crash_bomber_grab

.INCBIN  "home/home_27.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_28.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_29.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_30.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_31.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_32.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_33.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_34.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_35.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_36.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_37.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_38.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_39.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_40.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_41.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_42.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_43.bin"

	track_queue track_enemy_immune

.INCBIN  "home/home_44.bin"
.INCLUDE "home/difficulty_calc_enemies.asm"
.INCBIN  "home/home_45.bin"
.INCLUDE "home/_reset.asm"
.INCLUDE "home/unused/unused_3f2f3.asm"
.INCLUDE "sprites/pointers/oam_frameset_pointers.asm"
.INCLUDE "sprites/oam_frameset.asm"
.INCLUDE "home/unused/unused_3ff97.asm"
.INCLUDE "home/reset.asm"
.INCLUDE "home/unused/unused_3fff7.asm"
.INCLUDE "home/vectors.asm"
