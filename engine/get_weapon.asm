_get_weapon:
	LDA #$03
	JSR _load_cutscene_tiles
	LDA #$06
	JSR _load_cutscene_tiles
	LDA z:zcurrent_stage
	PHA
	LDA #<.BANK (mapset_flashman_wily6_29)
	STA z:zcurrent_stage
	LDA #<mapset_flashman_wily6_29
	STA z:z08
	LDA #>mapset_flashman_wily6_29
	STA z:z09
	JSR _load_miscellaneous_screen
	LDA #<mapset_flashman_wily6_2a
	STA z:z08
	LDA #>mapset_flashman_wily6_2a
	STA z:z09
	JSR _load_miscellaneous_screen
	PLA
	STA z:zcurrent_stage
	track_queue track_get_weapon
	JSR _init_miscellaneous_ram
	LDA #$01
	JSR _init_password_screen
	LDX #black
	TXA

@loop_1:
	STA acurrent_background_palette + $10, X
	DEX
	BPL @loop_1
	LDA #$06
	STA aobject_pointer
	JSR _home_ending_oam_with_object
	LDA #$05
	STA z:zFD

@loop_2:
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames_1
	LDX #$1B
	LDY #$3B
	LDA #$0F
	JSR _password_fade_out_run
	DEC z:zFD
	BEQ @next

@8_frames_1:
	JSR _nmi_wait_0d
	JMP @loop_2

@next:
	JSR _get_weapon_8_frames
	JSR _get_weapon_one_line
	JSR _get_weapon_8_frames
	INC aobject_ppu_address + 1
	LDX z:zcurrent_stage
	LDA get_weapon_abbr_strings, X
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	JSR _get_weapon_8_frames
	JSR _get_weapon_one_line
	INC aobject_ppu_address + 1
	INC aobject_ppu_address + 1
	JSR _nmi_wait_0d
	LDA #$08
	JSR _get_weapon_strings
	LDA #$09
	JSR _get_weapon_strings
	LDA z:zcurrent_stage
	JSR _get_weapon_strings
	LDA z:zcurrent_stage
	CMP #stage_quickman
	BNE @not_quick
	LDA #$13
	JSR _get_weapon_strings

@not_quick:
	LDA #$9C
	STA z:zFD

@loop_3:
	LDX #$00
	LDA z:zFD
	AND #%00000001
	BEQ @even
	LDX z:zcurrent_stage
	INX
	TXA
	ASL
	TAX

@even:
	LDA get_weapon_palettes, X
	STA acurrent_background_palette + $12
	STA acurrent_background_palette + $1A
	LDA get_weapon_palettes + 1, X
	STA acurrent_background_palette + $13
	STA acurrent_background_palette + $1B
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_3
	LDX z:zcurrent_stage
	LDA got_item_flag, X
	BEQ @no_item
	JSR _get_weapon_item

@no_item:
	LDX #$08
	JSR _load_password_game_over_strings
	JSR _nmi_wait_0d
	LDX #$09
	JSR _load_password_game_over_strings
	JSR _nmi_wait_0d

@loopback:
	LDX #$03

@loop_4:
	LDA get_weapon_cursor_oam, X
	STA aoam_y + $FC, X
	DEX
	BPL @loop_4
	LDA #pale_gray
	STA acurrent_background_palette + $1E
	LDA #$00
	STA z:zFD

@loop_5:
	LDX z:zFD
	LDA get_weapon_cursor_ycoord, X
	STA aoam_y + $FC
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames_2
	LDA #$F8
	STA aoam_y + $FC

@8_frames_2:
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button | up_button | down_button
	BEQ @not_pressed
	AND #start_button
	BNE @start_pressed
	track_queue track_select
	LDA z:zFD
	EOR #%00000001
	STA z:zFD

@not_pressed:
	JSR _nmi_wait_0d
	JMP @loop_5

@start_pressed:
	LDA z:zFD
	BEQ @password
	JMP @quit

@password:
	LDX #$1F

@loop_6:
	LDA acurrent_background_palette, X
	STA amenu_palette_temp, X
	DEX
	BPL @loop_6
	JSR _show_password
	JSR _home_ending_oam_with_object
	LDA #$05
	STA z:zFD

@loop_8:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	LDX #$1F

@loop_7:
	LDA acurrent_background_palette, X
	CMP #black
	BNE @fading
	LDA amenu_palette_temp, X
	AND #%00001111
	STA acurrent_background_palette, X
	JMP @continue

@fading:
	CLC
	ADC #$10
	CMP amenu_palette_temp, X
	BEQ @save
	BCS @continue

@save:
	STA acurrent_background_palette, X

@continue:
	DEX
	BPL @loop_7
	DEC z:zFD
	BEQ @fade_back

@4_frames:
	JSR _nmi_wait_0d
	JMP @loop_8

@fade_back:
	JMP @loopback

@quit:
	JSR _disable_nmi
	RTS
