_intro:
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	LDA #nametable_vertical | fix_last_bank
	JSR _mmc1_control
	JSR _init_miscellaneous_ram
	LDA #$00
	STA z:ztitle_flag
	LDA #$02
	JSR _load_cutscene_tiles
	LDA #$20
	STA PPU_ADDRESS
	LDX #$00
	STX PPU_ADDRESS
	TXA
	LDY #$04

@loop_1:
	STA PPU_DATA
	INX
	BNE @loop_1
	DEY
	BNE @loop_1
	LDA #black
	LDX #$1F

@loop_2:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_2
	LDA #$04
	STA z:z00
	LDX #$00

@loop_4:
	LDY intro_licensed_strings, X
	INX
	LDA intro_licensed_strings, X
	STA PPU_ADDRESS
	INX
	LDA intro_licensed_strings, X
	STA PPU_ADDRESS
	INX

@loop_3:
	LDA intro_licensed_strings, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_3
	DEC z:z00
	BNE @loop_4
	JSR _init_miscellaneous_sprites
	JSR _enable_nmi
	track_queue mute_sfx
	track_queue mute_music
	LDA #$1F
	STA z:zFE

@loop_6:
	LDA #$0A
	STA z:zFF

@loop_5:
	LDX z:zFE
	LDA intro_fade_palettes, X
	STA acurrent_background_palette + $01
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_1
	JMP _load_title_screen_direct

@start_not_pressed_1:
	DEC z:zFF
	BNE @loop_5
	DEC z:zFE
	BPL @loop_6
	LDA #$00
	STA z:zobject_tiles_update_size
	JSR _disable_nmi
	LDA #nametable_top_left
	STA z:zopening_nametable
	LDA #<.BANK (mapset_crashman_14)
	STA z:zcurrent_stage
	LDA #<mapset_crashman_14
	STA z:z08
	LDA #>mapset_crashman_14
	STA z:z09
	LDA #$00
	STA z:zcurrent_handle_32x32_attribute
	STA z:zscreen_update_flag

@loop_7:
	JSR _draw_screen_temp
	INC z:z08
	INC z:zcurrent_handle_32x32_attribute
	JSR _draw_screen_temp
	JSR _run_opening_screen
	LDA z:z08
	AND #%00111111
	BNE @loop_7
	LDA #<mapset_crashman_15
	STA z:z08
	LDA #>mapset_crashman_15
	STA z:z09
	LDA #$00
	STA z:zcurrent_handle_32x32_attribute
	STA z:zscreen_update_flag

@loop_8:
	JSR _draw_screen_temp
	CLC
	LDA ascreen_ppu_horizontal_address
	ADC #$04
	STA ascreen_ppu_horizontal_address
	CLC
	LDA ascreen_ppu_horizontal_attribute_address
	ADC #$04
	STA ascreen_ppu_horizontal_attribute_address
	JSR _run_opening_screen
	LDA z:z08
	AND #%00111111
	BNE @loop_8
	LDX #$1F
	LDA #black

@loop_9:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_9
	JSR _init_miscellaneous_sprites
	JSR _enable_nmi
	LDX #$0F
	LDA #$00

@loop_10:
	STA aobject_screen, X
	STA aobject_pointer, X
	DEX
	BPL @loop_10
	LDA #$80
	STA aobject_ycoord_fraction
	LDA #$00
	STA aobject_ycoord
	LDA #$28
	STA aobject_ycoord + $01
	LDA #$00
	STA aobject_ycoord_fraction + $01
	LDA #$00
	STA aobject_ycoord + $02
	LDA #$47
	STA aobject_ycoord + $03
	LDA #$02
	STA aobject_pointer + $02
	STA aobject_pointer + $03
	LDA #$27
	STA aobject_ycoord + $05
	LDA #$6F
	STA aobject_ycoord + $06
	LDA #$01
	STA aobject_pointer + $05
	STA aobject_pointer + $06
	LDA #$80
	STA aobject_ycoord_speed_fraction
	LDA #$00
	STA aobject_ycoord_speed
	LDA #nametable_top_left
	STA z:zopening_nametable
	LDA #$00
	STA z:zscreen_ycoord
	LDA #$00
	STA z:zFD
	LDA #$08
	STA z:zFE

