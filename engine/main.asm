_init:
	SEI
	stack_pointers $FF
	LDX #$01

@loop_1:
	LDA PPU_STATUS
	BPL @loop_1

@loop_2:
	LDA PPU_STATUS
	BMI @loop_2
	DEX
	BPL @loop_1
	LDA #$00
	STA z:z00
	STA z:z01
	LDY #$00

@loop_3:
	STA (z00), Y
	INY
	BNE @loop_3
	INC z:z01
	LDX z:z01
	CPX #$08
	BNE @loop_3
	LDA #nametable_horizontal | fix_last_bank
	JSR _mmc1_control
	LDA #$01
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LDA #$1F
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LDA #$03
	STA z:z1up
	LDA #$00
	STA z:ze_tank

@back:
	JSR _homeintro
	LDA z:ztitle_flag
	BNE @back
	LDA z:zgot_weapon_flag
	CMP #$FF
	BNE _game_over_to_stage_select
	LDA #stage_wily1
	STA z:zcurrent_stage
	BNE _bosses_defeated_to_continue_stage

_game_over_to_stage_select:
	LDA #$03
	STA z:z1up

_get_weapons_to_stage_select:
	JSR _home_stage_select

_bosses_defeated_to_continue_stage:
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BCC _game_over_to_continue_stage
	JSR _home_wily_castle
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BCS _dont_refill_energy_on_wily_stage

_game_over_to_continue_stage:
	LDX #$0A
	LDA #$1C

@loop:
	STA z:zweapon_energy, X
	DEX
	BPL @loop

_dont_refill_energy_on_wily_stage:
	LDX #$00
	LDA z:zcurrent_stage
	AND #%00001000
	BEQ @not_wily
	LDX #$03

@not_wily:
	STX z:zcheckpoint_pointer
	LDA #$14
	LDX #$1F

@loop:
	STA aitems_respawn_flag, X
	DEX
	BPL @loop
	LDA #$00
	STA z:zrefighting_flag

_continue_stage_regular:
	LDA #$00
	STA z:zconveyor_left
	LDA #$40
	STA z:zconveyor_right
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	JSR _init_stage
	LDA #$1C
	STA aobject_hp
	LDA #$00
	STA z:ztime_stopper_flag
	STA z:zcurrent_weapon
	JSR _weapon_palette
	JSR _init_checkpoint
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_xcoord_fraction
	STA z:zscreen_ycoord
	STA z:zmecha_dragon_ycoord_fraction
	STA z:zmecha_dragon_ycoord
	STA z:zmecha_dragon_xcoord_fraction
	STA z:zmecha_dragon_xcoord
	STA z:zmecha_dragon_screen
	STA aobject_xcoord
	STA aobject_xcoord_fraction
	STA z:zcurrent_palette_no
	STA z:zpalette_animation_timer
	STA z:zboss_ai_pointer
	LDA z:zscreen_id
	JSR _draw_screen_instant
	CLC
	LDA z:zscreen_id
	ADC #$01
	JSR _draw_screen_instant
	LDA #$20
	STA z:zcurrent_handle_32x32_attribute
	JSR _init_sprites
	LDA z:zppu_mask
	ORA #background_leftmost_enable | sprites_leftmost_enable | background_enable | sprite_enable
	STA z:zppu_mask
	STA PPU_MASK
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	STA z:znmi_wait
	LDA #$40
	STA z:zobject_ycoord_speed_accelerate_fraction
	LDA #$00
	STA z:zobject_ycoord_speed_accelerate
	LDX z:zcurrent_stage
	LDA stages_track_queue_table, X
	JSR _track_queue
	LDX #$13

@loop_1:
	LDA ready_oam_coord_table, X
	STA aoam_y, X
	DEX
	BPL @loop_1
	LDA #$C0
	STA z:zFD

@nz:
	LDY #$60
	LDX #$10
	LDA z:zFD
	AND #%00001000
	BNE @8_frames
	LDY #$F8

@8_frames:
@loop_2:
	TYA
	STA aoam_y, X
	DEX
	DEX
	DEX
	DEX
	BPL @loop_2
	JSR _nmi_wait_0e
	DEC z:zFD
	BNE @nz
	JSR _init_sprites
	LDA #$DF
	STA z:zjump_speed_fraction
	LDA #$04
	STA z:zjump_speed
	JSR _clean_object_in_teleporting
	JSR _megaman_beam_down
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BNE @mainloop
	JMP _run_stage_wily_5

@mainloop:
	LDA z:zitem
	BEQ @not_hit_item
	JSR _megaman_hit_item

@not_hit_item:
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @not_open_menu
	JSR _home_open_menu

@not_open_menu:
	JSR _appearing_block
	JSR _run_megaman
	JSR _run_weapons_ai
	JSR _find_objects
	JSR _run_bosses_ai
	JSR _run_enemies_ai
	JSR _sprites
	LDA z:zscroll_direction
	BEQ @not_scroll
	JSR _check_scroll

@not_scroll:
	LDA z:zwater
	BEQ @skip
	INC z:zwater_timer
	CMP z:zwater_timer
	BEQ @4_frames
	BCS @skip

@4_frames:
	JSR _nmi_wait_water
	LDA #$00
	STA z:zwater_timer

@skip:
	JSR _nmi_wait_0e
	JMP @mainloop
