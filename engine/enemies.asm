_run_enemies_ai:
	SEC
	LDA aobject_xcoord
	SBC z:zscreen_xcoord
	STA z:zobject_in_process_screen
	LDA z:ztime_stopper_flag
	BEQ @run_regular
	CMP #$04
	BNE _run_enemies_ai_with_megaman_use_time_stopper

@run_regular:
	LDX #$10
	STX z:zsprites_pointer

_run_enemies_ai_regular_loop:
	LDA aobject_flag, X
	BPL @not_exist
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:zobject_in_process_coord
	LDA aobject_screen, X
	SBC z:zscreen_id
	STA z:zobject_in_process_coord_fraction
	LDY aobject_pointer, X
	LDA run_enemies_ai_lo_jumptable, Y
	STA z:z08
	LDA run_enemies_ai_hi_jumptable, Y
	STA z:z09
	LDA #>(_run_enemies_ai_regular_return - 1)
	PHA
	LDA #<(_run_enemies_ai_regular_return - 1)
	PHA
	JMP (z08)

@not_exist:
_run_enemies_ai_regular_return:
	INC z:zsprites_pointer
	LDX z:zsprites_pointer
	CPX #$20
	BNE _run_enemies_ai_regular_loop
	RTS

_run_enemies_ai_with_megaman_use_time_stopper:
	LDX #$10
	STX z:zsprites_pointer

_run_enemies_ai_with_megaman_time_stopper_loop:
	LDA aobject_flag, X
	BPL @not_exist
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:zobject_in_process_coord
	LDA aobject_screen, X
	SBC z:zscreen_id
	STA z:zobject_in_process_coord_fraction
	LDA #>(_run_enemies_ai_with_megaman_time_stopper_return - 1)
	PHA
	LDA #<(_run_enemies_ai_with_megaman_time_stopper_return - 1)
	PHA
	LDY aobject_pointer, X
	LDA enemies_ai_with_megaman_time_stopper_index_jumptable, Y
	BNE @run_with_megaman_time_stopper_ai_jumptable
	LDY aobject_pointer, X
	LDA run_enemies_ai_lo_jumptable, Y
	STA z:z08
	LDA run_enemies_ai_hi_jumptable, Y
	STA z:z09
	JMP (z08)

@run_with_megaman_time_stopper_ai_jumptable:
	TAY
	DEY
	LDA enemies_ai_with_megaman_time_stopper_lo_jumptable, Y
	STA z:z08
	LDA enemies_ai_with_megaman_time_stopper_hi_jumptable, Y
	STA z:z09
	JMP (z08)

@not_exist:
_run_enemies_ai_with_megaman_time_stopper_return:
	INC z:zsprites_pointer
	LDX z:zsprites_pointer
	CPX #$20
	BNE _run_enemies_ai_with_megaman_time_stopper_loop
	RTS

run_enemies_ai_lo_jumptable:
;see constants/objects.asm
	.LOBYTES _enemies_shrink
	.LOBYTES _enemies_shrink_move
	.LOBYTES _enemies_anko_release_shrink
	.LOBYTES _enemies_m_445
	.LOBYTES _enemies_m_445_move
	.LOBYTES _enemies_m_445_remove
	.LOBYTES _enemies_object_killed
	.LOBYTES _enemies_claw
	.LOBYTES _enemies_claw_move
	.LOBYTES _enemies_claw_remove
	.LOBYTES _enemies_tanishi
	.LOBYTES _enemies_tanishi_no_shell_move
	.LOBYTES _enemies_kerog
	.LOBYTES _enemies_petit_kerog
	.LOBYTES _enemies_bubble
	.LOBYTES _enemies_anko_lamp
	.LOBYTES _enemies_anko_eye_tail
	.LOBYTES _enemies_anko_palette
	.LOBYTES _enemies_lift
	.LOBYTES _enemies_drop_platform
	.LOBYTES _enemies_laser
	.LOBYTES _enemies_laser_move
	.LOBYTES _enemies_batton
	.LOBYTES _enemies_robbit
	.LOBYTES _enemies_carrot
	.LOBYTES _enemies_friender_head
	.LOBYTES _enemies_friender_tail
	.LOBYTES _enemies_friender_fire_breath
	.LOBYTES _enemies_friender
	.LOBYTES _enemies_monking
	.LOBYTES _enemies_kukku
	.LOBYTES _enemies_kukku_move
	.LOBYTES _enemies_kukku_remove
	.LOBYTES _enemies_telly
	.LOBYTES _enemies_telly_move
	.LOBYTES _enemies_changkey_maker
	.LOBYTES _enemies_changkey
	.LOBYTES _enemies_light_to_dark
	.LOBYTES _enemies_changkey_maker_light
	.LOBYTES _enemies_dark_to_light
	.LOBYTES _enemies_changkey_maker_killed_to_dark
	.LOBYTES _enemies_pierrobot_jester
	.LOBYTES _enemies_pierrobot
	.LOBYTES _enemies_fly_boy
	.LOBYTES _enemies_fly_boy_move
	.LOBYTES _enemies_destroyed_block_2d
	.LOBYTES _enemies_friender_block
	.LOBYTES _enemies_shutter
	.LOBYTES _enemies_press
	.LOBYTES _enemies_blocky
	.LOBYTES _enemies_blocky_move
	.LOBYTES _enemies_blocky_apart
	.LOBYTES _enemies_neo_metall
	.LOBYTES _enemies_straight_bullet
	.LOBYTES _enemies_matasaburo
	.LOBYTES _enemies_pipi
	.LOBYTES _enemies_pipi_move
	.LOBYTES _enemies_pipi_remove
	.LOBYTES _enemies_pipi_egg
	.LOBYTES _enemies_pipi_egg_crack
	.LOBYTES _enemies_copipi
	.LOBYTES _enemies_kaminari_goro_move
	.LOBYTES _enemies_kaminari_goro
	.LOBYTES _enemies_lightning_bolt
	.LOBYTES _enemies_goblin_1
	.LOBYTES _enemies_goblin_2
	.LOBYTES _enemies_goblin_1_palette
	.LOBYTES _enemies_goblin_2_palette
	.LOBYTES _enemies_goblin_horn
	.LOBYTES _enemies_petit_goblin
	.LOBYTES _enemies_springer
	.LOBYTES _enemies_mole
	.LOBYTES _enemies_mole_up
	.LOBYTES _enemies_mole_down
	.LOBYTES _enemies_mole_remove
	.LOBYTES _enemies_shotman_left
	.LOBYTES _enemies_shotman_right
	.LOBYTES _enemies_shotman_shoot
	.LOBYTES _enemies_sniper_armor
	.LOBYTES _enemies_returning_sniper_joe
	.LOBYTES _enemies_scworm_pipe
	.LOBYTES _enemies_scworm
	.LOBYTES _enemies_unknown_press
	.LOBYTES _enemies_appearing_block_1
	.LOBYTES _enemies_appearing_block_2
	.LOBYTES _enemies_appearing_block_3
	.LOBYTES _enemies_crashman_palette_swap
	.LOBYTES _enemies_destroyed_block_57
	.LOBYTES _enemies_heatman_atomic_fire
	.LOBYTES _enemies_quickman_quick_boomerang
	.LOBYTES _enemies_bubbleman_shoot
	.LOBYTES _enemies_bubbleman_bubble_lead
	.LOBYTES _enemies_metalman_metall_blade
	.LOBYTES _enemies_airman_air_shooter
	.LOBYTES _enemies_crashman_crash_bomber
	.LOBYTES _enemies_crashman_crash_bomber_explosion
	.LOBYTES _enemies_explosion
	.LOBYTES _enemies_woodman_leaf_shield
	.LOBYTES _enemies_woodman_leaf
	.LOBYTES _enemies_mecha_dragon_block
	.LOBYTES _enemies_mecha_dragon
	.LOBYTES _enemies_mecha_dragon_wing
	.LOBYTES _enemies_mecha_dragon_tail_head
	.LOBYTES _enemies_mecha_dragon_beam
	.LOBYTES _enemies_mecha_dragon_fireball
	.LOBYTES _enemies_guts_tank_fist
	.LOBYTES _enemies_picopico_kun_apart
	.LOBYTES _enemies_large_bullet
	.LOBYTES _enemies_wily_machine_2_cockpit_damage
	.LOBYTES _enemies_boobeam_trap
	.LOBYTES _enemies_boobeam_trap_shoot
	.LOBYTES _enemies_alien_shot
	.LOBYTES _enemies_alien_star
	.LOBYTES _enemies_big_fish
	.LOBYTES _enemies_red_liquid_1
	.LOBYTES _enemies_red_liquid_2
	.LOBYTES _enemies_red_liquid_drop
	.LOBYTES _enemies_no_effect_large_life_capsule
	.LOBYTES _enemies_large_life_capsule
	.LOBYTES _enemies_small_life_capsule
	.LOBYTES _enemies_large_weapon_capsule
	.LOBYTES _enemies_small_weapon_capsule
	.LOBYTES _enemies_e_tank
	.LOBYTES _enemies_1up
	.LOBYTES _enemies_wily5_teleport_to_boss
	.LOBYTES _enemies_wily5_teleport_return
	.LOBYTES _enemies_wily5_teleport_to_wily_machine_2
	.LOBYTES _enemies_7f

run_enemies_ai_hi_jumptable:
	.HIBYTES _enemies_shrink
	.HIBYTES _enemies_shrink_move
	.HIBYTES _enemies_anko_release_shrink
	.HIBYTES _enemies_m_445
	.HIBYTES _enemies_m_445_move
	.HIBYTES _enemies_m_445_remove
	.HIBYTES _enemies_object_killed
	.HIBYTES _enemies_claw
	.HIBYTES _enemies_claw_move
	.HIBYTES _enemies_claw_remove
	.HIBYTES _enemies_tanishi
	.HIBYTES _enemies_tanishi_no_shell_move
	.HIBYTES _enemies_kerog
	.HIBYTES _enemies_petit_kerog
	.HIBYTES _enemies_bubble
	.HIBYTES _enemies_anko_lamp
	.HIBYTES _enemies_anko_eye_tail
	.HIBYTES _enemies_anko_palette
	.HIBYTES _enemies_lift
	.HIBYTES _enemies_drop_platform
	.HIBYTES _enemies_laser
	.HIBYTES _enemies_laser_move
	.HIBYTES _enemies_batton
	.HIBYTES _enemies_robbit
	.HIBYTES _enemies_carrot
	.HIBYTES _enemies_friender_head
	.HIBYTES _enemies_friender_tail
	.HIBYTES _enemies_friender_fire_breath
	.HIBYTES _enemies_friender
	.HIBYTES _enemies_monking
	.HIBYTES _enemies_kukku
	.HIBYTES _enemies_kukku_move
	.HIBYTES _enemies_kukku_remove
	.HIBYTES _enemies_telly
	.HIBYTES _enemies_telly_move
	.HIBYTES _enemies_changkey_maker
	.HIBYTES _enemies_changkey
	.HIBYTES _enemies_light_to_dark
	.HIBYTES _enemies_changkey_maker_light
	.HIBYTES _enemies_dark_to_light
	.HIBYTES _enemies_changkey_maker_killed_to_dark
	.HIBYTES _enemies_pierrobot_jester
	.HIBYTES _enemies_pierrobot
	.HIBYTES _enemies_fly_boy
	.HIBYTES _enemies_fly_boy_move
	.HIBYTES _enemies_destroyed_block_2d
	.HIBYTES _enemies_friender_block
	.HIBYTES _enemies_shutter
	.HIBYTES _enemies_press
	.HIBYTES _enemies_blocky
	.HIBYTES _enemies_blocky_move
	.HIBYTES _enemies_blocky_apart
	.HIBYTES _enemies_neo_metall
	.HIBYTES _enemies_straight_bullet
	.HIBYTES _enemies_matasaburo
	.HIBYTES _enemies_pipi
	.HIBYTES _enemies_pipi_move
	.HIBYTES _enemies_pipi_remove
	.HIBYTES _enemies_pipi_egg
	.HIBYTES _enemies_pipi_egg_crack
	.HIBYTES _enemies_copipi
	.HIBYTES _enemies_kaminari_goro_move
	.HIBYTES _enemies_kaminari_goro
	.HIBYTES _enemies_lightning_bolt
	.HIBYTES _enemies_goblin_1
	.HIBYTES _enemies_goblin_2
	.HIBYTES _enemies_goblin_1_palette
	.HIBYTES _enemies_goblin_2_palette
	.HIBYTES _enemies_goblin_horn
	.HIBYTES _enemies_petit_goblin
	.HIBYTES _enemies_springer
	.HIBYTES _enemies_mole
	.HIBYTES _enemies_mole_up
	.HIBYTES _enemies_mole_down
	.HIBYTES _enemies_mole_remove
	.HIBYTES _enemies_shotman_left
	.HIBYTES _enemies_shotman_right
	.HIBYTES _enemies_shotman_shoot
	.HIBYTES _enemies_sniper_armor
	.HIBYTES _enemies_returning_sniper_joe
	.HIBYTES _enemies_scworm_pipe
	.HIBYTES _enemies_scworm
	.HIBYTES _enemies_unknown_press
	.HIBYTES _enemies_appearing_block_1
	.HIBYTES _enemies_appearing_block_2
	.HIBYTES _enemies_appearing_block_3
	.HIBYTES _enemies_crashman_palette_swap
	.HIBYTES _enemies_destroyed_block_57
	.HIBYTES _enemies_heatman_atomic_fire
	.HIBYTES _enemies_quickman_quick_boomerang
	.HIBYTES _enemies_bubbleman_shoot
	.HIBYTES _enemies_bubbleman_bubble_lead
	.HIBYTES _enemies_metalman_metall_blade
	.HIBYTES _enemies_airman_air_shooter
	.HIBYTES _enemies_crashman_crash_bomber
	.HIBYTES _enemies_crashman_crash_bomber_explosion
	.HIBYTES _enemies_explosion
	.HIBYTES _enemies_woodman_leaf_shield
	.HIBYTES _enemies_woodman_leaf
	.HIBYTES _enemies_mecha_dragon_block
	.HIBYTES _enemies_mecha_dragon
	.HIBYTES _enemies_mecha_dragon_wing
	.HIBYTES _enemies_mecha_dragon_tail_head
	.HIBYTES _enemies_mecha_dragon_beam
	.HIBYTES _enemies_mecha_dragon_fireball
	.HIBYTES _enemies_guts_tank_fist
	.HIBYTES _enemies_picopico_kun_apart
	.HIBYTES _enemies_large_bullet
	.HIBYTES _enemies_wily_machine_2_cockpit_damage
	.HIBYTES _enemies_boobeam_trap
	.HIBYTES _enemies_boobeam_trap_shoot
	.HIBYTES _enemies_alien_shot
	.HIBYTES _enemies_alien_star
	.HIBYTES _enemies_big_fish
	.HIBYTES _enemies_red_liquid_1
	.HIBYTES _enemies_red_liquid_2
	.HIBYTES _enemies_red_liquid_drop
	.HIBYTES _enemies_no_effect_large_life_capsule
	.HIBYTES _enemies_large_life_capsule
	.HIBYTES _enemies_small_life_capsule
	.HIBYTES _enemies_large_weapon_capsule
	.HIBYTES _enemies_small_weapon_capsule
	.HIBYTES _enemies_e_tank
	.HIBYTES _enemies_1up
	.HIBYTES _enemies_wily5_teleport_to_boss
	.HIBYTES _enemies_wily5_teleport_return
	.HIBYTES _enemies_wily5_teleport_to_wily_machine_2
	.HIBYTES _enemies_7f