@start_not_pressed_2:
	DEC z:zFE
	BNE @nz_1
	LDA #$08
	STA z:zFE
	LDX z:zFD
	LDY #$00

@loop_11:
	LDA intro_fade_out_palettes, X
	STA acurrent_background_palette, Y
	INX
	INY
	CPY #$20
	BNE @loop_11
	CPX #$60
	BEQ @max
	STX z:zFD

@nz_1:
	JSR _draw_intro_oam
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_2
	JMP _load_title_screen_direct

@max:
	track_queue track_opening
	LDA #$00
	STA z:zFD
	STA z:zopening_subtitle_msb_hi

@loop_12:
	LDA z:zFD
	CMP #$36
	BNE @nz_2

@nz_2:
	JSR _load_opening_subtitle
	LDA #$23
	STA aobject_ppu_address
	LDA #$03
	STA aobject_ppu_address + 1
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_3
	JMP _load_title_screen_direct

@start_not_pressed_3:
	JSR _load_opening_subtitle
	LDA #$23
	STA aobject_ppu_address
	LDA #$43
	STA aobject_ppu_address + 1
	LDA #$1F
	STA z:zFE
	LDA #$0A
	STA z:zFF

@start_not_pressed_4:
	DEC z:zFF
	BNE @nz_3
	LDA #$0A
	STA z:zFF
	LDX z:zFE
	LDA intro_fade_palettes, X
	STA acurrent_background_palette + $05
	DEC z:zFE
	BMI @next_1

@nz_3:
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_4
	JMP _load_title_screen_direct

@next_1:
	LDA z:zFD
	CMP #$0E
	BNE @loop_12
	LDA #nametable_bottom_left
	STA z:zopening_nametable
	LDA #$F0
	STA z:zscreen_ycoord

@start_not_pressed_5:
	SEC
	LDA z:zscreen_ycoord_fraction
	SBC #$80
	STA z:zscreen_ycoord_fraction
	LDA z:zscreen_ycoord
	SBC #$00
	STA z:zscreen_ycoord
	BCC @next_2
	CMP #$40
	BCS @skip
	JSR _load_title_screen

@skip:
	JSR _intro_screen_movement
	JSR _draw_intro_oam
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_5
	JMP _load_title_screen_direct

@next_2:
	LDA #$F0
	STA z:zscreen_ycoord
	LDA #$00
	STA z:zscreen_ycoord_fraction
	STA z:zopening_nametable

@start_not_pressed_6:
	SEC
	LDA z:zscreen_ycoord_fraction
	SBC #$80
	STA z:zscreen_ycoord_fraction
	LDA z:zscreen_ycoord
	SBC #$00
	STA z:zscreen_ycoord
	CMP #$C0
	BEQ @next_3
	JSR _intro_screen_movement
	JSR _draw_intro_oam
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_6
	JMP _load_title_screen_direct

@next_3:
	LDX #$0F

@loop_13:
	LDA title_hidden_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_13
	LDA #$00
	STA aobject_pointer + $10
	LDA #$08
	STA aobject_frameset_lower_timer + $10
	LDA #$FF
	STA aobject_screen + $10
	LDA #$B7
	STA aobject_ycoord + $10

@start_not_pressed_7:
	SEC
	LDA z:zscreen_ycoord
	SBC #$02
	STA z:zscreen_ycoord
	JSR _intro_screen_movement
	LDA z:zscreen_ycoord
	BEQ @next_4
	JSR _draw_intro_oam
	JSR _title_megaman_frameset
	JSR _title_megaman_oam
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed_7
	JMP _load_title_screen_direct

