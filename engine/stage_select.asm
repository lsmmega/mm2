_stage_select:
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	JSR _init_miscellaneous_ram
	JSR _load_stage_select
	LDX #$00
	LDA z:zgot_weapon_flag
	STA z:z01

@loop_3:
	STX z:z00
	LSR z:z01
	BCC @not_clear
	LDA stage_select_clear_hi_ppu_address, X
	STA z:z09
	LDA stage_select_clear_lo_ppu_address, X
	STA z:z08
	LDX #$04
	LDA #$00

@loop_2:
	LDA z:z09
	STA PPU_ADDRESS
	LDA z:z08
	STA PPU_ADDRESS
	LDY #$04
	LDA #$00

@loop_1:
	STA PPU_DATA
	DEY
	BNE @loop_1
	CLC
	LDA z:z08
	ADC #$20
	STA z:z08
	DEX
	BNE @loop_2

@not_clear:
	LDX z:z00
	INX
	CPX #$08
	BNE @loop_3
	LDX #$1F
	JSR _flash_palettes
	JSR _init_miscellaneous_sprites
	LDX #$00
	LDA z:zgot_weapon_flag
	STA z:z02
	LDY #$00

@loop_5:
	STX z:z01
	LSR z:z02
	BCS @clear
	LDA stage_select_boss_oam_length, X
	STA z:z00
	LDA stage_select_boss_oam_index, X
	TAX

@loop_4:
	LDA stage_select_boss_oam, X
	STA aoam_y, Y
	INY
	INX
	DEC z:z00
	BNE @loop_4

@clear:
	LDX z:z01
	INX
	CPX #$08
	BNE @loop_5
	JSR _enable_nmi
	track_queue track_stage_select
	LDA #$00
	STA z:zcurrent_stage
	STA z:zFD
	JSR _nmi_wait_0d

@loop_6:
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BNE @start_pressed
	LDA z:zjoy1_pressed_bits
	AND #up_button | down_button | left_button | right_button
	BEQ @undo
	track_queue track_select
	JSR _stage_select_set

@undo:
	JSR _stage_select_border
	JSR _nmi_wait_0d
	JMP @loop_6

@start_pressed:
	LDX z:zcurrent_stage
	BNE @not_middle
	LDA z:zgot_weapon_flag
	CMP #$FF
	BNE @undo
	LDA #stage_wily1
	STA z:zcurrent_stage
	JMP @skip

@not_middle:
	LDY stage_select_check_border_boss_clear_flag_index, X
	LDA z:zgot_weapon_flag
	AND stage_select_clear_flag, Y
	BNE @undo
	STY z:zcurrent_stage
	track_queue track_teleport_out
	LDA z:zcurrent_stage
	ASL
	STA z:z00
	ASL
	ADC z:z00
	TAX
	LDY #$00

@loop_7:
	LDA stage_select_load_boss_tiles_hi_address, X
	STA aobject_xcoord, Y
	LDA stage_select_load_boss_tiles_bank, X
	STA aobject_screen, Y
	LDA #$00
	STA aobject_xcoord_fraction, Y
	INX
	INY
	CPY #$06
	BNE @loop_7
	LDA #$0A
	STA aobject_ycoord
	LDA #$00
	STA aobject_ycoord_fraction
	STA aobject_frameset_lower_timer
	LDA #$30
	STA z:zFD

@loop_8:
	LDX #$3F
	LDA z:zFD
	AND #%00000100
	BNE @4_frames_1
	LDX #$1F

@4_frames_1:
	JSR _flash_palettes
	LDX aobject_frameset_lower_timer
	CLC
	LDA aobject_xcoord_fraction, X
	STA z:z08
	ADC #$20
	STA aobject_xcoord_fraction, X
	PHP
	LDA aobject_xcoord, X
	STA z:z09
	ADC #$00
	STA aobject_xcoord, X
	PLP
	BNE @next_1
	INC aobject_frameset_lower_timer