enemies_ai_with_megaman_time_stopper_index_jumptable:
	.BYTE $01 ;enemies_shrink
	.BYTE $02 ;enemies_shrink_move
	.BYTE $01 ;enemies_anko_release_shrink
	.BYTE $00 ;enemies_m_445
	.BYTE $01 ;enemies_m_445_move
	.BYTE $00 ;enemies_m_445_remove
	.BYTE $01 ;enemies_killed
	.BYTE $00 ;enemies_claw
	.BYTE $01 ;enemies_claw_move
	.BYTE $00 ;enemies_claw_remove
	.BYTE $01 ;enemies_tanishi
	.BYTE $01 ;enemies_tanishi_no_shell_move
	.BYTE $01 ;enemies_kerog
	.BYTE $01 ;enemies_petit_kerog
	.BYTE $00 ;enemies_bubble
	.BYTE $02 ;enemies_anko_lamp
	.BYTE $02 ;enemies_anko_eye_tail
	.BYTE $02 ;enemies_anko_palette
	.BYTE $03 ;enemies_lift
	.BYTE $04 ;enemies_drop_platform
	.BYTE $01 ;enemies_laser
	.BYTE $01 ;enemies_laser_move
	.BYTE $01 ;enemies_batton
	.BYTE $01 ;enemies_robbit
	.BYTE $01 ;enemies_carrot
	.BYTE $01 ;enemies_friender_head
	.BYTE $01 ;enemies_friender_tail
	.BYTE $01 ;enemies_friender_fire_breath
	.BYTE $01 ;enemies_friender
	.BYTE $01 ;enemies_monking
	.BYTE $00 ;enemies_kukku
	.BYTE $01 ;enemies_kukku_move
	.BYTE $00 ;enemies_kukku_remove
	.BYTE $01 ;enemies_telly
	.BYTE $01 ;enemies_telly_move
	.BYTE $08 ;enemies_changkey_maker
	.BYTE $01 ;enemies_changkey
	.BYTE $00 ;enemies_light_to_dark
	.BYTE $00 ;enemies_changkey_maker_light
	.BYTE $00 ;enemies_dark_to_light
	.BYTE $00 ;enemies_changkey_maker_killed_to_dark
	.BYTE $01 ;enemies_pierrobot_jester
	.BYTE $01 ;enemies_pierrobot
	.BYTE $01 ;enemies_fly_boy
	.BYTE $01 ;enemies_fly_boy_move
	.BYTE $00 ;enemies_destroyed_block_2d
	.BYTE $02 ;enemies_friender_block
	.BYTE $00 ;enemies_shutter
	.BYTE $01 ;enemies_press
	.BYTE $01 ;enemies_blocky
	.BYTE $01 ;enemies_blocky_move
	.BYTE $01 ;enemies_blocky_apart
	.BYTE $01 ;enemies_neo_metall
	.BYTE $01 ;enemies_straight_bullet
	.BYTE $01 ;enemies_matasaburo
	.BYTE $00 ;enemies_pipi
	.BYTE $01 ;enemies_pipi_move
	.BYTE $00 ;enemies_pipi_remove
	.BYTE $01 ;enemies_pipi_egg
	.BYTE $01 ;enemies_pipi_egg_crack
	.BYTE $01 ;enemies_copipi
	.BYTE $01 ;enemies_kaminari_goro_move
	.BYTE $05 ;enemies_kaminari_goro
	.BYTE $01 ;enemies_lightning_bolt
	.BYTE $06 ;enemies_goblin_1
	.BYTE $07 ;enemies_goblin_2
	.BYTE $00 ;enemies_goblin_1_palette
	.BYTE $00 ;enemies_goblin_2_palette
	.BYTE $01 ;enemies_goblin_horn
	.BYTE $01 ;enemies_petit_goblin
	.BYTE $01 ;enemies_springer
	.BYTE $00 ;enemies_mole
	.BYTE $01 ;enemies_mole_up
	.BYTE $01 ;enemies_mole_down
	.BYTE $00 ;enemies_mole_remove
	.BYTE $01 ;enemies_shotman_left
	.BYTE $01 ;enemies_shotman_right
	.BYTE $01 ;enemies_shotman_shoot
	.BYTE $01 ;enemies_sniper_armor
	.BYTE $01 ;enemies_returning_sniper_joe
	.BYTE $01 ;enemies_scworm_pipe
	.BYTE $01 ;enemies_scworm
	.BYTE $01 ;enemies_unknown_press
	.BYTE $01 ;enemies_appearing_block_1
	.BYTE $01 ;enemies_appearing_block_2
	.BYTE $01 ;enemies_appearing_block_3
	.BYTE $00 ;enemies_crashman_palette_swap
	.BYTE $01 ;enemies_destroyed_block_57
	.BYTE $01 ;enemies_heatman_atomic_fire
	.BYTE $01 ;enemies_quickman_quick_boomerang
	.BYTE $01 ;enemies_bubbleman_shoot
	.BYTE $01 ;enemies_bubbleman_bubble_lead
	.BYTE $01 ;enemies_metalman_metall_blade
	.BYTE $01 ;enemies_airman_air_shooter
	.BYTE $01 ;enemies_crashman_crash_bomber
	.BYTE $01 ;enemies_crashman_crash_bomber_explosion
	.BYTE $01 ;enemies_explosion
	.BYTE $01 ;enemies_woodman_leaf_shield
	.BYTE $01 ;enemies_woodman_leaf
	.BYTE $00 ;enemies_mecha_dragon_block
	.BYTE $01 ;enemies_mecha_dragon
	.BYTE $01 ;enemies_mecha_dragon_wing
	.BYTE $01 ;enemies_mecha_dragon_tail_head
	.BYTE $01 ;enemies_mecha_dragon_beam
	.BYTE $01 ;enemies_mecha_dragon_fireball
	.BYTE $01 ;enemies_guts_tank_fist
	.BYTE $01 ;enemies_picopico_kun_apart
	.BYTE $01 ;enemies_large_bullet
	.BYTE $01 ;enemies_wily_machine_2_cockpit_damage
	.BYTE $00 ;enemies_boobeam_trap
	.BYTE $00 ;enemies_boobeam_trap_shoot
	.BYTE $00 ;enemies_alien_shot
	.BYTE $00 ;enemies_alien_star
	.BYTE $01 ;enemies_big_fish
	.BYTE $01 ;enemies_red_liquid_1
	.BYTE $01 ;enemies_red_liquid_2
	.BYTE $01 ;enemies_red_liquid_drop
	.BYTE $00 ;enemies_no_effect_large_life_capsule
	.BYTE $00 ;enemies_large_life_capsule
	.BYTE $00 ;enemies_small_life_capsule
	.BYTE $00 ;enemies_large_weapon_capsule
	.BYTE $00 ;enemies_small_weapon_capsule
	.BYTE $00 ;enemies_e_tank
	.BYTE $00 ;enemies_1up
	.BYTE $00 ;enemies_wily5_teleport_to_boss
	.BYTE $00 ;enemies_wily5_teleport_return
	.BYTE $00 ;enemies_wily5_teleport_to_wily_machine_2
	.BYTE $00 ;enemies_7f

enemies_ai_with_megaman_time_stopper_lo_jumptable:
	.LOBYTES _check_enemies_object_set_flags_2
	.LOBYTES _check_items_object_set_flags
	.LOBYTES _enemies_lift_with_megaman_time_stopper
	.LOBYTES _enemies_drop_platform_with_megaman_time_stopper
	.LOBYTES _enemies_kaminari_goro_with_megaman_time_stopper
	.LOBYTES _enemies_goblin_with_megaman_time_stopper
	.LOBYTES _enemies_goblin_with_megaman_time_stopper
	.LOBYTES _enemies_changkey_maker_with_megaman_time_stopper
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing
	.LOBYTES _enemies_with_megaman_time_stopper_nothing

enemies_ai_with_megaman_time_stopper_hi_jumptable:
	.HIBYTES _check_enemies_object_set_flags_2
	.HIBYTES _check_items_object_set_flags
	.HIBYTES _enemies_lift_with_megaman_time_stopper
	.HIBYTES _enemies_drop_platform_with_megaman_time_stopper
	.HIBYTES _enemies_kaminari_goro_with_megaman_time_stopper
	.HIBYTES _enemies_goblin_with_megaman_time_stopper
	.HIBYTES _enemies_goblin_with_megaman_time_stopper
	.HIBYTES _enemies_changkey_maker_with_megaman_time_stopper
	.HIBYTES _enemies_with_megaman_time_stopper_nothing
	.HIBYTES _enemies_with_megaman_time_stopper_nothing
	.HIBYTES $E6B5
	.HIBYTES _enemies_with_megaman_time_stopper_nothing
	.HIBYTES _enemies_with_megaman_time_stopper_nothing
	.HIBYTES _enemies_with_megaman_time_stopper_nothing

_enemies_shrink:
_enemies_shrink_move:
	LDA aobject_temp, X
	BNE @continue
	STA aobject_frameset_lower_timer, X
	LDA aenemies_temp - $10, X
	BNE @rush
	LDA #$01
	STA aenemies_temp - $10, X
	LDA #$14
	STA aobject_temp, X
	LDA #$05
	STA aobject_frameset_upper_timer, X
	LDA z:zrandom
	AND #%00000011
	BEQ @z
	LDA #$02
	STA z:z09
	LDA #$0C
	STA z:z08
	JSR _enemies_to_megaman
	LDX z:zsprites_pointer
	JMP @continue

@z:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA objects_xcoord_speed_init_table
	STA aobject_xcoord_speed, X
	LDA objects_xcoord_speed_init_table + 1
	STA aobject_xcoord_speed_fraction, X
	LDA objects_ycoord_speed_init_table
	STA aobject_ycoord_speed, X
	LDA objects_ycoord_speed_init_table + 1
	STA aobject_ycoord_speed_fraction, X
	BNE @continue

@rush:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aenemies_temp - $10, X
	LDA z:zrandom
	AND #%00000001
	TAY
	LDA @timer, Y
	STA aobject_temp, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	LDA #$3C
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X

@continue:
	DEC aobject_temp, X
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BCC @check_flags
	BNE @nz
	LDA #$00
	STA aobject_frameset_upper_timer, X
	BEQ @check_flags

@nz:
	CMP #$07
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_lower_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@timer:
	.BYTE $19, $4A

_enemies_anko_release_shrink:
	LDA aobject_temp, X
	BNE @nz
	LDY #$0F
	LDA #$02
	STA z:z01
	LDA #$01
	STA z:z00

@loop:
	JSR _check_object_exist
	BCS @not_exist
	DEC z:z01
	BEQ @set_timer
	DEY
	BNE @loop
	BNE @set_timer

@not_exist:
	LDA #objects_shrink_move
	JSR _enemies_to_items
	LDA #$31
	BNE @continue

@set_timer:
	LDA #$62

@continue:
	STA aobject_temp, X

@nz:
	DEC aobject_temp, X
	JSR _check_items_object_set_flags
	RTS

_enemies_m_445:
	LDA aobject_xcoord_speed_fraction, X
	BNE @created
	LDA #$03
	JSR _check_object_exist_with_xcoord_speed_fraction
	BCC @created
	RTS

@created:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_temp, X
	BNE @run_regular
	LDA #$03
	STA z:z01
	LDA #objects_m_445_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_m_445_move
	JSR _enemies_to_items
	BCS @exist
	LDA aenemies_temp - $10, X
	AND #%00000001
	TAX
	CLC
	LDA aobject_xcoord + $10, Y
	ADC @xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC @screen_offset, X
	STA aobject_screen + $10, Y
	LDX z:zsprites_pointer
	INC aenemies_temp - $10, X

@exist:
	LDA #$4B
	STA aobject_temp, X

@run_regular:
	DEC aobject_temp, X
	LDY #$17
	JSR _enemies_switch_palette
	RTS

@xcoord_offset:
	.BYTE $50, $C8

@screen_offset:
	.BYTE +0, -1

_check_object_exist_with_xcoord_speed_fraction:
	STA z:z00
	LDY #$0F

@loop:
	JSR _check_object_exist
	BCS @not_exist
	LDA aobject_xcoord_speed_fraction + $10, Y
	BEQ @skip
	LSR aobject_flag, X
	LDA #$00
	STA a:aenemies_index - $10, X
	SEC
	RTS

@skip:
	DEY
	BNE @loop

@not_exist:
	LDA #$01
	STA aobject_xcoord_speed_fraction, X
	CLC
	RTS

_enemies_m_445_move:
	LDA aobject_xcoord_speed_fraction, X
	BNE @nz_1
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	CMP #$03
	BCC @too_close
	CMP #$FE
	BCC @check_flags

@too_close:
	JSR _compare_megaman_xcoord_with_objects_xcoord

@nz_1:
	LDA aobject_temp, X
	BNE @nz_2
	LDA #$0B
	STA aobject_temp, X
	LDA aenemies_temp - $10, X
	PHA
	AND #%00000111
	TAY
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed, X
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	PLA
	PHA
	CMP #$04
	BCC @not_turn
	CMP #$0C
	BCS @not_turn
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	ADC #$00
	STA aobject_ycoord_speed, X

@not_turn:
	PLA
	CLC
	ADC #$01
	AND #%00001111
	STA aenemies_temp - $10, X

@nz_2:
	DEC aobject_temp, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@xcoord_speed_fraction_table:
	.BYTE $17, $5E, $AD, $E3, $E3, $AD, $5E, $17

@ycoord_speed_fraction_table:
	.BYTE $F5, $E3, $AD, $5E, $5E, $AD, $E3, $F5

_enemies_m_445_remove:
	LDA #$03
	STA z:z00

_enemies_remove_common:
	LDY #$0F

@loop:
	JSR _check_object_exist
	BCS @not_exist
	LDA #$00
	STA aobject_flag + $10, Y
	LDA #$FF
	STA aenemies_hit_flag - $10, Y
	DEY
	BPL @loop

@not_exist:
	LDA #$00
	STA aobject_flag, X
	LDA #$FF
	STA a:aenemies_index - $10, X
	RTS

_enemies_object_killed:
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_claw:
	LDA aobject_xcoord_speed_fraction, X
	BNE @created
	LDA #$07
	JSR _check_object_exist_with_xcoord_speed_fraction
	BCC @created
	RTS

@created:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_temp, X
	BNE @timer
	LDA #$02
	STA z:z01
	LDA #objects_claw_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_claw_move
	JSR _enemies_to_items
	BCS @exist
	LDA aenemies_temp - $10, X
	AND #%00000001
	TAX
	LDA aobject_xcoord + $10, Y
	ADC @xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC @screen_offset, X
	STA aobject_screen + $10, Y
	LDX z:zsprites_pointer
	INC aenemies_temp - $10, X

@exist:
	LDA #$5D
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	RTS

@xcoord_offset:
	.BYTE $30, $E0

@screen_offset:
	.BYTE +0, -1

_set_enemies_object_limited:
	STA z:z00
	LDY #$0F

@loop:
	JSR _check_object_exist
	BCS @not_exist
	DEC z:z01
	BEQ @done
	DEY
	BNE @loop
	BEQ @done

@not_exist:
	CLC
	RTS

@done:
	SEC
	RTS

_enemies_claw_move:
	LDA #$0B
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA aobject_temp, X
	BNE @landing
	LDA z:z00
	BEQ @continue
	INC aobject_temp, X
	LDA #$76
	STA aobject_ycoord_speed_fraction, X
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA aobject_flag, X
	ORA #objects_with_gravity
	STA aobject_flag, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	BNE @continue

@landing:
	CMP #$03
	BEQ @walking
	LDA z:z00
	BEQ @continue
	LDA aobject_temp, X
	CMP #$02
	BEQ @recoiling
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	LDA #$02
	STA aobject_ycoord_speed, X
	INC aobject_temp, X
	BNE @continue

@recoiling:
	LDA #$C0
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_xcoord_speed, X
	LDA #$A3
	STA aobject_xcoord_speed_fraction, X
	INC aobject_temp, X
	LDA aobject_flag, X
	AND #~objects_with_gravity
	STA aobject_flag, X
	BNE @continue

@walking:
	LDA #$0C
	LDA z:z00
	BNE @continue
	LDA #$00
	STA aobject_temp, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	LDA aobject_flag, X
	ORA #objects_with_gravity
	STA aobject_flag, X

@continue:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_claw_remove:
	LDA #$07
	STA z:z00
	JMP _enemies_remove_common

_enemies_tanishi:
	LDA aobject_temp, X
	BNE @no_shell
	LDA #$0C
	STA z:z02
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BCC @l2
	LDA #$00
	STA aobject_frameset_upper_timer, X

@l2:
	LDA aobject_hp, X
	CMP #$14
	BEQ @continue
	LDA #objects_tanishi_no_shell_move
	JSR _enemies_to_items
	LDA aobject_flag + $10, Y
	ORA #objects_with_gravity
	EOR #objects_right
	STA aobject_flag + $10, Y
	CLC
	LDA aobject_ycoord, X
	ADC #$08
	STA aobject_ycoord, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$47
	STA aobject_xcoord_speed_fraction, X
	LDA #$03
	STA aobject_collision_xcoord, X
	LDA #$03
	STA aobject_frameset_upper_timer, X
	INC aobject_temp, X
	BNE @continue

@no_shell:
	LDA #$04
	STA z:z02
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BCC @continue
	LDA #$03
	STA aobject_frameset_upper_timer, X

@continue:
	LDA aobject_flag, X
	AND #objects_right
	BEQ @on_left
	CLC
	LDA aobject_xcoord, X
	ADC #$0C
	STA z:z08
	LDA aobject_screen, X
	ADC #$00
	JMP @on_right

@on_left:
	SEC
	LDA aobject_xcoord, X
	SBC #$0C
	STA z:z08
	LDA aobject_screen, X
	SBC #$00

@on_right:
	STA z:z09
	LDA aobject_ycoord, X
	STA z:z0A
	LDA #$00
	STA z:z0B
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDA z:z00
	AND #%00000001
	BNE @block_1
	CLC
	LDA z:z0A
	ADC z:z02
	STA z:z0A
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDA z:z00
	AND #%00000001
	BNE @block_2

@block_1:
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X

@block_2:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_tanishi_no_shell_move:
_enemies_bubble:
_enemies_carrot:
_enemies_changkey:
_enemies_straight_bullet:
_enemies_pipi_egg_crack:
_enemies_lightning_bolt:
_enemies_shotman_shoot:
_enemies_bubbleman_shoot:
_enemies_metalman_metall_blade:
_enemies_crashman_crash_bomber_explosion:
_enemies_explosion:
_enemies_woodman_leaf_shield:
_enemies_mecha_dragon_fireball:
_enemies_wily_machine_2_cockpit_damage:
_enemies_boobeam_trap_shoot:
_enemies_alien_shot:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_kerog:
	LDA aobject_frameset_upper_timer, X
	CMP #$09
	BCS @le9
	LDA #$01
	STA z:z01
	LDA #objects_petit_kerog
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #$09
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	JSR @check_flags

@le9:
	CMP #$0A
	BNE @check_flags
	LDA aobject_frameset_lower_timer, X
	BNE @check_flags
	LDA #$02
	STA z:z01

@loop:
	LDA #objects_petit_kerog
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BPL @loop

@exist:
	LDA aobject_frameset_upper_timer, X
	CMP #$08
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	JSR _check_enemies_object_set_flags_2
	RTS

@xcoord_speed_fraction_table:
	.BYTE $15, $8D, $A2

@xcoord_speed_table:
	.BYTE +4, +2, +1

_enemies_petit_kerog:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$03
	STA z:z01
	LDA #$04
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aenemies_temp - $10, X
	BNE @timer
	LDA z:z00
	BEQ @continue
	LDA #$3E
	STA aobject_temp, X
	INC aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	INC aenemies_temp - $10, X
	BNE @continue

@timer:
	DEC aobject_temp, X
	BNE @continue
	DEC aobject_frameset_upper_timer, X
	DEC aenemies_temp - $10, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$A2
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$E6
	STA aobject_xcoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X

