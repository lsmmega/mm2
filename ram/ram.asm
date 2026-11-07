.ENUM
	z00
	z01
	z02
	z03
	z04
	z05
	z06
	z07
	z08
	z09
	z0A
	z0B
	z0C
	z0D
	z0E
	z0F
	z10
	z11
	zstart_scrolling_mapset = $14
	zend_scrolling_mapset
	zleft_mapset_pointer
	zright_mapset_pointer = $18
	zcurrent_handle_32x32_attribute = $1A
	zscreen_update_flag
	znmi_frame
	znmi_wait
	zscreen_xcoord_fraction
	zscreen_xcoord
	zscreen_id
	zscreen_ycoord_fraction
	zscreen_ycoord
	zjoy1_pressed
	zjoy2_pressed
	zjoy1_pressed_frame
	zjoy2_pressed_frame
	zjoy1_pressed_bits
	zjoy2_pressed_bits
	zcurrent_bankswitch
	zcurrent_stage
	zsprites_pointer
	zmegaman_status
	zobject_in_process_screen
	zobject_in_process_coord
	zobject_in_process_coord_fraction
	zobject_ycoord_speed_accelerate_fraction
	zobject_ycoord_speed_accelerate
	ztsa_blockset_pointers
	zladder_flag = $35
	ztimer
	zscroll_direction
	zscroll_index
	zscroll_down_process
	z3A
	zjump_speed_fraction
	zjump_speed
	zmegaman_hit_type
	zslip_speed_fraction
	zslip_speed
	zslip_wind_flags
	zpause ;used for mega man 1
	ztoward
	zcurrent_palette_no
	zpalette_animation_timer
	zconveyor_right
	zconveyor_left
	zobject_tiles_update_size
	zleft_checkpoint_enemies_index
	zright_checkpoint_enemies_index
	zrandom
	zmegaman_invincibility_time
	zleft_checkpoint_items_index
	zright_checkpoint_items_index
	zhandle_object_type
	zwind_conveyor_speed_fraction
	zwind_conveyor_speed
	zdraw_other_flag
	zmenu_screen_xcoord
	zmenu_screen_id
	zdraw_door
	zno_of_appearing_block
	zappearing_block_index
	ztrack_queue_pointer = $66
	zdelay_track_queue
	zbankswitch_status
	zundo_bankswitch
	zgot_weapon_flag = $9A
	zgot_item_flag
	zweapon_energy
	ze_tank = $A7
	z1up
	zcurrent_weapon
	ztime_stopper_flag
	zquick_boomerang_autofire_timer
	zweapon_consume_fraction
	zitem
	zopening_nametable
	zwind_toward
	zcheckpoint_pointer
	zboss_ai_pointer
	zboss_timer
	zcurrent_boss
	zboss_hit_flag
	zmecha_dragon_ycoord_fraction
	zmecha_dragon_ycoord
	zmecha_dragon_xcoord_fraction
	zmecha_dragon_xcoord
	zmecha_dragon_screen
	zcurrent_refighting_boss
	zrefighting_flag = $BC
	zcant_collision_flag
	ztitle_flag
	ztitle_timer = $C0
	zopening_subtitle_msb_hi = $C8
	zopening_subtitle_pointer
	zdifficulty = $CB
	zcredit_pointer = $DE
	zaudio_header = $E0
	zsfx_channel
	ztrack_pointers
	zplayback_flag = $E4
	zaudio_E5
	zsfx_apu_register_index
	zmusic_playmultispeed
	zfade_in_out_rate
	zfade_in_out_level
	zaudio_frame
	zmusic_apu_register_index
	zaudio_ram_pointers
	zmusic_channel = $EE
	zundo_sfx_channel
	zsfx_pointers
	zsfx_frame = $F2
	zsfx_loop
	zaudio_F4
	zaudio_F5
	zppu_ctrl = $F7
	zppu_mask
	zout_of_screen
	zwater = $FB
	zwater_timer
	zFD
	zFE
	zFF
.ENDENUM

	aenemies_index       = $100
	aenemies_hit_flag    = $110
	aenemies_temp        = $120
	aitems_index         = $130
	aitems_respawn_flag  = $140
	aobject_stand_xcoord = $160
	aobject_stand_ycoord = $170

;oam
	oam_hi_addr     = 2
	aoam_y          = oam_hi_addr << 8 + 0
	aoam_tiles      = oam_hi_addr << 8 + 1
	aoam_attributes = oam_hi_addr << 8 + 2
	aoam_x          = oam_hi_addr << 8 + 3

	ascreen_ppu_horizontal_address           = $300
	ascreen_ppu_vertical_address             = $300
	ascreen_ppu_vertical_data                = $302
	ascreen_ppu_horizontal_attribute_address = $308
	ascreen_ppu_horizontal_data              = $310
	ascreen_ppu_vertical_attribute_address   = $312
	ascreen_ppu_vertical_attribute_data      = $314
	ascreen_ppu_horizontal_attribute_data    = $350
	ano_of_palette                           = $354
	apalette_animation_frame                 = $355
	acurrent_background_palette              = $356
	abackground_palette_set                  = $376
	adraw_other_ppu_address                  = $3B5
	aobject_ppu_address                      = $3B6
	aobject_ppu_data                         = $3B8
	adraw_other_ppu_data                     = $3C1
	adoor_attribute                          = $3CE
	adoor_attribute_bitwise                  = $3D4
	aobject_pointer                          = $400
	aobject_flag                             = $420
	aobject_screen                           = $440
	aobject_xcoord                           = $460
	aobject_xcoord_fraction                  = $480
	aobject_ycoord                           = $4A0
	aobject_ycoord_fraction                  = $4C0
	aobject_temp                             = $4E0
	aaudio_ram                               = $500
	amodulation_pointers                     = $57C
	atrack_queue                             = $580
	aweapon_collision_index                  = $590
	aweapon_stand_xcoord                     = $5A0
	aweapon_stand_ycoord                     = $5A3
	atime_stopper_damage_timer               = $5A6
	aboss_defeated_timer_1                   = $5A7
	aboss_invincibility_time                 = $5A8
	aboss_defeated_timer_2                   = $5A9
	aregular_boss_defeated_flag              = $5AA
	awily_temp                               = $5AB
	aobject_xcoord_speed                     = $600
	aobject_xcoord_speed_fraction            = $620
	aobject_ycoord_speed                     = $640
	aobject_ycoord_speed_fraction            = $660
	aobject_frameset_lower_timer             = $680
	aobject_frameset_upper_timer             = $6A0
	aobject_hp                               = $6C0
	aobject_collision_xcoord                 = $6E0
	amenu_palette_temp                       = $700