@next_4:
	LDA #$50
	STA z:zFD
	LDA #$00
	STA aobject_ppu_address + 1
	STA z:zFE
	LDA #$10
	STA aobject_ppu_address
	LDA #$B0
	STA z:zFF

@loop_14:
	JSR _title_megaman_frameset
	JSR _draw_intro_oam
	JSR _title_megaman_oam
	JSR _load_title_tiles
	JSR _nmi_wait_0d
	CLC
	LDA aobject_ppu_address + 1
	ADC #$20
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	CLC
	LDA z:zFE
	ADC #$20
	STA z:zFE
	LDA z:zFF
	ADC #$00
	STA z:zFF
	DEC z:zFD
	BNE @loop_14
	LDA #$20
	STA z:zFD

@loop_15:
	JSR _title_megaman_frameset
	JSR _draw_intro_oam
	JSR _title_megaman_oam
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_15
	LDX #$0F

@loop_16:
	LDA title_fade_out_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_16

_title:
	track_queue track_title
	LDA #$0B
	STA z:ztitle_timer + 1
	LDA #$00
	STA z:ztitle_timer
	STA z:zdifficulty

@loop_2:
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BNE @start_pressed
	JSR _draw_intro_oam
	JSR _title_megaman_frameset
	JSR _title_megaman_oam
	LDX #$02

@loop_1:
	LDA title_select_difficulty_cursor_oam, X
	STA aoam_tiles + $80, X
	DEX
	BPL @loop_1
	LDX z:zdifficulty
	LDY #$F8
	LDA z:znmi_frame
	AND #%00001000
	BEQ @8_frames
	LDY title_select_difficulty_ycoord, X

@8_frames:
	STY aoam_y + $80
	LDA z:zjoy1_pressed_bits
	AND #select_button | up_button | down_button
	BEQ @not_pressed
	TXA
	EOR #%00000001
	STA z:zdifficulty
	track_queue track_select
	LDA #$0B
	STA z:ztitle_timer + 1
	LDA #$00
	STA z:ztitle_timer

@not_pressed:
	JSR _nmi_wait_0d
	SEC
	LDA z:ztitle_timer
	SBC #$01
	STA z:ztitle_timer
	LDA z:ztitle_timer + 1
	SBC #$00
	STA z:ztitle_timer + 1
	BCS @loop_2
	INC z:ztitle_flag

@start_pressed:
	track_queue mute_music
	LDA #$19
	STA z:zFD

@loop_3:
	LDA z:znmi_frame
	AND #%00000001
	BNE @odd
	LDA z:zFD
	CMP #$04
	BNE @not_played_sfx
	track_queue track_teleport_out

@not_played_sfx:
	DEC z:zFD
	BMI @beam_up

@odd:
	LDX z:zFD
	LDA title_megaman_beam_up_set, X
	STA aobject_pointer + $10
	JSR _draw_intro_oam
	JSR _title_megaman_oam
	JSR _nmi_wait_0d
	JMP @loop_3

@beam_up:
	LDA #$0A
	STA aobject_pointer + $10
	SEC
	LDA aobject_ycoord + $10
	SBC #$08
	STA aobject_ycoord + $10
	LDA aobject_screen + $10
	SBC #$00
	STA aobject_screen + $10
	BEQ @process
	LDA aobject_ycoord + $10
	CMP #$F0
	BCC @done

@process:
	JSR _draw_intro_oam
	JSR _title_megaman_oam
	JSR _nmi_wait_0d
	JMP @beam_up

@done:
	JSR _draw_intro_oam
	LDA #$3E
	STA z:zFD

@loop_4:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_4
	JSR _disable_nmi
	LDA #nametable_top_left
	STA z:zopening_nametable
	LDA #nametable_horizontal | fix_last_bank
	JSR _mmc1_control
	LDA z:ztitle_flag
	BEQ _password
	RTS

title_select_difficulty_cursor_oam:
	.BYTE $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $30

title_select_difficulty_ycoord:
	.BYTE $98, $A8