@continue:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_anko_lamp:
	LDA aobject_xcoord_speed_fraction, X
	BNE @explosion
	LDA aobject_temp, X
	BEQ @killed
	LDY #$02
	CMP aobject_hp, X
	BEQ @not_flash
	LDY #$05

@not_flash:
	JSR _enemies_switch_palette

@killed:
	LDA aobject_hp, X
	STA aobject_temp, X
	LDA aobject_screen, X
	STA aobject_ycoord_speed_fraction, X
	JSR _check_items_object_set_flags
	LDA aobject_hp, X
	BNE @not_killed
	LDA #objects_invisible | objects_exist
	STA aobject_flag, X
	LDA #objects_anko_lamp
	STA aobject_pointer, X
	LDX #$01

@loop:
	STX z:z01
	LDA enemies_switch_palette_table + $06, X
	JSR _check_special_object_exist
	BCS @not_exist
	LDA #$00
	STA aobject_flag + $10, Y
	LDA #$FF
	STA aitems_index - $10, Y

@not_exist:
	LDX z:z01
	DEX
	BPL @loop
	LDX z:zsprites_pointer
	LDY aenemies_temp - $10, X
	LDA #$00
	STA aitems_index + $0F, Y
	STA aitems_respawn_flag + $01, Y
	STA aitems_index + $0E, Y
	STA aitems_respawn_flag + $02, Y
	LDA #$0E
	STA aobject_xcoord_speed_fraction, X
	LDA #$06
	STA aobject_xcoord_speed, X

@not_killed:
	RTS

@explosion:
	DEC aobject_xcoord_speed, X
	PHP
	LDA aobject_xcoord_speed_fraction, X
	CMP #$05
	BCC @l5
	LDY #$02
	PLP
	BEQ @z
	JSR _enemies_switch_palette
	RTS

@z:
	LDY #$05
	BNE @continue

@l5:
	PLP
	BNE @nz
	LDY aobject_xcoord_speed_fraction, X
	LDA enemies_switch_palette_table + $07, Y
	TAY

@continue:
	LDA #$09
	STA aobject_xcoord_speed, X
	JSR _enemies_switch_palette
	LDA aobject_xcoord_speed_fraction, X
	CMP #$06
	BCS @le6
	JSR _enemies_anko_lamp_explosion

@le6:
	DEC aobject_xcoord_speed_fraction, X
	BNE @nz
	LSR aobject_flag, X

@nz:
	RTS

_enemies_switch_palette:
	LDX #$02

@loop:
	LDA enemies_switch_palette_table, Y
	STA acurrent_background_palette + $09, X
	STA abackground_palette_set + $09, X
	STA abackground_palette_set + $19, X
	STA abackground_palette_set + $29, X
	DEY
	DEX
	BPL @loop
	LDX z:zsprites_pointer
	RTS

_enemies_anko_lamp_explosion:
	LDA #$04
	STA z:z01
	LDA aobject_xcoord_speed_fraction, X
	ASL
	ASL
	ADC aobject_xcoord_speed_fraction, X
	STA z:z02
	LDA aobject_ycoord_speed_fraction, X
	STA z:z03

@loop:
	LDA #objects_killed
	JSR _enemies_to_items
	BCS @exist
	LDX z:z02
	LDA enemies_anko_lamp_explosion_ycoord_offset - 5, X
	STA aobject_ycoord + $10, Y
	LDA z:z03
	STA aobject_screen + $10, Y
	CMP #$09
	PHP
	LDA enemies_anko_lamp_explosion_xcoord_offset - 5, X
	PLP
	BEQ @is_screen_9
	SEC
	SBC #$20

@is_screen_9:
	STA aobject_xcoord + $10, Y
	SEC
	SBC z:zscreen_xcoord
	LDA z:z03
	SBC z:zscreen_id
	BEQ @same
	LDA #$00
	STA aobject_flag + $10, Y

@same:
	LDX z:zsprites_pointer
	INC z:z02
	DEC z:z01
	BPL @loop

@exist:
	LDX z:zsprites_pointer
	track_queue track_enemy_hit
	RTS

enemies_switch_palette_table:
	.BYTE white_gray,    light_rose,    black
	.BYTE white_gray,    white_gray,    black
	.BYTE light_gray,    dark_blue,     light_orange
	.BYTE light_magenta, light_azure,   $0E
	.BYTE pale_azure,    light_magenta, black
	.BYTE white_azure,   light_violet,  dark_azure
	.BYTE light_azure,   light_azure,   dark_azure
	.BYTE light_azure,   light_azure,   light_azure

enemies_anko_lamp_explosion_xcoord_offset:
	.BYTE $68, $78, $88, $88, $A8, $68, $78, $98
	.BYTE $98, $B8, $68, $78, $98, $98, $A8, $58
	.BYTE $68, $88, $A8, $B8, $68, $78, $78, $88
	.BYTE $A8

enemies_anko_lamp_explosion_ycoord_offset:
	.BYTE $B8, $A8, $88, $B8, $B8, $A8, $B8, $98
	.BYTE $B8, $A8, $98, $B8, $98, $B8, $A8, $B8
	.BYTE $88, $98, $88, $B8, $B8, $88, $A8, $A8
	.BYTE $98

_enemies_anko_eye_tail:
	LDA aobject_temp, X
	BNE @nz
	LDA #$01
	STA aobject_frameset_upper_timer, X
	LDA #$70
	STA aobject_temp, X

@nz:
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BCC @timer
	LDA #$00
	STA aobject_frameset_lower_timer, X

@timer:
	DEC aobject_temp, X
	JSR _check_items_object_set_flags
	RTS

_enemies_anko_palette:
	LDY #$02
	JSR _enemies_switch_palette
	LDA #$FF
	STA aitems_index - $10, X
	LSR aobject_flag, X
	RTS

_enemies_lift:
	LDA #$14
	STA aobject_stand_xcoord - $10, X
	SEC
	LDA aobject_screen, X
	SBC #$04
	LDY z:zcurrent_stage
	CPY #stage_crashman
	BEQ @is_crashman
	SEC
	LDA aobject_screen, X
	SBC #$1B

@is_crashman:
	STA z:z00
	TAY
	LDA @lift_start, Y
	STA z:z01
	CLC
	ADC aobject_temp, X
	TAY
	LDA z:z00
	CMP #$03
	BCS @is_wily4_1
	LDA @crashman_lift_trajectory_set, Y
	STA z:z02
	LDA @crashman_lift_trajectory_set + 1, Y
	JMP @check_toward

@is_wily4_1:
	LDA @wily4_lift_trajectory_set, Y
	STA z:z02
	LDA @wily4_lift_trajectory_set + 1, Y

@check_toward:
	AND #%00000001
	BNE @move_horizontal
	LDA aobject_ycoord, X
	CMP z:z02
	BEQ @arrived
	BNE @nz

@move_horizontal:
	LDA aobject_xcoord, X
	CMP z:z02
	BNE @nz

@arrived:
	LDA #$00
	STA aobject_xcoord_fraction, X
	STA aobject_ycoord_fraction, X
	INY
	INY
	INC aobject_temp, X
	INC aobject_temp, X
	LDA aobject_temp, X
	LDX z:z00
	CMP @lift_length, X
	BNE @nz
	LDX z:zsprites_pointer
	LDA #$00
	STA aobject_temp, X
	LDY z:z01

@nz:
	LDX z:z00
	CPX #$03
	BCS @is_wily4_2
	LDA @crashman_lift_trajectory_set + 1, Y
	JMP @set_speed

@is_wily4_2:
	LDA @wily4_lift_trajectory_set + 1, Y

@set_speed:
	LDX z:zsprites_pointer
	TAY
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @object_flag_table, Y
	STA aobject_flag, X
	JSR _check_enemies_object_set_flags_1
	BCC @exist
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@exist:
	SEC
	LDA aobject_ycoord, X
	SBC #$04
	STA aobject_stand_ycoord - $10, X
	RTS

@lift_start:
	.BYTE @crashman_lift_trajectory_set_1 - @crashman_lift_trajectory_set
	.BYTE @crashman_lift_trajectory_set_2 - @crashman_lift_trajectory_set
	.BYTE @crashman_lift_trajectory_set_3 - @crashman_lift_trajectory_set
	.BYTE @wily4_lift_trajectory_set_1 - @wily4_lift_trajectory_set
	.BYTE @wily4_lift_trajectory_set_2 - @wily4_lift_trajectory_set
	.BYTE @wily4_lift_trajectory_set_3 - @wily4_lift_trajectory_set
	.BYTE @wily4_lift_trajectory_set_4 - @wily4_lift_trajectory_set

@ycoord_speed_fraction_table:
	.BYTE $1B, $00, $E5, $00

@ycoord_speed_table:
	.BYTE -1, +0, +0, +0

@xcoord_speed_fraction_table:
	.BYTE $00, $E5, $00, $E5

@object_flag_table:
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist

@lift_length:
	.BYTE @crashman_lift_trajectory_set_2 - @crashman_lift_trajectory_set_1
	.BYTE @crashman_lift_trajectory_set_3 - @crashman_lift_trajectory_set_2
	.BYTE @crashman_lift_trajectory_set_end - @crashman_lift_trajectory_set_3
	.BYTE @wily4_lift_trajectory_set_2 - @wily4_lift_trajectory_set_1
	.BYTE @wily4_lift_trajectory_set_3 - @wily4_lift_trajectory_set_2
	.BYTE @wily4_lift_trajectory_set_4 - @wily4_lift_trajectory_set_3
	.BYTE @wily4_lift_trajectory_set_end - @wily4_lift_trajectory_set_4

@crashman_lift_trajectory_set:
@crashman_lift_trajectory_set_1:
;coord, speed table
	.BYTE $A0, 0
	.BYTE $28, 1
	.BYTE $40, 2
	.BYTE $D8, 3

@crashman_lift_trajectory_set_2:
	.BYTE $A0, 0
	.BYTE $68, 1
	.BYTE $80, 2
	.BYTE $98, 3
	.BYTE $60, 2
	.BYTE $B8, 3
	.BYTE $40, 2
	.BYTE $88, 1
	.BYTE $60, 0
	.BYTE $28, 1
	.BYTE $40, 2
	.BYTE $68, 3
	.BYTE $20, 2
	.BYTE $D8, 3

@crashman_lift_trajectory_set_3:
	.BYTE $A0, 0
	.BYTE $28, 1
	.BYTE $90, 2
	.BYTE $C8, 3
	.BYTE $30, 2
	.BYTE $A8, 1
	.BYTE $40, 0
	.BYTE $B8, 3
	.BYTE $50, 0
	.BYTE $A8, 1
	.BYTE $60, 0
	.BYTE $B8, 3
	.BYTE $70, 0
	.BYTE $A8, 1
	.BYTE $80, 0
	.BYTE $88, 1
	.BYTE $70, 2
	.BYTE $98, 3
	.BYTE $60, 2
	.BYTE $88, 1
	.BYTE $50, 2
	.BYTE $98, 3
	.BYTE $40, 2
	.BYTE $88, 1
	.BYTE $30, 2
	.BYTE $78, 1
	.BYTE $80, 0
	.BYTE $38, 1
	.BYTE $70, 2
	.BYTE $68, 3
	.BYTE $60, 2
	.BYTE $38, 1
	.BYTE $50, 2
	.BYTE $68, 3
	.BYTE $40, 2
	.BYTE $28, 1
	.BYTE $70, 0
	.BYTE $18, 1
	.BYTE $30, 2
	.BYTE $68, 3
	.BYTE $20, 2
	.BYTE $D8, 3
@crashman_lift_trajectory_set_end:

@wily4_lift_trajectory_set:
@wily4_lift_trajectory_set_1:
	.BYTE $A0, 0
	.BYTE $B8, 1
	.BYTE $50, 2
	.BYTE $E8, 3
	.BYTE $40, 2
	.BYTE $C8, 1
	.BYTE $20, 2
	.BYTE $88, 1
	.BYTE $30, 0
	.BYTE $A8, 3
	.BYTE $60, 0
	.BYTE $88, 1
	.BYTE $70, 0
	.BYTE $A8, 3
	.BYTE $B0, 0
	.BYTE $78, 1
	.BYTE $50, 2
	.BYTE $98, 3
	.BYTE $40, 2
	.BYTE $58, 1
	.BYTE $30, 2
	.BYTE $78, 3
	.BYTE $20, 2
	.BYTE $38, 1
	.BYTE $60, 0
	.BYTE $48, 3
	.BYTE $50, 2
	.BYTE $68, 3
	.BYTE $70, 0
	.BYTE $48, 1
	.BYTE $C0, 0
	.BYTE $C8, 3
	.BYTE $80, 2
	.BYTE $D8, 3

@wily4_lift_trajectory_set_2:
	.BYTE $C0, 0
	.BYTE $18, 1
	.BYTE $90, 2
	.BYTE $38, 3
	.BYTE $B0, 0
	.BYTE $58, 3
	.BYTE $C0, 0
	.BYTE $C8, 3
	.BYTE $70, 2
	.BYTE $88, 1
	.BYTE $20, 2
	.BYTE $48, 1

@wily4_lift_trajectory_set_3:
	.BYTE $90, 0
	.BYTE $18, 1
	.BYTE $60, 2
	.BYTE $28, 3
	.BYTE $B0, 0
	.BYTE $B8, 3
	.BYTE $C0, 0
	.BYTE $E8, 3
	.BYTE $40, 2
	.BYTE $C8, 1
	.BYTE $30, 2
	.BYTE $98, 1
	.BYTE $40, 0
	.BYTE $B8, 3
	.BYTE $50, 0
	.BYTE $D8, 3
	.BYTE $B0, 0
	.BYTE $C8, 1
	.BYTE $60, 2
	.BYTE $58, 1
	.BYTE $30, 2
	.BYTE $28, 1
	.BYTE $40, 0
	.BYTE $38, 3

@wily4_lift_trajectory_set_4:
	.BYTE $80, 0
	.BYTE $38, 1
	.BYTE $60, 2
	.BYTE $48, 3
	.BYTE $A0, 0
	.BYTE $88, 3
	.BYTE $C0, 0
	.BYTE $D8, 3
	.BYTE $50, 2
	.BYTE $58, 1
@wily4_lift_trajectory_set_end:

_enemies_drop_platform:
	LDA #$18
	STA aobject_stand_xcoord - $10, X
	LDA aobject_flag, X
	AND #objects_with_gravity
	BNE @drop
	LDA aobject_temp, X
	CMP #$06
	BCS @drop
	JSR _check_enemies_object_set_flags_2
	JMP @continue

@drop:
	LDA aobject_flag, X
	ORA #objects_with_gravity
	STA aobject_flag, X
	JSR _check_enemies_object_set_flags_1

@continue:
	BCC @exist
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@exist:
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_stand_ycoord - $10, X
	RTS

_enemies_laser:
	SEC
	LDA aobject_screen, X
	SBC #$03
	TAY
	LDA @laser_length_count, Y
	STA z:z02
	LDA @laser_start, Y
	STA z:z01

@loop:
	LDA #objects_laser_move
	JSR _enemies_to_items
	LDX z:z01
	LDA @laser_flags, X
	STA aobject_flag + $10, Y
	AND #objects_right
	BNE @on_right
	LDA #$FC
	BNE @on_left

@on_right:
	LDA #$04

@on_left:
	STA aobject_xcoord + $10, Y
	LDA @laser_ycoord, X
	STA aobject_ycoord + $10, Y
	LDA @draw_laser_length, X
	STA aitems_index - $10, Y
	LDA @laser_timer, X
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	INC z:z01
	DEC z:z02
	BNE @loop
	LSR aobject_flag, X
	LDA #$00
	STA a:aenemies_index - $10, X
	RTS

@laser_length_count:
	.BYTE $02, $03, $04, $00, $00, $00, $00, $00
	.BYTE $00, $0C, $0A, $05, $05, $02, $05, $04

@laser_start:
	.BYTE $00, $02, $05, $09, $09, $09, $09, $09
	.BYTE $09, $09, $15, $1F, $24, $29, $2B, $30

@laser_flags:
;1
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;2
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;3
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;4
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;5
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;6
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;7
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;8
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

;9
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist

;10
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_right | objects_exist
	.BYTE can_collide_megaman | objects_invisible | objects_exist

@laser_ycoord:
;1
	.BYTE $47
	.BYTE $77

;2
	.BYTE $57
	.BYTE $87
	.BYTE $C7

;3
	.BYTE $47
	.BYTE $67
	.BYTE $87
	.BYTE $C7

;4
	.BYTE $17
	.BYTE $17
	.BYTE $37
	.BYTE $37
	.BYTE $57
	.BYTE $57
	.BYTE $77
	.BYTE $77
	.BYTE $A7
	.BYTE $A7
	.BYTE $B7
	.BYTE $B7

;5
	.BYTE $37
	.BYTE $37
	.BYTE $57
	.BYTE $57
	.BYTE $77
	.BYTE $77
	.BYTE $97
	.BYTE $97
	.BYTE $B7
	.BYTE $B7

;6
	.BYTE $17
	.BYTE $17
	.BYTE $27
	.BYTE $27
	.BYTE $A7

;7
	.BYTE $17
	.BYTE $37
	.BYTE $67
	.BYTE $87
	.BYTE $A7

;8
	.BYTE $67
	.BYTE $B7

;9
	.BYTE $27
	.BYTE $47
	.BYTE $67
	.BYTE $77
	.BYTE $A7

;10
	.BYTE $17
	.BYTE $27
	.BYTE $67
	.BYTE $A7

@draw_laser_length:
;1
	.BYTE $FF
	.BYTE $00

;2
	.BYTE $FF
	.BYTE $00
	.BYTE $00

;3
	.BYTE $FF
	.BYTE $A0
	.BYTE $60
	.BYTE $60

;4
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80

;5
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $60
	.BYTE $A0
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80

;6
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $80
	.BYTE $00

