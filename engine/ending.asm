_ending:
	JSR _init_miscellaneous_ram
	INC z:zscreen_id
	LDA #$04
	JSR _load_cutscene_tiles
	LDA #<.BANK (mapset_flashman_wily6_27)
	STA z:zcurrent_stage
	LDA #<mapset_flashman_wily6_27
	STA z:z08
	LDA #>mapset_flashman_wily6_27
	STA z:z09
	JSR _load_miscellaneous_screen
	LDA #<mapset_flashman_wily6_28
	STA z:z08
	LDA #>mapset_flashman_wily6_28
	STA z:z09
	JSR _load_miscellaneous_screen
	LDA #$00
	STA aobject_frameset_upper_timer
	STA aobject_frameset_lower_timer
	STA aobject_frameset_lower_timer + $01
	STA aobject_pointer
	STA aobject_pointer + $01
	STA aobject_ycoord + $01
	LDA #black
	LDX #$1F

@loop_1:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_1
	track_queue mute_music
	JSR _init_miscellaneous_sprites
	JSR _enable_nmi
	LDA #$BB
	STA z:zFD

@loop_2:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_2
	track_queue track_ending
	LDA #$04
	STA z:zFD
	LDA #$3F
	STA z:zFE

@loop_3:
	DEC z:zFE
	BNE @fading
	LDA #$3F
	STA z:zFE
	LDX #$1B
	LDY #$3B
	LDA #$0F
	JSR _password_fade_out_run
	DEC z:zFD
	BEQ @next_1

@fading:
	JSR _run_ending
	JSR _nmi_wait_0d
	JMP @loop_3

@next_1:
@not_max_2:
	LDX aobject_frameset_upper_timer
	LDA ending_lo_timer, X
	STA z:zFD
	LDA ending_hi_timer, X
	STA z:zFE
	LDA #$3F
	STA z:zFF

@loop_4:
	LDA z:zFF
	BEQ @z
	DEC z:zFF

@z:
	LDA aobject_frameset_upper_timer
	CMP #$05
	BNE @not_max_1
	LDA z:zFF
	AND #%00000001
	STA z:zscreen_id
	JMP @no_palette_change

@not_max_1:
	JSR _ending_flash_palette
	JSR _ending_palette

@no_palette_change:
	LDA aobject_frameset_upper_timer
	BNE @nz
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	LDX #$1F
	LDY #$3F
	LDA #$FF
	JSR _password_fade_out_run

@nz:
@8_frames:
	JSR _run_ending
	JSR _nmi_wait_0d
	SEC
	LDA z:zFD
	SBC #$01
	STA z:zFD
	LDA z:zFE
	SBC #$00
	STA z:zFE
	BCS @loop_4
	INC aobject_frameset_upper_timer
	LDA aobject_frameset_upper_timer
	CMP #$06
	BNE @not_max_2
	JSR _disable_nmi
	JSR _load_stage_select
	LDA #$05
	JSR _load_cutscene_tiles
	LDA #$20
	STA PPU_ADDRESS
	LDA #$00
	STA PPU_ADDRESS
	LDY #$04

@loop_6:
	LDX #$00

@loop_5:
	STA PPU_DATA
	INX
	BNE @loop_5
	DEY
	BNE @loop_6
	STA aobject_flag
	LDX #$1F
	JSR _flash_palettes
	INC z:zscreen_id
	JSR _init_miscellaneous_sprites
	LDA #pale_gray
	STA acurrent_background_palette + $13
	track_queue track_title
	JSR _enable_nmi
	JSR _init_miscellaneous_xcoord
	LDA #$25
	STA aobject_ppu_address
	LDA #$AC
	STA aobject_ppu_address + 1
	LDA #$A2
	STA z:zFD
	LDA #$00
	STA z:zFE
	STA aobject_frameset_upper_timer

@loop_7:
	LDA z:zFD
	AND #%00000011
	BNE @4_frames
	LDX z:zFE
	CPX #$05
	BEQ @max
	LDA staff_strings, X
	STA aobject_ppu_data
	INC z:zobject_tiles_update_size
	INC z:zFE
	INC aobject_ppu_address + 1

@4_frames:
@max:
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_7
	LDA #$A0
	STA aobject_ppu_address + 1
	LDA #$20
	JSR _init_credit_strings

@loop_9:
	LDA #$49
	STA z:zFD
	LDA #$01
	STA z:zFE
	LDA #$00
	STA aobject_frameset_lower_timer
	LDA #$25
	STA aobject_ppu_address
	LDA #$83
	STA aobject_ppu_address + 1

@loop_8:
	JSR _home_staff_roll
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	SEC
	LDA z:zFD
	SBC #$01
	STA z:zFD
	LDA z:zFE
	SBC #$00
	STA z:zFE
	BNE @loop_8
	LDA z:zFD
	BEQ @next_2
	CMP #$D0
	BNE @loop_8
	LDA aobject_frameset_upper_timer
	CMP #$0E
	BCC @loop_8
	track_queue track_staff_roll
	JMP @loop_8

@next_2:
	LDA #$25
	STA aobject_ppu_address
	LDA #$80
	STA aobject_ppu_address + 1
	LDA #$20
	JSR _init_credit_strings
	LDA #$25
	STA aobject_ppu_address
	LDA #$C0
	STA aobject_ppu_address + 1
	LDA #$20
	JSR _init_credit_strings
	INC aobject_frameset_upper_timer
	LDA aobject_frameset_upper_timer
	CMP #$10
	BNE @loop_9
	LDA #black
	STA acurrent_background_palette + $02
	STA acurrent_background_palette + $03
	LDA #$00
	STA aobject_frameset_upper_timer
	STA z:zscreen_id
	JSR _home_credit_init

@loop_10:
	JSR _home_credit
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	LDA aobject_frameset_upper_timer
	CMP #$3C
	BNE @loop_10
	LDA z:zscreen_ycoord
	BNE @loop_10

@not_pressed:
	JSR _load_boss_show_star_or_copipi
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @not_pressed
	JSR _disable_nmi
	RTS