@next_1:
	LDA aobject_screen, X
	JSR _load_boss_tiles
	CLC
	LDA aobject_ycoord_fraction
	STA aobject_ppu_address + 1
	ADC #$20
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	STA aobject_ppu_address
	ADC #$00
	STA aobject_ycoord
	DEC z:zFD
	BEQ @next_2
	JSR _nmi_wait_0d
	JMP @loop_8

@next_2:
	LDX #$1F
	JSR _flash_palettes
	LDA #white_cyan
	STA acurrent_background_palette + $02
	LDA #light_azure
	STA acurrent_background_palette + $03
	LDY #$07

@loop_9:
	LDA boss_show_init_palettes, Y
	STA acurrent_background_palette + $10, Y
	DEY
	BPL @loop_9
	LDA z:zcurrent_stage
	ASL
	ASL
	ASL
	TAX
	LDY #$00

@loop_10:
	LDA boss_show_boss_oam_palettes, X
	STA acurrent_background_palette + $18, Y
	INX
	INY
	CPY #$08
	BNE @loop_10
	LDA #$01
	STA z:zscreen_id
	JSR _load_copipi_tiles
	LDA #$18
	STA z:zFD
	track_queue track_boss_show

@loop_11:
	JSR _init_miscellaneous_sprites
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_11
	JSR _init_miscellaneous_xcoord
	LDA #$80
	STA aobject_xcoord
	LDA #$20
	STA aobject_ycoord
	LDA #$00
	STA aobject_frameset_lower_timer
	STA aobject_frameset_upper_timer

@loop_12:
	LDA #$00
	STA aobject_frameset_lower_timer
	CLC
	LDA aobject_ycoord
	ADC #$08
	STA aobject_ycoord
	CMP #$78
	BEQ @arrived
	JSR _init_miscellaneous_sprites
	JSR _load_boss_show_oam
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	JMP @loop_12

@arrived:
	INC aobject_frameset_upper_timer
	LDA z:zjoy1_pressed
	AND #a_button
	STA aobject_flag
	LDA #$00
	STA z:zFD
	LDA #$08
	STA z:zFE

@loop_13:
	LDA #$00
	STA aobject_frameset_lower_timer
	DEC z:zFE
	BNE @next_3
	LDA #$08
	STA z:zFE
	LDX z:zFD
	LDA boss_show_fade_out_palettes, X
	STA acurrent_background_palette + $12
	LDA boss_show_fade_out_palettes + 1, X
	STA acurrent_background_palette + $13
	INX
	INX
	CPX #$10
	BEQ @next_4
	STX z:zFD

@next_3:
	JSR _init_miscellaneous_sprites
	JSR _load_boss_show_oam
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	JMP @loop_13

@next_4:
	LDA #$50
	STA z:zFD

@loop_14:
	JSR _init_miscellaneous_sprites
	JSR _load_boss_show_oam
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_14
	LDA #$28
	STA z:zFD
	LDA #$26
	STA aobject_ppu_address
	LDA #$0A
	STA aobject_ppu_address + 1
	LDA z:zcurrent_stage
	ASL
	STA z:zFE
	ASL
	ASL
	ADC z:zFE
	STA z:zFE

@loop_15:
	LDA z:zFD
	AND #%00000011
	BNE @4_frames_2
	LDX z:zFE
	LDA boss_show_boss_name, X
	STA aobject_ppu_data
	LDA #$01
	STA z:zobject_tiles_update_size
	INC z:zFE
	INC aobject_ppu_address + 1

@4_frames_2:
	JSR _init_miscellaneous_sprites
	JSR _load_boss_show_oam
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_15
	LDA #$BB
	STA z:zFD

@loop_16:
	JSR _init_miscellaneous_sprites
	JSR _load_boss_show_oam
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_16

@skip:
	JSR _disable_nmi
	RTS