;7
	.BYTE $00
	.BYTE $00
	.BYTE $FF
	.BYTE $FF
	.BYTE $00

;8
	.BYTE $00
	.BYTE $00

;9
	.BYTE $00
	.BYTE $00
	.BYTE $80
	.BYTE $00
	.BYTE $70

;10
	.BYTE $00
	.BYTE $00
	.BYTE $FF
	.BYTE $20

@laser_timer:
;1
	.BYTE $01
	.BYTE $1F

;2
	.BYTE $01
	.BYTE $1F
	.BYTE $3E

;3
	.BYTE $01
	.BYTE $1F
	.BYTE $3E
	.BYTE $5D

;4
	.BYTE $01
	.BYTE $01
	.BYTE $1F
	.BYTE $1F
	.BYTE $3E
	.BYTE $3E
	.BYTE $5D
	.BYTE $5D
	.BYTE $7C
	.BYTE $7C
	.BYTE $9D
	.BYTE $9D

;5
	.BYTE $01
	.BYTE $01
	.BYTE $1F
	.BYTE $1F
	.BYTE $3E
	.BYTE $3E
	.BYTE $5D
	.BYTE $5D
	.BYTE $7C
	.BYTE $7C

;6
	.BYTE $01
	.BYTE $01
	.BYTE $1F
	.BYTE $1F
	.BYTE $3E

;7
	.BYTE $01
	.BYTE $1F
	.BYTE $3E
	.BYTE $5D
	.BYTE $7C

;8
	.BYTE $01
	.BYTE $1F

;9
	.BYTE $01
	.BYTE $1F
	.BYTE $3E
	.BYTE $5D
	.BYTE $7C

;10
	.BYTE $01
	.BYTE $1F
	.BYTE $3E
	.BYTE $5D

_enemies_laser_move:
	LDA aobject_temp, X
	BEQ @draw_laser
	DEC aobject_temp, X
	BEQ @run
	RTS

@run:
	LDA aobject_flag, X
	AND #~objects_invisible
	STA aobject_flag, X
	track_queue track_force_beam

@draw_laser:
	LDA aobject_flag, X
	AND #objects_invisible
	BNE @continue
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right_1
	LDA aobject_xcoord, X
	CMP aenemies_temp - $10, X
	BCS @draw_process
	BCC @draw_done

@on_right_1:
	LDA aobject_xcoord, X
	CMP aenemies_temp - $10, X
	BCC @draw_process

@draw_done:
	LDA aenemies_temp - $10, X
	STA aobject_xcoord, X
	LDA aobject_flag, X
	ORA #objects_invisible
	STA aobject_flag, X
	BNE @continue

@draw_process:
	LDA aobject_screen, X
	STA z:z09
	LDA aobject_xcoord, X
	STA z:z08
	LDA aobject_ycoord, X
	AND #%11110000
	STA z:z0A
	JSR _draw_other_on_screen
	LDY #$74
	LDA aobject_ppu_data + 4, X
	AND #%00000001
	BEQ @even
	LDY #$76

@even:
	TYA
	STA adraw_other_ppu_data + 1, X
	INC z:zdraw_other_flag
	LDX z:zsprites_pointer
	JSR _check_enemies_object_set_flags_1
	BCC @continue
	LDA aobject_flag, X
	ASL
	ORA #objects_invisible
	STA aobject_flag, X

@continue:
	LDA z:zmegaman_invincibility_time
	BNE @skip
	SEC
	LDA aobject_ycoord, X
	SBC aobject_ycoord
	BCS @on_down
	EOR #%11111111
	ADC #$01

@on_down:
	CMP #$10
	BCS @skip
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right_2
	LDA aobject_xcoord, X
	CMP aobject_xcoord
	BCS @skip
	BCC @kill

@on_right_2:
	LDA aobject_xcoord, X
	CMP aobject_xcoord
	BCC @skip

@kill:
	LDA #$00
	STA z:zmegaman_status
	JMP _megaman_death

@skip:
	RTS

_enemies_batton:
	LDA aobject_temp, X
	BNE @run
	LDA z:zrandom
	EOR #%00000001
	STA z:zrandom
	AND #%00000001
	TAY
	LDA @timer_table, Y
	STA aobject_temp, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	STA aobject_flag, X
	BNE @continue

@run:
	CMP #$01
	BEQ @fly_to_megaman
	CMP #$FF
	BEQ @hit_megaman_done
	DEC aobject_temp, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X

@continue:
	JSR _check_enemies_object_set_flags_2
	RTS

@fly_to_megaman:
	LDA aobject_flag, X
	AND #~objects_can_recoiled
	STA aobject_flag, X
	LDA aobject_frameset_upper_timer, X
	CMP #$08
	BNE @nz_1
	LDA #$05
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA z:z09
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA z:z08
	JSR _enemies_to_megaman

@nz_1:
	JSR _check_enemies_object_set_flags_1
	LDA z:z01
	BEQ @not_hitting
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$02
	STA aobject_ycoord_speed, X
	LDA #$FF
	STA aobject_temp, X

@not_hitting:
	RTS

@hit_megaman_done:
	LDA aobject_frameset_upper_timer, X
	CMP #$08
	BNE @nz_2
	LDA #$05
	STA aobject_frameset_upper_timer, X

@nz_2:
	LDA #$04
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BEQ @air
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	STA aobject_flag, X
	LDA #$3E
	STA aobject_temp, X

@air:
	JSR _check_enemies_object_set_flags_1
	RTS

@timer_table:
	.BYTE $3E, $9C

_enemies_robbit:
	LDA aobject_ycoord_speed, X
	STA z:z04
	LDA #$0C
	STA z:z01
	LDA #$10
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aenemies_temp - $10, X
	BNE @set_robbit
	LDA aobject_temp, X
	BNE @timer
	LDA #$C0
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X
	STA z:z04
	JSR _compare_megaman_xcoord_with_objects_xcoord
	INC aenemies_temp - $10, X
	LDA #$01
	STA aobject_frameset_upper_timer, X

@set_robbit:
	LDA aenemies_temp - $10, X
	CMP #$01
	BNE @jump_done
	LDA z:z04
	BPL @timer
	LDA z:z00
	BEQ @timer
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	INC aenemies_temp - $10, X
	LDA #$3E
	STA aobject_temp, X
	LDA #$03
	STA aobject_frameset_upper_timer, X
	BNE @timer

@jump_done:
	LDA aobject_temp, X
	BNE @timer
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #objects_carrot
	JSR _enemies_to_items
	BCS @exist
	LDA z:zsprites_pointer
	PHA
	TYA
	CLC
	ADC #$10
	TAX
	STX z:zsprites_pointer
	LDA #$02
	STA z:z09
	LDA #$0C
	STA z:z08
	JSR _enemies_to_megaman
	PLA
	STA z:zsprites_pointer
	TAX

@exist:
	LDA #$3E
	STA aobject_temp, X
	INC aenemies_temp - $10, X
	LDA aenemies_temp - $10, X
	CMP #$05
	BNE @timer
	LDA #$00
	STA aenemies_temp - $10, X

@timer:
	DEC aobject_temp, X
	LDY aenemies_temp - $10, X
	LDA aobject_frameset_upper_timer, X
	CMP @frameset_table, Y
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer, X

@nz:
	JSR _check_enemies_object_set_flags_1
	RTS

@frameset_table:
	.BYTE 0, 2, 0, 0, 0

_enemies_friender_head:
	LDY #$02
	LDA aobject_hp, X
	BNE @not_killed
	JMP @killed

@not_killed:
	CMP aobject_ycoord_speed_fraction, X
	BEQ @save
	LDY #$05

@save:
	STA aobject_ycoord_speed_fraction, X
	LDX #$0F

@loop_1:
	LDA @palette_table, Y
	STA acurrent_background_palette, X
	DEY
	DEX
	CPX #$0C
	BNE @loop_1
	LDX z:zsprites_pointer
	LDA aobject_xcoord_speed_fraction, X
	BNE @nz_1
	LDA #$01
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_temp, X
	BNE @timer
	LDA #objects_friender_fire_breath
	JSR _enemies_to_items
	BCS @exist_1
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$0C
	STA aobject_ycoord + $10, Y

@exist_1:
	LDA #$02
	STA aobject_temp, X
	DEC aobject_xcoord_speed, X
	BNE @continue
	INC aobject_xcoord_speed_fraction, X
	BNE @continue

@timer:
	DEC aobject_temp, X

@nz_1:
	LDA aobject_frameset_upper_timer, X
	BNE @continue
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	LDA #$03
	STA aobject_xcoord_speed, X
	LDA z:zrandom
	AND #%00000011
	BEQ @continue
	ASL aobject_xcoord_speed, X
	AND #%00000001
	BNE @continue
	CLC
	LDA aobject_xcoord_speed, X
	ADC #$03
	STA aobject_xcoord_speed, X

@continue:
	JSR _check_enemies_object_set_flags_2
	BCC @exist_2
	LDA #objects_exist
	STA aobject_flag, X
	LDA #objects_friender_head
	STA aobject_pointer, X
	LDA #$00
	STA aobject_temp, X
	STA aobject_xcoord_speed_fraction, X
	STA aenemies_hit_flag - $10, X

@exist_2:
	RTS

@killed:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	LDA aobject_xcoord_speed_fraction, X
	BEQ @z
	JMP @quit

@z:
	LDA aobject_temp, X
	AND #%00000011
	STA z:z00
	ASL
	ASL
	ADC z:z00
	STA z:z01
	track_queue track_enemy_hit
	LDA #$05
	STA z:z02

@loop_2:
	LDA #objects_killed
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	CLC
	LDA aobject_xcoord + $10, Y
	ADC @xcoord_offset, Y
	STA aobject_xcoord + $10, Y
	CLC
	LDA aobject_ycoord + $10, Y
	ADC @ycoord_offset, Y
	STA aobject_ycoord + $10, Y
	INC z:z01
	DEC z:z02
	BNE @loop_2

@exist:
	LDX z:zsprites_pointer
	INC aobject_temp, X
	LDA aobject_temp, X
	CMP #$08
	BNE @nz_2
	LDA #$1A
	JSR _check_special_object_exist
	BCS @not_exist_1
	LDA #$00
	STA aobject_flag + $10, Y
	LDA #$FF
	STA aenemies_hit_flag - $10, Y

@not_exist_1:
	LDA #$1C
	JSR _check_special_object_exist
	BCS @not_exist_2
	LDA #$FF
	STA aobject_temp + $10, Y

@not_exist_2:
	LDA #$2E
	JSR _check_special_object_exist
	BCS @not_exist_3
	LDA #$00
	STA aobject_flag + $10, Y
	LDA #$FF
	STA aitems_respawn_flag - $10, Y
	LDA aitems_index - $10, Y
	TAY
	LDA #$00
	STA aitems_respawn_flag, Y
	BEQ @not_exist_2

@not_exist_3:
	STA a:aenemies_index - $10, X
	ASL aobject_flag, X

@nz_2:
	LDA #$08
	STA aobject_xcoord_speed_fraction, X

@quit:
	DEC aobject_xcoord_speed_fraction, X
	RTS

@palette_table:
	.BYTE dark_yellow, white_cyan, light_blue
	.BYTE dark_yellow, white_gray, white_gray

@xcoord_offset:
	.BYTE  -4,  -4, +20, +28, +44, -12,  +4, +12
	.BYTE +20, +36, -12,  +4, +20, +44, +44,  +4
	.BYTE +12, +20, +36, +36

@ycoord_offset:
	.BYTE  -8, +16,  +8, -16, -8,  +0, -24, +16
	.BYTE  -8,  +8,  +8,  -8, +0, -24,  +8,  +0
	.BYTE -24,  -8, -16,  +8

_enemies_friender_tail:
	LDA aobject_temp, X
	BNE @nz
	LDA #$6E
	STA aobject_temp, X
	LDA #$01
	STA aobject_frameset_upper_timer, X

@nz:
	LDA aobject_frameset_upper_timer, X
	BNE @timer
	STA aobject_frameset_lower_timer, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_friender_fire_breath:
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC #$40
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC #$00
	STA aobject_ycoord_speed, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_friender:
	SEC
	LDA aobject_screen, X
	SBC #$06
	TAY
	LDA @ycoord_table, Y
	CMP aobject_ycoord, X
	BEQ @arrived
	LDA aobject_flag, X
	AND #~objects_invisible
	STA aobject_flag, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	JSR _check_enemies_object_set_flags_1
	RTS

@arrived:
	LDA #$00
	STA aobject_ycoord_speed, X
	JSR _check_enemies_object_set_flags_2
	LDA aobject_frameset_upper_timer, X
	PHA
	TAY
	CLC
	LDA aobject_ycoord, X
	ADC @ycoord_offset, Y
	AND #%11100000
	STA z:z0A
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_offset, Y
	AND #%11100000
	STA z:z08
	LDA aobject_screen, X
	STA z:z09
	JSR _draw_other_on_screen
	JSR _draw_other_on_screen_attributes
	LDY z:zscreen_update_flag
	LDA aobject_ppu_address
	STA ascreen_ppu_horizontal_address, Y
	LDA aobject_ppu_data + 4
	STA ascreen_ppu_horizontal_address + 4, Y
	LDA adraw_other_ppu_data + 1
	STA ascreen_ppu_horizontal_attribute_address, Y
	LDA adraw_other_ppu_data + 7
	STA ascreen_ppu_horizontal_attribute_address + 4, Y
	LDA #$FF
	STA ascreen_ppu_horizontal_attribute_data, Y
	TYA
	ASL
	ASL
	ASL
	ASL
	TAY
	PLA
	STA z:z00
	LDX z:zsprites_pointer
	LDA aobject_temp, X
	CMP #$FF
	BNE @not_killed
	CLC
	LDA z:z00
	ADC #$04
	STA z:z00

@not_killed:
	LDA z:z00
	ASL
	ASL
	ASL
	ASL
	TAX
	LDA #$10
	STA z:z00

@loop:
	LDA @draw_friender_background, X
	STA ascreen_ppu_horizontal_data, Y
	INX
	INY
	DEC z:z00
	BNE @loop
	INC z:zscreen_update_flag
	LDX z:zsprites_pointer
	LDA aobject_frameset_upper_timer, X
	CMP #$03
	BNE @skip
	LDA aobject_temp, X
	BNE @skip
	LDA #objects_friender_head
	JSR _enemies_to_items
	LDA #$08
	STA aobject_temp + $10, Y
	LDA #$03
	STA aobject_xcoord_speed + $10, Y
	LDA #$14
	STA aobject_ycoord_fraction, X
	LDA z:zrandom
	AND #%00000011
	BEQ @tail
	PHA
	LDA aobject_xcoord_speed + $10, Y
	ASL
	STA aobject_xcoord_speed + $10, Y
	PLA
	AND #%00000001
	BNE @tail
	CLC
	LDA aobject_xcoord_speed + $10, Y
	ADC #$03
	STA aobject_xcoord_speed + $10, Y

@tail:
	LDA #objects_friender_tail
	JSR _enemies_to_items
	CLC
	LDA aobject_xcoord + $10, Y
	ADC #$2F
	STA aobject_xcoord + $10, Y
	SEC
	LDA aobject_ycoord + $10, Y
	SBC #$0C
	STA aobject_ycoord + $10, Y
	INC aobject_temp, X
	LDA #objects_invisible | objects_exist
	STA aobject_flag, X

@skip:
	RTS

@ycoord_table:
	.BYTE $88, $68, $48

@ycoord_offset:
	.BYTE $F0, $00, $F0, $00

@xcoord_offset:
	.BYTE $00, $00, $20, $20

@draw_friender_background:
;alive
	.BYTE $88, $8A, $84, $86, $89, $8B, $85, $87
	.BYTE $84, $86, $8C, $8E, $85, $87, $8D, $8F
	.BYTE $84, $86, $74, $76, $85, $87, $75, $77
	.BYTE $90, $92, $94, $96, $91, $93, $95, $97
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $6C, $6E, $70, $72, $6D, $6F, $71, $73
	.BYTE $78, $7A, $7C, $7E, $79, $7B, $7D, $7F
	.BYTE $98, $9A, $9C, $9E, $99, $9B, $9D, $9F

;killed
	.BYTE $88, $8A, $84, $86, $89, $8B, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87
	.BYTE $84, $86, $84, $86, $85, $87, $85, $87

_enemies_monking:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @visible
	LDA z:z00
	CMP #$50
	BCC @appeared
	JSR _check_enemies_object_set_flags_2
	RTS

@appeared:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	LDA aobject_flag, X
	AND #~objects_invisible
	STA aobject_flag, X
	LDA #$04
	STA aobject_ycoord_speed, X

@visible:
	LDA aobject_frameset_upper_timer, X
	BNE @grab
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$07
	STA z:z01
	LDA #$01
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BNE @block
	JMP @skip

@block:
	LDA #$00
	STA aobject_ycoord_speed, X
	INC aobject_frameset_upper_timer, X
	JMP @skip

@grab:
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @grab_done
	CLC
	LDA aobject_ycoord, X
	ADC #$05
	STA aobject_ycoord, X
	INC aobject_frameset_upper_timer, X

@grab_done:
	LDA aobject_frameset_upper_timer, X
	CMP #$08
	BCS @swing_done
	LDA z:z00
	CMP #$20
	BCC @jump
	INC aobject_temp, X
	LDA aobject_temp, X
	CMP #$7D
	BEQ @jump
	LDA aobject_frameset_upper_timer, X
	CMP #$07
	BNE @skip
	LDA #$03
	STA aobject_frameset_upper_timer, X
	BNE @skip

@jump:
	SEC
	LDA aobject_ycoord, X
	SBC #$20
	STA aobject_ycoord, X
	LDA aobject_flag, X
	ORA #objects_with_gravity
	STA aobject_flag, X
	LDA #$02
	STA aobject_temp, X
	LDA #$08
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	BNE @skip

