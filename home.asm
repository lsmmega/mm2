.SEGMENT "HOME"
.INCLUDE "constants/button.asm"
.INCLUDE "constants/stage.asm"
.INCLUDE "constants/tsa.asm"
.INCLUDE "home/bankswitch.asm"
.INCLUDE "home/track_queue.asm"
.INCLUDE "home/mmc1_control.asm"
.INCLUDE "home/wily_castle.asm"
.INCLUDE "home/nmi_wait.asm"
.INCLUDE "home/unused/unknown_3c110.asm"

_megaman_death:
	track_queue track_death

.INCBIN  "home/home_3.bin"

	farjsr _game_over_jmp

.INCBIN  "home/home_4.bin"

	farjsr _get_weapon_jmp

.INCBIN  "home/home_5.bin"

	farjsr _ending_jmp

.INCBIN  "home/home_6_0.bin"
.INCLUDE "home/clear_flag.asm"
.INCBIN  "home/home_6_1.bin"
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

_run_bosses_init:
.INCBIN  "home/home_11.bin"

_run_bosses_init_common:
	farjsr _boss_init_jmp

.INCBIN  "home/home_12_0_0.bin"
.INCLUDE "home/divide.asm"
.INCLUDE "home/draw_menu.asm"
.INCLUDE "home/draw_other_on_screen.asm"
.INCLUDE "home/scrolling.asm"
.INCLUDE "home/scrolling_object_tiles.asm"
.INCLUDE "home/object_palette.asm"
.INCLUDE "home/appearing_block.asm"
.INCLUDE "home/tsa_collision.asm"
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
.INCLUDE "home/megaman_hit.asm"
.INCLUDE "home/create_weapon.asm"
.INCLUDE "home/weapon_collision_table.asm"
.INCBIN  "home/home_13.bin"
.INCLUDE "home/credit_far.asm"
.INCLUDE "home/find_objects.asm"
.INCLUDE "home/objects_default_flags.asm"
.INCLUDE "home/objects_coord_speed_index.asm"
.INCLUDE "home/objects_collision_xcoord.asm"
.INCLUDE "home/objects_coord_speed_init_table.asm"
.INCLUDE "home/check_object.asm"
.INCLUDE "home/weapons.asm"
.INCBIN  "home/home_24.bin"

	track_queue track_atomic_fire_release

.INCBIN  "home/home_25.bin"

	track_queue track_leaf_shield

.INCBIN  "home/home_26.bin"

	track_queue track_crash_bomber_grab

.INCBIN  "home/home_27.bin"

	track_queue track_enemy_hit

.INCBIN  "home/home_28.bin"
.INCLUDE "home/object_hit.asm"
.INCLUDE "home/check_weapon_enemies_collision.asm"
.INCLUDE "home/weapons_enemies_damage.asm"
.INCLUDE "home/weapons_enemies_damage_table.asm"
.INCLUDE "home/enemies_hit_damage.asm"
.INCBIN  "home/home_45.bin"
.INCLUDE "home/enemies_to_items.asm"
.INCLUDE "home/enemies_to_megaman.asm"
.INCLUDE "home/kill_drops.asm"
.INCLUDE "home/_reset.asm"
.INCLUDE "home/unused/unused_3f2f3.asm"
.INCLUDE "sprites/pointers/oam_frameset_pointers.asm"
.INCLUDE "sprites/oam_frameset.asm"
.INCLUDE "home/unused/unused_3ff97.asm"
.INCLUDE "home/reset.asm"
.INCLUDE "home/unused/unused_3fff7.asm"
.INCLUDE "home/vectors.asm"