@swing_done:
	LDA #$08
	STA z:z01
	LDA #$10
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_frameset_upper_timer, X
	CMP #$09
	BEQ @had_jumped
	DEC aobject_temp, X
	BNE @skip
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$76
	STA aobject_ycoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$7B
	STA aobject_xcoord_speed_fraction, X
	INC aobject_frameset_upper_timer, X
	BNE @skip

@had_jumped:
	LDA z:z00
	BEQ @skip
	LDA #$08
	STA aobject_frameset_upper_timer, X
	LDA #$32
	STA aobject_temp, X
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X

@skip:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_kukku:
	LDA aobject_xcoord_speed_fraction, X
	BNE @created
	LDA #$1E
	JSR _check_object_exist_with_xcoord_speed_fraction
	BCC @created
	RTS

@created:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_temp, X
	BNE @timer
	LDA #$01
	STA z:z01
	LDA #objects_kukku_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_kukku_move
	JSR _enemies_to_items
	BCS @exist
	CLC
	LDA aobject_xcoord + $10, Y
	ADC #$78
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC #$00
	STA aobject_screen + $10, Y
	SEC
	LDA aobject_ycoord
	SBC #$2C
	BCS @not_appeared_on_top
	LDA #$08

@not_appeared_on_top:
	STA aobject_ycoord + $10, Y
	LDX z:zsprites_pointer

@exist:
	LDA #$1F
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	RTS

_enemies_kukku_move:
	LDA #$08
	STA z:z01
	LDA #$14
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BEQ @air
	LDA aobject_temp, X
	CMP #$13
	BNE @not_jump
	LDA #$04
	STA aobject_ycoord_speed, X
	LDA #$78
	STA aobject_ycoord_speed_fraction, X
	LDA #$00
	STA aobject_temp, X

@not_jump:
	INC aobject_temp, X
	BNE @continue

@air:
	LDA #$02
	STA aobject_frameset_upper_timer, X
	LDA #$03
	STA aobject_frameset_lower_timer, X

@continue:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_kukku_remove:
	LDA #$1E
	STA z:z00
	JMP _enemies_remove_common

_enemies_telly:
	LDA aobject_temp, X
	BNE @timer
	LDA #$03
	STA z:z01
	LDA #objects_telly_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_telly_move
	JSR _enemies_to_items

@exist:
	LDA #$DA
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_telly_move:
	LDA aobject_temp, X
	BNE @timer
	LDA #$00
	STA z:z09
	LDA #$42
	STA z:z08
	JSR _enemies_to_megaman
	LDA #$10
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_changkey_maker:
	LDA aobject_xcoord_speed_fraction, X
	BNE @nz
	LDA #$6E
	STA aobject_temp, X
	INC aobject_xcoord_speed_fraction, X
	LDA #$00
	STA aobject_flag, X
	LDA #$01
	STA z:z01
	LDA #objects_changkey_maker
	JSR _set_enemies_object_limited
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	BCS _enemies_changkey_timer_common
	LDA #objects_changkey_maker_light
	JSR _enemies_to_items
	JMP _enemies_changkey_timer_common

@nz:
	LDA aobject_temp, X
	BEQ @changkey
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE _enemies_changkey_timer_common
	LDA #$00
	STA aobject_frameset_upper_timer, X
	BEQ _enemies_changkey_timer_common

@changkey:
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE _enemies_changkey_maker_continue
	LDA aobject_frameset_lower_timer, X
	BNE _enemies_changkey_maker_continue
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #objects_changkey
	JSR _enemies_to_items
	BCS @exist_1
	SEC
	LDA z:zrandom
	AND #%00011111
	STA z:zrandom
	SEC
	LDA z:z00
	SBC z:zrandom
	STA z:z00
	LDA #$00
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	STA aobject_xcoord_speed + $10, Y
	LDA z:z00
	STA aobject_xcoord_speed_fraction + $10, Y

@exist_1:
	LDA z:zrandom
	AND #%00000011
	TAY
	LDA enemies_changkey_maker_timer_table, Y
	STA aobject_temp, X

_enemies_changkey_timer_common:
	DEC aobject_temp, X

_enemies_changkey_maker_continue:
	JSR _check_enemies_object_set_flags_2
	BCC @exist_2
	LDA #$23
	JSR _check_special_object_exist
	BCC @exist_2
	LDA #objects_changkey_maker_killed_to_dark
	JSR _enemies_to_items

@exist_2:
	RTS

enemies_changkey_maker_timer_table:
	.BYTE $12, $1F, $1F, $3D

_enemies_light_to_dark:
	LDA acurrent_background_palette + $01
	CMP #black
	BEQ _enemies_light_to_dark_is_black
	LDA #$23
	JSR _check_special_object_exist
	BCC _enemies_light_to_dark_exist
	LDA #$26
	JSR _check_special_object_exist
	BCC _enemies_light_to_dark_exist
	LDA aobject_temp, X
	BNE _enemies_light_to_dark_timer
	LDA aobject_xcoord_speed_fraction, X

_enemies_switch_dark_light_common:
	ASL
	ASL
	STA z:z00
	ASL
	CLC
	ADC z:z00
	TAX
	LDY #$00

@loop:
	LDA enemies_switch_dark_light_palette_table, X
	STA acurrent_background_palette, Y
	INX
	INY
	CPY #$0C
	BNE @loop
	LDX z:zsprites_pointer
	INC aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed_fraction, X
	CMP #$04

_enemies_light_to_dark_is_black:
_enemies_light_to_dark_exist:
	BNE @nz
	LSR aobject_flag, X
	LDA #$FF
	STA a:aenemies_index - $10, X

@nz:
	LDA #$08
	STA aobject_temp, X

_enemies_light_to_dark_timer:
	DEC aobject_temp, X
	RTS

_enemies_changkey_maker_light:
	LDA aobject_temp, X
	BNE _enemies_light_to_dark_timer
	CLC
	LDA aobject_xcoord_speed_fraction, X
	ADC #$03
	BNE _enemies_switch_dark_light_common

_enemies_dark_to_light:
	LDA aobject_temp, X
	BNE _enemies_light_to_dark_timer
	LDA aobject_xcoord_speed_fraction, X
	EOR #%00000011
	JMP _enemies_switch_dark_light_common

_enemies_changkey_maker_killed_to_dark:
	LDA aobject_temp, X
	BNE _enemies_light_to_dark_timer
	SEC
	LDA aobject_xcoord_speed_fraction, X
	EOR #%00000011
	CLC
	ADC #$03
	JMP _enemies_switch_dark_light_common

enemies_switch_dark_light_palette_table:
;1
	.BYTE black, white_cyan,   light_gray,   light_cyan
	.BYTE black, pale_orange,  white_orange, dark_orange
	.BYTE black, white_yellow, light_red,    dark_orange

;2
	.BYTE black, light_cyan,   dark_gray,    dark_cyan
	.BYTE black, pale_orange,  white_orange, dark_yellow
	.BYTE black, light_orange, dark_red,     dark_yellow

;3
	.BYTE black, dark_cyan,   dark_cyan,    black
	.BYTE black, pale_orange, white_orange, dark_yellow
	.BYTE black, dark_orange, dark_orange,  dark_yellow

;4
	.BYTE black, black, black, black
	.BYTE black, black, black, black
	.BYTE black, black, black, black

;5
	.BYTE black, light_red,   dark_orange,  dark_yellow
	.BYTE black, pale_orange, white_orange, dark_yellow
	.BYTE black, dark_orange, dark_orange,  dark_yellow

;6
	.BYTE black, white_red,    light_red,    dark_red
	.BYTE black, pale_orange,  white_orange, dark_yellow
	.BYTE black, light_orange, dark_red,     dark_yellow

;7
	.BYTE black, pale_red,     white_red,    light_red
	.BYTE black, pale_orange,  white_orange, dark_orange
	.BYTE black, white_orange, light_red,    dark_orange

_enemies_pierrobot_jester:
	LDA aenemies_temp - $10, X
	BNE @run_pierrobot_jester
	INC aobject_temp, X
	LDA aobject_temp, X
	CMP #$3E
	BNE @check_flags
	LDA #objects_pierrobot
	JSR _enemies_to_items
	BCS @check_flags
	LDA #$08
	STA aobject_ycoord + $10, Y
	LDA z:zsprites_pointer
	STA aitems_index - $10, Y
	TYA
	STA aenemies_temp - $10, X
	LDA #$00
	STA aobject_temp, X

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

@run_pierrobot_jester:
	LDY aenemies_temp - $10, X
	CPY #$FF
	BEQ @gear_left
	LDA aobject_temp, X
	CMP #$04
	BCS @down
	SEC
	LDA aobject_ycoord, X
	SBC aobject_ycoord + $10, Y
	CMP #$20
	BCS @check_flags
	LDA #$D4
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA #$02
	STA aobject_ycoord_speed + $10, Y
	INC aobject_temp, X
	LDA aobject_temp, X
	CMP #$04
	BNE @check_flags
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X

@down:
	SEC
	LDA aobject_ycoord, X
	SBC #$20
	STA aobject_ycoord + $10, Y
	LDA aobject_xcoord, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen, X
	STA aobject_screen + $10, Y
	LDA #$00
	STA aobject_ycoord_speed + $10, Y

@gear_left:
	LDA #$0F
	STA z:z01
	LDA #$0E
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aobject_temp, X
	CMP #$04
	BNE @landing
	LDA z:z00
	BEQ @landing
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$47
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	INC aobject_temp, X

@landing:
	LDA z:z03
	BEQ @air
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X

@air:
	JSR _check_enemies_object_set_flags_1
	BCC @skip
	LDY aenemies_temp - $10, X
	CPY #$FF
	BEQ @skip
	LDA #$FF
	STA aitems_index - $10, Y
	LDA #$D4
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA #$02
	STA aobject_ycoord_speed + $10, Y

@skip:
	RTS

_enemies_pierrobot:
	JSR _check_enemies_object_set_flags_1
	BCC @skip
	LDY aenemies_temp - $10, X
	CPY #$FF
	BEQ @skip
	LDA #$00
	STA aobject_xcoord_speed, Y
	LDA #$A3
	STA aobject_xcoord_speed_fraction, Y
	LDA #$FF
	STA aenemies_temp - $10, Y

@skip:
	RTS

_enemies_fly_boy:
	LDA aobject_temp, X
	BNE @timer
	LDA #$02
	STA z:z01
	LDA #objects_fly_boy_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_fly_boy_move
	JSR _enemies_to_items

@exist:
	LDA #$7D
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_fly_boy_move:
	LDA aenemies_temp - $10, X
	BNE @had_set
	INC aenemies_temp - $10, X

@had_set:
	LDA aenemies_temp - $10, X
	CMP #$02
	BCS @landing
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	LDA #$08
	STA z:z01
	LDA #$14
	STA z:z02
	LDA aobject_ycoord_speed, X
	PHP
	JSR _check_object_horizontal_move_collision
	PLP
	BPL @check_flags
	LDA z:z00
	BEQ @check_flags
	track_queue track_fly_boy
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_flag, X
	AND #~objects_with_gravity
	STA aobject_flag, X
	INC aenemies_temp - $10, X

@landing:
	LDA aenemies_temp - $10, X
	CMP #$02
	BNE @go_up
	LDA aobject_frameset_upper_timer, X
	CMP #$09
	BNE @check_flags
	LDA #$E5
	STA aobject_ycoord_speed_fraction, X
	LDA #$47
	STA aobject_temp, X
	INC aenemies_temp - $10, X

@go_up:
	LDA aobject_frameset_upper_timer, X
	CMP #$0B
	BNE @timer
	LDA #$09
	STA aobject_frameset_upper_timer, X

@timer:
	DEC aobject_temp, X
	BNE @check_flags
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$00
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	STA aobject_xcoord_speed, X
	LDA z:z00
	STA aobject_xcoord_speed_fraction, X
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$76
	STA aobject_ycoord_speed_fraction, X
	LDA #$01
	STA aenemies_temp - $10, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_shutter:
	LDA #$08
	BNE _enemies_shutter_block_common

_enemies_destroyed_block_2d:
_enemies_friender_block:
_enemies_destroyed_block_57:
	LDA #$01

_enemies_shutter_block_common:
	STA aobject_temp, X
	LDA aobject_xcoord, X
	AND aobject_xcoord_speed, X
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord, X
	AND aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	JSR _check_items_object_set_flags
	RTS

_enemies_press:
	LDA aenemies_temp - $10, X
	BNE @had_set
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA z:z00
	CMP #$28
	BCS @not_dropped
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$C0
	STA aobject_ycoord_speed_fraction, X
	INC aenemies_temp - $10, X

@not_dropped:
	JSR _check_enemies_object_set_flags_2
	RTS

@had_set:
	LDA #$08
	STA z:z01
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA aenemies_temp - $10, X
	CMP #$02
	BCS @had_dropped
	LDA z:z00
	BEQ @check_flags
	track_queue track_time_stopper
	LDA #$2B
	STA aobject_temp, X
	INC aenemies_temp - $10, X
	LDA #objects_unknown_press
	JSR _enemies_to_items
	SEC
	LDA aobject_ycoord + $10, Y
	SBC #$28
	STA aobject_ycoord + $10, Y
	LDA #$2B
	STA aobject_temp + $10, Y
	BNE @check_flags

@had_dropped:
	LDA aobject_temp, X
	BEQ @go_up
	DEC aobject_temp, X
	BNE @check_flags
	LDA #$00
	STA aobject_ycoord_speed, X
	LDA #$62
	STA aobject_ycoord_speed_fraction, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	BNE @check_flags

@go_up:
	LDA z:z00
	BEQ @check_flags
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aenemies_temp - $10, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_blocky_recoiled:
	LDA #$07
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aobject_frameset_upper_timer, X
	CMP #$0F
	BNE @nz
	LDA #$0E
	STA aobject_frameset_upper_timer, X

@nz:
	LDA aobject_temp, X
	BEQ @not_revival
	DEC aobject_temp, X
	BNE @not_revival
	LDA #$02
	STA z:z01

@loop:
	LDA #objects_blocky_apart
	JSR _enemies_to_items
	BCS @exist
	LDA #$E0
	STA aobject_ycoord + $10, Y
	LDA #objects_can_recoiled | objects_invisible | objects_exist
	STA aobject_flag + $10, Y
	LDX z:z01
	LDA enemies_blocky_apart_revival_timer, X
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	TXA
	STA aitems_index - $10, Y
	DEC z:z01
	BPL @loop

@exist:
	LDX z:zsprites_pointer

@not_revival:
	LDA aenemies_temp - $10, X
	CMP #$04
	BNE @check_flags
	SEC
	LDA aobject_ycoord, X
	SBC #$20
	STA aobject_ycoord, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X
	LDA #$41
	STA aobject_xcoord_speed_fraction, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	STA aenemies_temp - $10, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_blocky:
	LDA aenemies_temp - $10, X
	BNE @move_set
	LDA #objects_blocky_move
	JSR _enemies_to_items
	TXA
	STA aobject_temp + $10, Y
	INC aenemies_temp - $10, X

@move_set:
	LDA aobject_flag, X
	AND #objects_can_recoiled
	BEQ @cant_recoiled
	JMP _enemies_blocky_recoiled

@cant_recoiled:
	LDA #$07
	STA z:z01
	LDA #$28
	STA z:z02
	SEC
	LDA aobject_xcoord, X
	SBC #$07
	STA z:z08
	LDA aobject_screen, X
	SBC #$00
	STA z:z09
	CLC
	LDA #$00
	STA z:z0B
	LDA aobject_ycoord, X
	ADC #$20
	STA z:z0A
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDY z:z00
	BEQ @air
	LDA z:z08
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_xcoord, X
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC #$00
	STA aobject_screen, X

@air:
	JSR _check_object_vertical_move_collision
	LDA aobject_frameset_upper_timer, X
	CMP #$0C
	BNE @nz
	LDA #$00
	STA aobject_frameset_upper_timer, X

@nz:
	JSR _check_enemies_object_set_flags_1
	BCS @skip
	LDA aenemies_hit_flag - $10, X
	BEQ @skip
	LDA #$0D
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	LDA #$7E
	STA aobject_temp, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$02
	STA z:z01

@loop:
	LDA #objects_blocky_apart
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	CLC
	LDA aobject_ycoord + $10, Y
	ADC @ycoord_offset, X
	STA aobject_ycoord + $10, Y
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $10, Y
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA #$04
	STA aobject_ycoord_speed + $10, Y
	LDA #$00
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA #$FF
	STA aitems_index - $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BPL @loop

@exist:
	LDX z:zsprites_pointer
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_can_recoiled | objects_exist
	STA aobject_flag, X

@skip:
	RTS

@ycoord_offset:
	.BYTE $F0, $10, $20

@xcoord_speed_table:
	.BYTE +3, +2, +1

@xcoord_speed_fraction_table:
	.BYTE $00, $40, $00

enemies_blocky_apart_revival_timer:
	.BYTE $01, $06, $0B

_enemies_blocky_move:
	LDY aobject_temp, X
	LDA aobject_flag, Y
	BPL @not_exist
	AND #objects_can_recoiled
	BEQ @cant_recoiled

@not_exist:
	LSR aobject_flag, X
	RTS

@cant_recoiled:
	LDA aobject_xcoord, Y
	STA aobject_xcoord, X
	LDA aobject_screen, Y
	STA aobject_screen, X
	CLC
	LDA aobject_ycoord, Y
	ADC #$08
	STA aobject_ycoord, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_blocky_apart:
	LDY aenemies_temp - $10, X
	BPL @revival
	LDA #$07
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA z:z00
	BEQ @check_flags
	LDA aobject_temp, X
	BEQ @not_hit_block
	LDA #$00
	STA z:zhandle_object_type
	JMP _enemies_blocky_apart_hit

@not_hit_block:
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$02
	STA aobject_ycoord_speed, X
	INC aobject_temp, X
	BNE @check_flags

@revival:
	LDA aobject_temp, X
	BEQ @revival_apart
	DEC aobject_temp, X
	BNE @check_flags
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	STA aobject_flag, X
	LDA #$04
	STA aobject_ycoord_speed, X

@revival_apart:
	LDA aobject_ycoord, X
	CMP aobject_ycoord, Y
	BCS @check_flags
	CLC
	LDA aenemies_temp - $10, Y
	ADC #$01
	STA aenemies_temp - $10, Y
	LSR aobject_flag, X
	RTS

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_neo_metall:
	LDA z:zcurrent_stage
	CMP #stage_wily3
	BNE @not_guts_tank
	JMP _enemies_neo_metall_in_guts_tank

@not_guts_tank:
	LDY #$08
	LDA aobject_frameset_upper_timer, X
	CMP #$03
	BCC @not_open
	LDY #$10

@not_open:
	STY z:z02
	LDA #$07
	STA z:z01
	JSR _check_object_horizontal_move_collision
	LDA aenemies_temp - $10, X
	BNE @had_opened
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA z:z00
	CMP #$40
	BCS @undo
	LDA aobject_temp, X
	BNE @timer_1
	INC aobject_frameset_upper_timer, X
	INC aenemies_temp - $10, X
	LDA aobject_flag, X
	AND #~objects_can_recoiled
	STA aobject_flag, X
	LDA #$3E
	STA aobject_temp, X
	BNE @continue_flags

@timer_1:
	DEC aobject_temp, X

@undo:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X

@continue_flags:
	JMP @check_flags

@had_opened:
	CMP #$02
	BCS @timer_2
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @nz
	track_queue track_enemy_bullet
	LDA #$02
	STA z:z01

@loop:
	LDA #objects_straight_bullet
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + $10, Y
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BPL @loop

@exist:
	LDA #$03
	STA aobject_frameset_upper_timer, X
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_ycoord, X

@nz:
	DEC aobject_temp, X
	BNE @continue
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$02
	STA aobject_xcoord_speed, X
	LDA #$14
	STA aobject_temp, X
	INC aenemies_temp - $10, X
	BNE @continue

@timer_2:
	DEC aobject_temp, X
	BNE @continue
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_frameset_upper_timer, X
	STA aenemies_temp - $10, X
	LDA z:zrandom
	AND #%00000011
	TAY
	LDA @close_timer, Y
	STA aobject_temp, X
	LDA aobject_flag, X
	ORA #objects_can_recoiled
	STA aobject_flag, X

@continue:
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @check_flags
	LDA #$03
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@close_timer:
	.BYTE $1F, $3E, $9B, $1F

@ycoord_speed_fraction_table:
	.BYTE $25, $00, $DB

@ycoord_speed_table:
	.BYTE +1, +0, -2

@xcoord_speed_fraction_table:
	.BYTE $A3, $00, $A3

@xcoord_speed_table:
	.BYTE +1, +2, +1

_enemies_neo_metall_in_guts_tank:
	LDA aobject_temp, X
	BNE @had_set
	LDA aobject_ycoord, X
	CMP #$80
	BCC @continue
	INC aobject_temp, X
	LDA #$03
	STA aobject_ycoord_speed, X

@had_set:
	LDA #$08
	STA z:z01
	LDA #$10
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BEQ @continue
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aobject_xcoord_speed_fraction, X

@continue:
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @check_flags
	LDA #$03
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_matasaburo:
	SEC
	LDA z:zobject_in_process_screen
	SBC z:zobject_in_process_coord
	BCS @check_flags
	LDA #$01
	STA z:zslip_wind_flags
	LDA #$00
	STA z:zwind_toward
	LDA #$A3
	STA z:zwind_conveyor_speed_fraction
	LDA #$00
	STA z:zwind_conveyor_speed

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_pipi:
	LDA aobject_xcoord_speed_fraction, X
	BNE @created
	LDA #$37
	JSR _check_object_exist_with_xcoord_speed_fraction
	BCC @created
	RTS

@created:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_temp, X
	BNE @exist
	LDA #$BB
	STA aobject_temp, X
	LDA #$01
	STA z:z01
	LDA #objects_pipi_move
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #$02
	STA z:z01
	LDA #objects_copipi
	JSR _set_enemies_object_limited
	BCS @exist
	LDA #objects_pipi_move
	JSR _enemies_to_items
	BCS @exist
	LDX #$00
	LDA aobject_flag
	AND #objects_right
	BNE @on_right
	INX

@on_right:
	LDA @object_flags, X
	STA aobject_flag + $10, Y
	CLC
	LDA z:zscreen_xcoord
	ADC @xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA z:zscreen_id
	ADC #$00
	STA aobject_screen + $10, Y

@exist:
	LDX z:zsprites_pointer
	DEC aobject_temp, X
	RTS

@xcoord_offset:
	.BYTE -8, +8

@object_flags:
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist

_enemies_pipi_move_exist:
	LSR aobject_flag, X
	RTS

_enemies_pipi_move:
	LDA aenemies_temp - $10, X
	BNE @had_set
	LDA #objects_pipi_egg
	JSR _enemies_to_items
	BCS _enemies_pipi_move_exist
	TXA
	STA aitems_index - $10, Y
	INY
	TYA
	STA aenemies_temp - $10, X

@had_set:
	LDA aobject_temp, X
	BNE @throw_set
	LDA aobject_flag, X
	PHA
	JSR _compare_megaman_xcoord_with_objects_xcoord
	PLA
	STA aobject_flag, X
	LDY aenemies_temp - $10, X
	DEY
	CLC
	LDA aobject_ycoord, X
	ADC #$10
	STA aobject_ycoord + $10, Y
	LDA aobject_xcoord, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen, X
	STA aobject_screen + $10, Y
	LDA z:z00
	CMP #$30
	BCC @throw
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_upper_timer, X
	BEQ @check_flags

@throw:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $10, Y
	INC aobject_temp, X
	LDA #$02
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X

@throw_set:
	LDA aobject_frameset_upper_timer, X
	CMP #$03
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_lower_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	BCC @exist
	LDY aenemies_temp - $10, X
	DEY
	LDA #$00
	STA aobject_flag + $10, Y

@exist:
	RTS

_enemies_pipi_remove:
	LDA #$37
	STA z:z00
	JMP _enemies_remove_common

_enemies_pipi_egg:
	LDA aobject_flag, X
	AND #objects_with_gravity
	BNE @with_gravity
	JSR _check_enemies_object_set_flags_2
	RTS

@with_gravity:
	LDA #$07
	STA z:z01
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BNE @block
	JSR _check_enemies_object_set_flags_1
	LDA z:z01
	BNE @block
	RTS

@block:
	LDA #objects_pipi_egg_crack
	JSR _enemies_to_items
	LDA #objects_pipi_egg_crack
	JSR _enemies_to_items
	LDA #objects_with_gravity | objects_right | objects_exist
	STA aobject_flag + $10, Y
	LDA #$07
	STA z:z01

@loop:
	LDA #objects_copipi
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	LDA @object_flags, X
	STA aobject_flag + $10, Y
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + $10, Y
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $10, Y
	LDA @attack_timer, X
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BPL @loop

@exist:
	LSR aobject_flag, X
	RTS

@object_flags:
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist

@ycoord_speed_fraction_table:
	.BYTE $96, $7B, $1E, $6A, $F0, $00, $E6, $9E

@ycoord_speed_table:
	.BYTE -2, +0, +1, +1, +1, +2, +1, +0

@xcoord_speed_fraction_table:
	.BYTE $6A, $F0, $A8, $6A, $7B, $00, $9E, $E6

@xcoord_speed_table:
	.BYTE +1, +1, +1, +1, +0, +0, +0, +1

@attack_timer:
	.BYTE $0B, $21, $1C, $0B, $21, $10, $19, $19

_enemies_copipi:
	LDA aenemies_temp - $10, X
	BNE @check_flags
	DEC aobject_temp, X
	BNE @check_flags
	LDA #$47
	STA z:z08
	LDA #$01
	STA z:z09
	JSR _enemies_to_megaman
	INC aenemies_temp - $10, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_kaminari_goro_move:
	LDY aenemies_temp - $10, X
	LDA aobject_flag, Y
	BPL @not_exist
	LDA aobject_pointer, Y
	CMP #objects_kaminari_goro
	BNE @not_exist
	SEC
	LDA aobject_ycoord, Y
	SBC #$14
	STA aobject_ycoord, X
	LDA aobject_xcoord, Y
	STA aobject_xcoord, X
	LDA aobject_screen, Y
	STA aobject_screen, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	INC aobject_temp, X
	LDA aobject_temp, X
	CMP #$9D
	BNE @nz
	LDA #objects_lightning_bolt
	JSR _enemies_to_items
	LDA #$03
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_temp, X

@nz:
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@not_exist:
	LSR aobject_flag, X
	RTS

_enemies_kaminari_goro:
	LDA #$18
	STA aobject_stand_xcoord - $10, X
	LDA aobject_xcoord_speed_fraction, X
	ORA aobject_ycoord_speed_fraction, X
	BNE @continue
	LDA #objects_kaminari_goro_move
	JSR _enemies_to_items
	BCS @continue
	TXA
	STA aitems_index - $10, Y
	SEC
	LDA aobject_ycoord, X
	SBC #$14
	STA aobject_ycoord + $10, Y

@continue:
	LDA aobject_temp, X
	BNE @timer
	LDA aenemies_temp - $10, X
	AND #%00001111
	TAY
	CLC
	ADC #$01
	STA aenemies_temp - $10, X
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @object_flags, Y
	STA aobject_flag, X
	LDA #$2A
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_1
	BCC @exist
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@exist:
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_stand_ycoord - $10, X
	RTS

@ycoord_speed_fraction_table:
	.BYTE $00, $CE, $A4, $87, $75, $87, $A4, $CE
	.BYTE $00, $32, $5C, $79, $8B, $79, $5C, $32

@ycoord_speed_table:
	.BYTE +0, -1, -1, -1, -1, -1, -1, -1
	.BYTE +0, +0, +0, +0, +0, +0, +0, +0

@xcoord_speed_fraction_table:
	.BYTE $8B, $79, $5C, $32, $00, $32, $5C, $79
	.BYTE $8B, $79, $5C, $32, $00, $32, $5C, $79

@object_flags:
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_right | objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist

_enemies_goblin_1:
_enemies_goblin_2:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	SEC
	LDA aobject_pointer, X
	SBC #objects_goblin_1
	TAY
	LDA enemies_goblin_palette_index_table, Y
	STA z:z01
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @visible
	LDY z:z01
	LDA #light_rose
	CMP acurrent_background_palette + $02, Y
	BNE @not_light_rose
	LDA #$04
	STA aobject_xcoord_speed_fraction, X
	BNE @is_light_rose

@not_light_rose:
	LDA z:z00
	CMP #$60
	BCS @not_appeared

@is_light_rose:
	LDA #can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X

@visible:
	LDA aobject_xcoord_speed_fraction, X
	CMP #$04
	BCS @appeared_done
	LDA aobject_temp, X
	AND #%00000011
	BNE @not_appeared
	STA aobject_temp, X
	LDA aobject_xcoord_speed_fraction, X
	INC aobject_xcoord_speed_fraction, X
	ASL
	ASL
	TAY
	LDX z:z01
	JSR _update_goblin_palettes
	LDX z:zsprites_pointer

@not_appeared:
	JMP @not_appeared_jmp

@appeared_done:
	LDA z:z00
	CMP #$28
	BCS @petit_goblin_not_appeared
	LDA aobject_temp, X
	AND #%00111111
	BNE @petit_goblin_not_appeared
	LDA #$03
	STA z:z01
	LDA #objects_petit_goblin
	JSR _set_enemies_object_limited
	BCS @petit_goblin_not_appeared
	LDA #objects_petit_goblin
	JSR _enemies_to_items
	BCS @petit_goblin_not_appeared
	LDA aobject_xcoord_speed, X
	AND #%00000001
	TAX
	LDA enemies_goblin_object_flags, X
	STA aobject_flag + $10, Y
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$03
	STA aobject_ycoord + $10, Y
	CLC
	LDA aobject_xcoord + $10, Y
	ADC enemies_goblin_xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC enemies_goblin_screen_offset, X
	STA aobject_screen + $10, Y
	LDA #$3F
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	INC aobject_xcoord_speed, X

@petit_goblin_not_appeared:
	LDA aobject_ycoord_speed_fraction, X
	ORA aobject_ycoord_speed, X
	BNE @continue
	LDA #$01
	STA z:z01

@loop:
	LDA #objects_goblin_horn
	JSR _enemies_to_items
	BCS @exist
	LDA aobject_ycoord + $10, Y
	SBC #$24
	STA aobject_ycoord + $10, Y
	LDX z:z01
	CLC
	LDA aobject_xcoord + $10, Y
	ADC enemies_goblin_xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC enemies_goblin_screen_offset, X
	STA aobject_screen + $10, Y
	LDA #$78
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BPL @loop

@exist:
	LDA #$48
	STA aobject_ycoord_speed_fraction, X
	LDA #$01
	STA aobject_ycoord_speed, X

@continue:
	SEC
	LDA aobject_ycoord_speed_fraction, X
	SBC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC #$00
	STA aobject_ycoord_speed, X

@not_appeared_jmp:
	INC aobject_temp, X
	JSR _check_enemies_object_set_flags_2
	RTS

_update_goblin_palettes:
	LDA #$03
	STA z:z02

@loop:
	LDA enemies_goblin_background_palettes_table, Y
	STA acurrent_background_palette, X
	STA abackground_palette_set, X
	STA abackground_palette_set + $10, X
	STA abackground_palette_set + $20, X
	STA abackground_palette_set + $30, X
	INY
	INX
	DEC z:z02
	BPL @loop
	RTS

enemies_goblin_background_palettes_table:
	.BYTE black, white_azure, white_azure, white_azure
	.BYTE black, pale_azure,  pale_rose,   white_azure
	.BYTE black, pale_gray,   white_rose,  light_gray
	.BYTE black, pale_gray,   light_rose,  black

enemies_goblin_palette_index_table:
	.BYTE $08, $0C

enemies_goblin_object_flags:
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist

enemies_goblin_xcoord_offset:
	.BYTE $1D, $E3

enemies_goblin_screen_offset:
	.BYTE +0, -1

_enemies_goblin_1_palette:
_enemies_goblin_2_palette:
	LSR aobject_flag, X
	LDA #$FF
	STA aitems_index - $10, X
	LDY aenemies_temp - $10, X
	LDA #$00
	STA aitems_respawn_flag, Y
	SEC
	LDA aobject_pointer, X
	SBC #objects_goblin_1_palette
	TAY
	LDX enemies_goblin_palette_index_table, Y
	LDY #$00
	JSR _update_goblin_palettes
	RTS

_enemies_goblin_horn:
	LDA aobject_temp, X
	BNE @timer
	LDA aenemies_temp - $10, X
	CMP #$01
	BCS @up
	LDA #$3E
	STA aobject_temp, X
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	INC aenemies_temp - $10, X
	BNE @timer

@up:
	BNE @down
	LDA #$C0
	STA aobject_ycoord_speed_fraction, X
	LDA #$FE
	STA aobject_ycoord_speed, X
	LDA #$0B
	STA aobject_temp, X
	INC aenemies_temp - $10, X
	BNE @timer

@down:
	LSR aobject_flag, X
	RTS

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_petit_goblin:
	LDA aenemies_temp - $10, X
	CMP #$02
	BNE @go_up
	JMP _enemies_telly_move

@go_up:
	LDA aobject_temp, X
	BNE @timer
	LDA aenemies_temp - $10, X
	BNE @already_up
	LDA #$1A
	STA aobject_temp, X
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$33
	STA aobject_ycoord_speed_fraction, X
	INC aenemies_temp - $10, X
	BNE @timer

@already_up:
	INC aenemies_temp - $10, X
	RTS

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_springer:
	LDA aenemies_temp - $10, X
	BEQ @not_spring
	JMP @spring

@not_spring:
	LDY #$00
	STY z:z0B
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right
	INY

@on_right:
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_offset, Y
	STA z:z08
	LDA aobject_screen, X
	ADC @screen_offset, Y
	STA z:z09
	CLC
	LDA aobject_ycoord, X
	ADC #$09
	STA z:z0A
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDA z:z00
	BEQ @air_1
	LDA aobject_ycoord, X
	STA z:z0A
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDA z:z00
	BEQ @air_2

@air_1:
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X

@air_2:
	LDA #$00
	STA aobject_xcoord_speed, X
	LDA #$41
	STA aobject_xcoord_speed_fraction, X
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	BCS @on_top
	EOR #%11111111
	ADC #$01

@on_top:
	CMP #$05
	BCS @not_speed_up
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	LDA #$02
	STA aobject_xcoord_speed, X
	LDA aobject_flag, X
	PHA
	JSR _compare_megaman_xcoord_with_objects_xcoord
	PLA
	STA aobject_flag, X
	LDA z:z00
	CMP #$11
	BCS @not_speed_up
	LDA #$01
	STA aobject_frameset_upper_timer, X
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_ycoord, X
	LDA #$70
	STA aobject_temp, X
	LDA aobject_flag, X
	AND #~objects_can_recoiled
	STA aobject_flag, X
	INC aenemies_temp - $10, X
	BNE @spring

@not_speed_up:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	LDA #$07
	STA aobject_collision_xcoord, X
	JSR _check_enemies_object_set_flags_1
	RTS

@spring:
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @nz
	LDA #$01
	STA aobject_frameset_upper_timer, X

@nz:
	LDA #$09
	STA aobject_collision_xcoord, X
	DEC aobject_temp, X
	BNE @check_flags
	DEC aenemies_temp - $10, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	CLC
	LDA aobject_ycoord, X
	ADC #$08
	STA aobject_ycoord, X

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

@xcoord_offset:
	.BYTE +8, -8

@screen_offset:
	.BYTE +0, -1

_enemies_mole:
	LDA aobject_xcoord_speed_fraction, X
	BNE @created
	LDA #$47
	JSR _check_object_exist_with_xcoord_speed_fraction
	BCC @created
	RTS

@created:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_temp, X
	BNE @skip
	LDA #$3E
	STA aobject_temp, X
	LDA #$06
	STA z:z01
	LDA #objects_mole_up
	JSR _set_enemies_object_limited
	LDA #objects_mole_down
	JSR _set_enemies_object_limited
	BCS @skip
	LDA aobject_xcoord_speed, X
	ASL
	STA z:z01
	LDA #$02
	STA z:z02

@loop:
	LDY z:z01
	LDA @enemies_table, Y
	JSR _enemies_to_items
	BCS @skip
	LDX z:z01
	CLC
	LDA aobject_xcoord + $10, Y
	ADC @xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC #$00
	STA aobject_screen + $10, Y
	LDA @ycoord_table, X
	STA aobject_ycoord + $10, Y
	LDX z:zsprites_pointer
	INC z:z01
	DEC z:z02
	BNE @loop
	INC aobject_xcoord_speed, X
	LDA aobject_xcoord_speed, X
	CMP #$03
	BNE @skip
	LDA #$00
	STA aobject_xcoord_speed, X

@skip:
	LDX z:zsprites_pointer
	DEC aobject_temp, X
	RTS

@enemies_table:
	.BYTE objects_mole_down
	.BYTE objects_mole_up
	.BYTE objects_mole_down
	.BYTE objects_mole_up
	.BYTE objects_mole_down
	.BYTE objects_mole_up

@xcoord_offset:
	.BYTE $18, $58, $50, $20, $28, $60

@ycoord_table:
	.BYTE $10, $D0, $10, $D0, $10, $D0

_enemies_mole_up:
	LDA #$00
	STA z:z01
	SEC
	LDA aobject_ycoord, X
	SBC #$0C
	JMP _enemies_mole_ycoord_common

_enemies_mole_down:
	LDA #$04
	STA z:z01
	CLC
	LDA aobject_ycoord, X
	ADC #$0C

_enemies_mole_ycoord_common:
	STA z:z0A
	LDA #$00
	STA z:z0B
	LDA aobject_xcoord, X
	STA z:z08
	LDA aobject_screen, X
	STA z:z09
	JSR _tsa_collision
	LDX z:zsprites_pointer
	LDA aenemies_temp - $10, X
	BNE @had_set
	LDA z:z00
	BNE @check_flags
	LDY z:z01
	LDA @ycoord_speed_and_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_and_fraction_table + 2, Y
	STA aobject_ycoord_speed, X
	INC aenemies_temp - $10, X
	LDA #$4B
	STA aobject_temp, X
	BNE @check_flags

@had_set:
	LDY z:z01
	LDA aobject_temp, X
	BEQ @speed_up
	DEC aobject_temp, X
	BNE @speed_down

@speed_up:
	LDA @ycoord_speed_and_fraction_table + 1, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_and_fraction_table + 3, Y
	STA aobject_ycoord_speed, X

@speed_down:
	LDA z:z00
	BEQ @check_flags
	LDA @ycoord_speed_and_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_and_fraction_table + 2, Y
	STA aobject_ycoord_speed, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@ycoord_speed_and_fraction_table:
	.BYTE $41, $E5
	.BYTE +0, +0
	.BYTE $BF, $1B
	.BYTE -1, -1

_enemies_mole_remove:
	LDA #$47
	STA z:z00
	JMP _enemies_remove_common

_enemies_shotman_left:
_enemies_shotman_right:
	LDA aenemies_temp - $10, X
	BEQ @shoot_lower
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_temp, X
	BNE @timer
	LDA #$00
	STA z:z01
	JSR @set_parameter
	DEC aobject_xcoord_speed_fraction, X
	BEQ @switch_shoot_lower
	LDA #$1F
	STA aobject_temp, X
	BNE @timer

@switch_shoot_lower:
	DEC aenemies_temp - $10, X

@nz:
	JMP @check_flags

@shoot_lower:
	LDA aobject_frameset_upper_timer, X
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_temp, X
	BNE @timer
	LDA #$0A
	STA z:z01
	JSR @set_parameter
	INC aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed_fraction, X
	CMP #$06
	BNE @switch_shoot_higher
	INC aenemies_temp - $10, X
	BNE @check_flags

@switch_shoot_higher:
	LDA #$1F
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

@set_parameter:
	LDX z:z01
	LDA z:zrandom
	AND @shotman_parameter_table, X
	CLC
	ADC @shotman_parameter_table + 1, X
	STA z:z0B
	LDA @shotman_parameter_table + 2, X
	STA z:z0D
	LDA #$00
	STA z:z0A
	STA z:z0C
	JSR _divide_fraction
	LDX z:zsprites_pointer
	track_queue track_enemy_bullet
	LDA #objects_shotman_shoot
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	LDA @shotman_parameter_table + 3, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @shotman_parameter_table + 4, X
	STA aobject_ycoord_speed + $10, Y
	LDA z:z0E
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA z:z0F
	STA aobject_xcoord_speed + $10, Y
	SEC
	LDA aobject_ycoord + $10, Y
	SBC @shotman_parameter_table + 5, X
	STA aobject_ycoord + $10, Y
	LDA aobject_flag + $10, Y
	AND #objects_right
	BNE @on_right
	INX
	INX

@on_right:
	CLC
	LDA aobject_xcoord + $10, Y
	ADC @shotman_parameter_table + 6, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC @shotman_parameter_table + 7, X
	STA aobject_screen + $10, Y

@exist:
	LDX z:zsprites_pointer
	RTS

@shotman_parameter_table:
;lower
	.BYTE %00100011
	.BYTE $18, $30
	.BYTE $E6, +4
	.BYTE $0C
	.BYTE $0C, $00
	.BYTE $F4, $FF

;higher
	.BYTE %00011111
	.BYTE $60, $18
	.BYTE $D4, +2
	.BYTE $00
	.BYTE $08, $00
	.BYTE $F8, $FF

_enemies_sniper_armor:
	LDA aenemies_temp - $10, X
	BNE @had_set
	LDA aobject_temp, X
	BNE @last_shoot
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @check_flags_1
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$78
	STA aobject_ycoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X
	LDA #$C9
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	INC aenemies_temp - $10, X
	BNE @check_flags_1

@last_shoot:
	LDA aobject_frameset_upper_timer, X
	BNE @timer_1
	STA aobject_frameset_lower_timer, X

@timer_1:
	DEC aobject_temp, X

@check_flags_1:
	JSR _check_enemies_object_set_flags_2
	BCC @exist
	JMP @not_exist

@exist:
	RTS

@air:
	JMP @check_flags_2

@had_set:
	CMP #$01
	BNE @shooting
	LDA #$02
	STA aobject_frameset_upper_timer, X
	LDA aobject_ycoord_speed, X
	PHP
	LDA #$0F
	STA z:z01
	LDA #$1C
	STA z:z02
	JSR _check_object_horizontal_move_collision
	PLP
	BPL @air
	LDA z:z00
	BEQ @air
	track_queue track_time_stopper
	LDA #$03
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	STA aobject_frameset_lower_timer, X
	LDA aobject_flag, X
	AND #~objects_with_gravity
	STA aobject_flag, X
	LDA #$3E
	STA aobject_temp, X
	DEC aenemies_temp - $10, X
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	CMP #$10
	BNE @timer_2
	LDA #$12
	STA aobject_temp, X
	LDA #$02
	STA aenemies_temp - $10, X
	BNE @timer_2

@shooting:
	LDA aobject_frameset_upper_timer, X
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer, X

@nz:
	LDA aobject_temp, X
	BNE @timer_2
	track_queue track_enemy_bullet
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #objects_straight_bullet
	JSR _enemies_to_items
	BCS @exist_1
	LDA aenemies_temp - $10, X
	TAX
	LDA @ycoord_speed_fraction_table - 2, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @ycoord_speed_table - 2, X
	STA aobject_ycoord_speed + $10, Y
	LDA @xcoord_speed_fraction_table - 2, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA @xcoord_speed_table - 2, X
	STA aobject_xcoord_speed + $10, Y

@exist_1:
	TXA
	LDX z:zsprites_pointer
	CMP #$06
	BNE @not_max
	LDA #$00
	STA aenemies_temp - $10, X
	LDA #$3F
	STA aobject_temp, X
	BNE @timer_2

@not_max:
	LDA #$12
	STA aobject_temp, X
	INC aenemies_temp - $10, X

@timer_2:
	DEC aobject_temp, X

@check_flags_2:
	JSR _check_enemies_object_set_flags_1
	BCC @skip
	JMP @not_exist

@skip:
	RTS

@not_exist:
	LDA aobject_hp, X
	BNE @skip
	LDA #objects_returning_sniper_joe
	JSR _enemies_to_items
	BCS @skip
	LDA #$7E
	STA aobject_temp + $10, Y
	RTS

@ycoord_speed_fraction_table:
	.BYTE $6A, $A0, $88, $12, $58

@ycoord_speed_table:
	.BYTE -5, -4, -3, -2, -1

@xcoord_speed_fraction_table:
	.BYTE $8C, $4E, $9A, $C2, $D2

@xcoord_speed_table:
	.BYTE +6, +7, +7, +7, +7

_enemies_returning_sniper_joe:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$0B
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aobject_frameset_upper_timer, X
	BNE @nz
	LDA #$00
	STA aobject_frameset_upper_timer, X
	LDA aobject_temp, X
	BNE @timer
	INC aobject_frameset_upper_timer, X
	LDA #$1F
	STA aobject_temp, X
	LDA aobject_flag, X
	AND #~objects_can_recoiled
	STA aobject_flag, X

@nz:
	LDA aobject_temp, X
	BNE @timer
	track_queue track_enemy_bullet
	LDA #objects_straight_bullet
	JSR _enemies_to_items
	BCS @exist
	LDA #$02
	STA aobject_xcoord_speed + $10, Y

@exist:
	INC aenemies_temp - $10, X
	LDA aenemies_temp - $10, X
	CMP #$03
	BNE @not_max
	LDA #$00
	STA aenemies_temp - $10, X
	STA aobject_frameset_upper_timer, X
	LDA #$7E
	STA aobject_temp, X
	LDA aobject_flag, X
	ORA #objects_can_recoiled
	STA aobject_flag, X
	BNE @timer

@not_max:
	LDA #$1F
	STA aobject_temp, X

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_scworm_pipe:
	LDA aobject_temp, X
	BNE @timer
	LDA #$20
	STA aobject_temp, X
	LDA #$03
	STA z:z01
	LDA #objects_scworm
	JSR _set_enemies_object_limited
	BCS @timer
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA z:z00
	CMP #$48
	BCS @timer
	LDA #objects_scworm
	JSR _enemies_to_items
	BCS @timer
	SEC
	LDA aobject_ycoord + $10, Y
	SBC #$0C
	STA aobject_ycoord + $10, Y
	LDA #$1F
	STA aobject_temp + $10, Y

@timer:
	DEC aobject_temp, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_scworm:
	LDA aenemies_temp - $10, X
	BNE @pipe_done
	DEC aobject_temp, X
	BNE @continue
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA z:zrandom
	AND #%00011111
	STA z:z01
	SEC
	LDA z:z00
	SBC z:z01
	BCS @not_too_close
	LDA #$00

@not_too_close:
	STA z:z00
	LDA #$00
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	ASL z:z00
	ROL
	STA aobject_xcoord_speed, X
	LDA z:z00
	STA aobject_xcoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X
	INC aenemies_temp - $10, X
	BNE @continue

@pipe_done:
	CMP #$02
	BCS @throw
	LDA aobject_ycoord_speed, X
	PHP
	LDA #$05
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	PLP
	BPL @continue
	LDA z:z00
	BEQ @continue
	LDA #$5D
	STA aobject_temp, X
	INC aenemies_temp - $10, X
	BNE @throw

@continue:
	LDA aobject_frameset_upper_timer, X
	CMP #$0A
	BNE @check_flags_1
	LDA #$06
	STA aobject_frameset_upper_timer, X

@check_flags_1:
	JSR _check_enemies_object_set_flags_1
	RTS

@throw:
	LDA aobject_temp, X
	BEQ @check_flags_2
	DEC aobject_temp, X
	LDA aobject_frameset_upper_timer, X
	CMP #$0A
	BNE @check_flags_2
	LDA #$06
	STA aobject_frameset_upper_timer, X

@check_flags_2:
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_unknown_press:
	DEC aobject_temp, X
	BEQ @not_go_up
	JSR _check_enemies_object_set_flags_2
	RTS

@not_go_up:
	LSR aobject_flag, X
	RTS

_enemies_appearing_block_1:
	LDA #$7D
	BNE _set_1st_appearing_block_timer_common

_enemies_appearing_block_2:
	LDA #$BB
	BNE _set_1st_appearing_block_timer_common

_enemies_appearing_block_3:
	LDA #$FA

_set_1st_appearing_block_timer_common:
	STA z:z00
	LDA aenemies_temp - $10, X
	BNE @1st_set
	LDA z:z00
	STA aobject_stand_ycoord - $10, X
	INC aenemies_temp - $10, X
	BNE @hidden

@1st_set:
	CMP #$01
	BNE @appeared
	LDA aobject_stand_ycoord - $10, X
	BNE @hidden
	LDA #objects_block | objects_exist
	STA aobject_flag, X
	track_queue track_appearing_block
	LDA #$7D
	STA aobject_stand_ycoord - $10, X
	INC aenemies_temp - $10, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	BEQ @hidden

@appeared:
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer, X

@nz:
	LDA #$01
	STA aobject_temp, X
	LDA aobject_xcoord, X
	AND aobject_xcoord_speed, X
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord, X
	AND aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_stand_ycoord - $10, X
	BNE @hidden
	LDA #objects_invisible | objects_exist
	STA aobject_flag, X
	LDA #$7D
	STA aobject_stand_ycoord - $10, X
	DEC aenemies_temp - $10, X

@hidden:
	DEC aobject_stand_ycoord - $10, X
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_crashman_palette_swap:
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BEQ @is_wily5
	LSR aobject_flag, X
	LDA #$FF
	STA a:aenemies_index - $10, X
	LDA z:zcurrent_stage
	CMP #stage_wily3
	BEQ @is_wily3
	SEC
	LDA aobject_screen, X
	SBC #$0A
	ASL
	ASL
	ASL
	TAY
	LDX #$00

@loop:
	LDA @crashman_palette_swap_table, Y
	STA acurrent_background_palette + $08, X
	INY
	INX
	CPX #$08
	BNE @loop
	RTS

@is_wily3:
	LDA #black
	STA acurrent_background_palette + $0D
	STA acurrent_background_palette + $0E
	STA acurrent_background_palette + $0F
	RTS

@is_wily5:
	LDA z:ztime_stopper_flag
	BEQ @not_frozen
	JSR _check_enemies_object_set_flags_2
	RTS

@not_frozen:
	JMP _enemies_mecha_dragon_wing

@crashman_palette_swap_table:
;1
	.BYTE black, pale_chartreuse, light_yellow, light_blue
	.BYTE black, pale_chartreuse, light_yellow, dark_azure

;2
	.BYTE black, pale_chartreuse, light_yellow, dark_azure
	.BYTE black, pale_chartreuse, light_yellow, dark_azure

;3
	.BYTE black, pale_chartreuse, light_yellow, dark_azure
	.BYTE black, pale_chartreuse, light_yellow, black

_enemies_heatman_atomic_fire:
	LDA aenemies_temp - $10, X
	BNE @landing
	LDA #$03
	STA z:z01
	LDA #$04
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA z:z03
	BEQ @air
	LSR aobject_flag, X
	RTS

@air:
	LDA z:z00
	BEQ @check_flags
	LDA #$04
	STA z:z01

@loop:
	LDA #objects_heatman_atomic_fire
	JSR _enemies_to_items
	BCS @exist
	LDX z:z01
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + $10, Y
	LDA #$01
	STA aitems_index - $10, Y
	LDA #$1F
	STA aobject_temp + $10, Y
	LDX z:zsprites_pointer
	DEC z:z01
	BNE @loop

@exist:
	LDA #can_collide_megaman | objects_exist
	STA aobject_flag, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	LDA #$1F
	STA aobject_temp, X
	INC aenemies_temp - $10, X

@landing:
	LDA aenemies_temp - $10, X
	CMP #$01
	BNE @timer
	DEC aobject_temp, X
	BNE @check_flags
	CLC
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	ADC #$00
	STA aobject_ycoord_speed, X
	INC aenemies_temp - $10, X
	LDA #$1F
	STA aobject_temp, X
	BNE @check_flags

@timer:
	DEC aobject_temp, X
	BNE @check_flags
	LSR aobject_flag, X
	RTS

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@ycoord_speed_fraction_table:
	.BYTE $00, $41, $82, $C4, $06

@ycoord_speed_table:
	.BYTE +0, +0, +0, +0, +1

_enemies_quickman_quick_boomerang:
	LDA aenemies_temp - $10, X
	BNE @had_throwed
	DEC aobject_temp, X
	BNE @check_flags
	INC aenemies_temp - $10, X
	LDA #$1F
	STA aobject_temp, X
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	BEQ @check_flags

@had_throwed:
	CMP #$01
	BNE @check_flags
	DEC aobject_temp, X
	BNE @check_flags
	INC aenemies_temp - $10, X
	LDA #$00
	STA z:z08
	LDA #$04
	STA z:z09
	JSR _enemies_to_megaman

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_bubbleman_bubble_lead:
	LDA aobject_ycoord_speed, X
	PHP
	LDA #$07
	STA z:z00
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	PLP
	BPL @air
	LDA z:z00
	BEQ @air
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$76
	STA aobject_ycoord_speed_fraction, X

@air:
	LDA z:z03
	BEQ @check_flags
	LSR aobject_flag, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_airman_air_shooter:
	LDA aobject_temp, X
	BEQ @check_flags
	DEC aobject_temp, X
	BNE @check_flags
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_crashman_crash_bomber:
	LDA aobject_temp, X
	BNE @grab
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	LDA #$07
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BNE @block
	JMP @continue

@block:
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	INC aobject_frameset_upper_timer, X
	track_queue track_crash_bomber_grab
	LDA #$1F
	STA aenemies_temp - $10, X
	INC aobject_temp, X
	BNE @continue

@grab:
	CMP #$01
	BNE @explosion
	DEC aenemies_temp - $10, X
	BNE @continue
	INC aobject_temp, X
	LDA #$38
	STA aenemies_temp - $10, X

@explosion:
	LDA aenemies_temp - $10, X
	AND #%00000111
	BNE @not_swap
	track_queue track_enemy_hit
	LDA aenemies_temp - $10, X
	LSR
	AND #%00001100
	STA z:z02
	LDX #$04
	STA z:z01

@loop:
	LDA #objects_crashman_crash_bomber_explosion
	JSR _enemies_to_items
	BCS @not_swap
	LDX z:z02
	CLC
	LDA aobject_ycoord + $10, Y
	ADC crash_bomber_explosion_ycoord_offset, X
	STA aobject_ycoord + $10, Y
	CLC
	LDA aobject_xcoord + $10, Y
	ADC crash_bomber_explosion_xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $10, Y
	ADC crash_bomber_explosion_screen_offset, X
	STA aobject_screen + $10, Y
	LDX z:zsprites_pointer
	INC z:z02
	DEC z:z01
	BNE @loop

@not_swap:
	LDX z:zsprites_pointer
	DEC aenemies_temp - $10, X
	BPL @continue
	LSR aobject_flag, X
	RTS

@continue:
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE @check_flags
	LDA #$02
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_woodman_leaf:
	LDA aobject_temp, X
	BNE @throw_leaf
	LDA #$00
	STA aobject_frameset_lower_timer, X
	JSR _check_enemies_object_set_flags_1
	RTS

@throw_leaf:
	LDA aobject_frameset_upper_timer, X
	ORA aobject_frameset_lower_timer, X
	BNE @not_throw_leaf_shield
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	LDA #$FE
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X

@not_throw_leaf_shield:
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC #$20
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC #$00
	STA aobject_ycoord_speed, X
	JSR _check_enemies_object_set_flags_1
	RTS

_enemies_mecha_dragon_block:
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BEQ @is_wily1
	LDA #$58
	STA aobject_stand_xcoord - $10, X
	SEC
	LDA aobject_ycoord, X
	SBC #$18
	STA aobject_stand_ycoord - $10, X
	LDA z:ztime_stopper_flag
	BNE @check_flags
	JMP _enemies_mecha_dragon_wing

@is_wily1:
	LDA #$10
	STA aobject_stand_xcoord - $10, X
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_stand_ycoord - $10, X
	LDA z:ztime_stopper_flag
	BNE @check_flags
	JSR _check_enemies_object_set_flags_1
	BCC @exist
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@exist:
	RTS

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_mecha_dragon:
	LDA aobject_temp, X
	BPL @check_auto_scrolling
	RTS

@check_auto_scrolling:
	BNE @auto_scrolling_set
	LDA z:zend_scrolling_mapset
	STA z:zstart_scrolling_mapset
	INC z:zscroll_index
	LDA #$07
	STA aobject_hp, X
	LDA #$08
	STA z:zcurrent_boss
	LDA #$01
	STA z:zboss_ai_pointer
	LDA #$17
	STA aobject_ppu_address
	LDA #$E0
	STA aobject_ppu_address + 1
	LDA #$00
	STA aobject_temp + $01
	STA aobject_hp + $01
	STA aboss_defeated_timer_2
	STA z:zboss_timer
	LDA #$B8
	STA aboss_defeated_timer_1
	LDA #black
	LDX #$0F

@loop_1:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_1
	LDX z:zsprites_pointer
	INC aobject_temp, X
	LDA #$18
	STA aenemies_temp - $10, X
	LDA #$63
	STA z:z00
	LDY #$0F

@loop_2:
	JSR _check_object_exist
	BCS @not_exist_1
	LDA #$01
	STA aobject_xcoord_speed + $10, Y
	DEY
	BPL @loop_2

@not_exist_1:
	RTS

@auto_scrolling_set:
	LDA #$01
	STA z:zslip_wind_flags
	LDA #$00
	STA z:zwind_toward
	LDA #$00
	STA z:zwind_conveyor_speed_fraction
	LDA #$01
	STA z:zwind_conveyor_speed
	LDA aobject_temp, X
	CMP #$01
	BNE @hit_distance_block
	DEC aenemies_temp - $10, X
	BNE @skip
	LDA #$40
	STA aenemies_temp - $10, X
	LDA #objects_mecha_dragon_block
	JSR _enemies_to_items
	LDA #$01
	STA aobject_xcoord_speed + $10, Y
	STA aobject_temp + $10, Y
	DEC aobject_hp, X
	BNE @skip
	INC aobject_temp, X
	RTS

@hit_distance_block:
	DEC aenemies_temp - $10, X
	BNE @skip
	LDY aobject_hp, X
	LDA @distance_table, Y
	STA aenemies_temp - $10, X
	BMI @auto_scrolling_end
	LDA @ycoord_table, Y
	STA z:z02
	LDA #objects_mecha_dragon_block
	JSR _enemies_to_items
	LDA z:z02
	STA aobject_ycoord + $10, Y
	LDA #$01
	STA aobject_xcoord_speed + $10, Y
	INC aobject_hp, X

@skip:
	RTS

@auto_scrolling_end:
	LDA #$63
	STA z:z00
	LDY #$0F

@loop_3:
	JSR _check_object_exist
	BCS @not_exist_2
	LDA #$00
	STA aobject_xcoord_speed + $10, Y
	DEY
	BPL @loop_3

@not_exist_2:
	LDX z:zsprites_pointer
	LDA #$FF
	STA aobject_temp, X
	INC z:zboss_ai_pointer
	track_queue track_boss_fighting
	RTS

@distance_table:
	.BYTE $40, $01, $20, $28, $FF

@ycoord_table:
	.BYTE $98, $98, $48, $78

_enemies_mecha_dragon_wing:
	LDA aobject_ycoord_speed + $01
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_speed_fraction, X

_save_and_set_guts_tank_parameter_common:
	LDA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed, X
	LDA aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_speed_fraction, X
	LDA aboss_defeated_timer_1
	STA aobject_flag, X
	JSR _check_enemies_object_set_flags_1
	LDA z:zcurrent_boss
	CMP #$08
	BEQ @is_mecha_dragon_guts_tank
	LDA aobject_pointer, X
	CMP #objects_guts_tank_fist
	BEQ @is_mecha_dragon_guts_tank
	LDA aobject_flag, X
	ORA #can_collide_megaman | can_collide_megaman_bullet | objects_invisible
	STA aobject_flag, X
	RTS

@is_mecha_dragon_guts_tank:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	STA aobject_flag, X
	RTS

_enemies_mecha_dragon_tail_head:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	LDA aboss_defeated_timer_1
	AND #%01000000
	BEQ @left
	INC aobject_frameset_upper_timer, X

@left:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	JMP _enemies_mecha_dragon_wing

_enemies_mecha_dragon_beam:
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BEQ @is_mecha_dragon
	JMP _enemies_mecha_dragon_wing

@is_mecha_dragon:
	JSR _check_enemies_object_set_flags_1
	LDA aobject_ycoord, X
	CMP #$80
	BNE @not_appeared
	LDA #$00
	STA aobject_ycoord_speed, X
	LDA aobject_frameset_upper_timer, X
	ORA aobject_frameset_lower_timer, X
	BNE @appeared
	INC aobject_temp + $01
	LSR aobject_flag, X

@appeared:
	RTS

@not_appeared:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	RTS

_enemies_guts_tank_fist:
	LDA aobject_temp, X
	BNE @start_battle
	LDA #$80
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord, X
	CMP #$7F
	BCC @set_parameter_flags
	BCS @had_knocked

@start_battle:
	LDA #$80
	STA aobject_ycoord_speed_fraction, X
	LDA #$00
	STA aobject_ycoord_speed, X
	LDA aobject_ycoord, X
	CMP #$68
	BCS @set_parameter_flags

@had_knocked:
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X

@set_parameter_flags:
	JMP _save_and_set_guts_tank_parameter_common

_enemies_picopico_kun_apart:
	LDA aobject_frameset_upper_timer, X
	BNE @had_set
	STA aobject_frameset_lower_timer, X
	DEC aenemies_temp - $10, X
	BNE @check_flags
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right
	LSR aobject_flag, X
	RTS

@on_right:
	CLC
	LDA aobject_xcoord, X
	ADC #$08
	STA aobject_xcoord, X
	INC aobject_frameset_upper_timer, X
	LDA #$01
	STA aobject_stand_ycoord - $10, X
	LDA #$0F
	STA aenemies_temp - $10, X
	BNE @had_set

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@had_set:
	LDA aobject_stand_ycoord - $10, X
	BNE @already_halt
	DEC aenemies_temp - $10, X
	BEQ @halt
	LDA aobject_xcoord, X
	CMP #$30
	BCC @halt
	CMP #$D0
	BCS @halt
	LDA aobject_ycoord, X
	CMP #$30
	BCC @halt
	CMP #$C0
	BCC @run

@halt:
	LDA #$01
	STA aobject_stand_ycoord - $10, X
	LDA #$3E
	STA aenemies_temp - $10, X

@already_halt:
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	DEC aenemies_temp - $10, X
	BNE @run
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	LDA #$01
	STA aobject_collision_xcoord, X
	LDA #$00
	STA aobject_stand_ycoord - $10, X
	LDY aobject_temp, X
	LDA @halt_timer, Y
	STA aenemies_temp - $10, X
	LDA @speed_fraction_table, Y
	STA z:z08
	LDA @speed_table, Y
	STA z:z09
	JSR _enemies_to_megaman

@run:
	LDA aobject_frameset_upper_timer, X
	CMP #$06
	BNE @nz
	LDA #$04
	STA aobject_frameset_upper_timer, X

@nz:
	JSR _check_enemies_object_set_flags_1
	BCC @exist
	SEC
	LDA aobject_hp + $01
	SBC #$02
	STA aobject_hp + $01

@exist:
	RTS

@halt_timer:
	.BYTE $3E, $1F, $1F, $1F

@speed_fraction_table:
	.BYTE $00, $68, $00, $80

@speed_table:
	.BYTE $01, $01, $02, $02

_enemies_large_bullet:
	LDA z:zboss_ai_pointer
	CMP #$04
	BCS @phase_2
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC #$40
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC #$00
	STA aobject_ycoord_speed, X

@check_flags:
	JSR _check_enemies_object_set_flags_1
	RTS

@phase_2:
	LDA #$07
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BEQ @check_flags
	LDA #$04
	STA aobject_ycoord_speed, X
	LDA #$78
	STA aobject_ycoord_speed_fraction, X
	BNE @check_flags

_enemies_boobeam_trap:
	SEC
	LDA aobject_xcoord_speed_fraction, X
	SBC #$01
	STA aobject_xcoord_speed_fraction, X
	TAY
	LDA aobject_xcoord_speed, X
	SBC #$00
	STA aobject_xcoord_speed, X
	BNE @not_ready_shoot
	CPY #$00
	BEQ @shoot
	CPY #$3E
	BCS @not_ready_shoot
	LDA aobject_frameset_upper_timer, X
	CMP #$06
	BNE @check_killed
	LDA #$04
	BNE @continue

@shoot:
	LDA #$77
	STA aobject_xcoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #objects_boobeam_trap_shoot
	LDX #$01
	JSR _enemies_to_items
	BCS @not_ready_shoot
	TXA
	PHA
	TYA
	ADC #$10
	TAX
	STX z:zsprites_pointer
	LDA #$08
	STA z:z09
	LDA #$00
	STA z:z08
	JSR _enemies_to_megaman
	PLA
	TAX
	STX z:zsprites_pointer

@not_ready_shoot:
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE @check_killed
	LDA #$00

@continue:
	STA aobject_frameset_upper_timer, X

@check_killed:
	JSR _check_enemies_object_set_flags_2
	BCC @not_killed
	SEC
	LDA aobject_hp + $01
	SBC #$06
	STA aobject_hp + $01
	BCS @not_killed
	LDA #$00
	STA aobject_hp + $01

@not_killed:
	RTS

_enemies_alien_star:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDY aobject_frameset_upper_timer, X
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_offset, Y
	STA aobject_xcoord, X
	RTS

@xcoord_offset:
	.BYTE $03, $02

_enemies_big_fish:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	LDA aobject_temp, X
	BNE @megaman_close_to_big_fish
	LDA z:z00
	CMP #$38
	BCS @check_flags_1
	LDA z:zrandom
	STA z:z01
	LDA #$03
	STA z:z02
	JSR _divide_mod
	LDY z:z04
	LDX z:zsprites_pointer
	LDA @appear_timer, Y
	STA aenemies_temp - $10, X
	INC aobject_temp, X

@check_flags_1:
	JSR _check_enemies_object_set_flags_2
	RTS

@megaman_close_to_big_fish:
	CMP #$02
	BCS @go_up_1
	LDA z:z00
	CMP #$38
	BCC @countdown
	DEC aobject_temp, X
	BEQ @check_flags_1

@countdown:
	DEC aenemies_temp - $10, X
	BNE @check_flags_1
	LDA #$02
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_ycoord_speed_fraction, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	INC aobject_temp, X

@go_up_1:
	LDA aobject_ycoord_speed, X
	BPL @go_up_2
	LDA aobject_ycoord, X
	CMP #$E0
	BCC @check_flags_2
	LDA #$00
	STA aobject_temp, X
	LDA #objects_invisible | objects_exist
	STA aobject_flag, X
	BNE @check_flags_2

@go_up_2:
	LDA aobject_ycoord, X
	CMP #$80
	BCS @check_flags_2
	LDA #$FF
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag, X

@check_flags_2:
	JSR _check_enemies_object_set_flags_1
	RTS

@appear_timer:
	.BYTE $1F, $2E, $7D

_enemies_red_liquid_1:
_enemies_red_liquid_2:
	LDA aobject_temp, X
	CMP #$3E
	BNE @not_drop
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BNE @check_flags
	LDA aobject_frameset_lower_timer, X
	BNE @check_flags
	LDA #objects_red_liquid_drop
	JSR _enemies_to_items
	BCS @exist
	LDA aobject_pointer, X
	STA aobject_temp + $10, Y
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$04
	STA aobject_ycoord + $10, Y
	LDA #$FF
	STA aobject_ycoord_speed + $10, Y
	STA aobject_ycoord_speed_fraction + $10, Y

@exist:
	LDA #$00
	STA aobject_temp, X

@not_drop:
	INC aobject_temp, X
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @check_flags
	LDA #$00
	STA aobject_frameset_upper_timer, X

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

_enemies_red_liquid_drop:
	LDA aobject_frameset_upper_timer, X
	BEQ @drop
	JSR _check_enemies_object_set_flags_2
	RTS

@drop:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$03
	STA z:z01
	LDA #$04
	STA z:z02
	JSR _check_object_vertical_move_collision
	LDA z:z00
	BEQ @air
	LDY aobject_temp, X
	LDA red_liquid_drop_track_queue_table - objects_red_liquid_1, Y
	JSR _track_queue
	INC aobject_frameset_upper_timer, X
	RTS

@air:
	JSR _check_enemies_object_set_flags_1
	RTS

red_liquid_drop_track_queue_table:
	.BYTE track_red_liquid_1, track_red_liquid_2

_enemies_no_effect_large_life_capsule:
_enemies_large_life_capsule:
_enemies_large_weapon_capsule:
_enemies_e_tank:
_enemies_1up:
	LDA #$07
	STA z:z01
	LDY #$08
	BNE _set_item_collision_index_common

_enemies_small_life_capsule:
_enemies_small_weapon_capsule:
	LDA #$03
	STA z:z01
	LDY #$04

_set_item_collision_index_common:
	LDA aobject_flag, X
	CMP #can_collide_megaman | objects_exist
	BEQ @true
	LDA z:z01
	PHA
	TYA
	PHA
	JSR _check_enemies_object_set_flags_1
	PLA
	STA z:z02
	PLA
	STA z:z01
	LDA aobject_flag, X
	BPL @skip
	LDA aobject_ycoord_speed, X
	PHP
	JSR _check_object_horizontal_move_collision
	PLP
	BPL @skip
	LDA z:z00
	BEQ @skip
	LDA #$FA
	STA aenemies_temp - $10, X
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #can_collide_megaman | objects_exist
	STA aobject_flag, X

@skip:
	RTS

@true:
	LDA aobject_temp, X
	BEQ @set_item_flags
	DEC aenemies_temp - $10, X
	BNE @check_flags
	LSR aobject_flag, X
	RTS

@check_flags:
	JSR _check_enemies_object_set_flags_2
	RTS

@set_item_flags:
	JSR _check_items_object_set_flags
	RTS

_enemies_wily5_teleport_to_boss:
_enemies_wily5_teleport_return:
_enemies_wily5_teleport_to_wily_machine_2:
	LDY #$25
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames
	LDY #black

@8_frames:
	STY acurrent_background_palette + $1B
	JSR _check_enemies_object_set_flags_2
	LDA z:z01
	BEQ @not_hit
	TXA
	AND #%00001111
	STA z:zcurrent_refighting_boss
	INC z:zcurrent_refighting_boss

@not_hit:
	RTS

_enemies_7f:
