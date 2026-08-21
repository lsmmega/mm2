_megaman_death:
	track_queue track_death
	track_queue mute_music
	LDA z:zmegaman_status
	BNE @not_hit
	STA z:ztimer

@not_explosion:
	AND #%00000001
	BNE @not_spinning
	LDA z:ztimer
	AND #%00000111
	TAX
	LDY #$01

@loop_1:
	LDA #$25
	STA aobject_pointer + $0E, Y
	LDA #objects_exist
	STA aobject_flag + $0E, Y
	CLC
	LDA aobject_xcoord
	ADC @spin_xcoord_offset, X
	STA aobject_xcoord + $0E, Y
	LDA aobject_screen
	ADC @spin_screen_offset, X
	STA aobject_screen + $0E, Y
	LDA aobject_ycoord
	ADC @spin_ycoord_offset, X
	STA aobject_ycoord + $0E, Y
	LDA #$01
	STA aobject_frameset_upper_timer + $0E, Y
	LDA #$00
	STA aobject_xcoord_speed_fraction + $0E, Y
	STA aobject_xcoord_speed + $0E, Y
	STA aobject_ycoord_speed_fraction + $0E, Y
	STA aobject_ycoord_speed + $0E, Y
	STA aobject_frameset_lower_timer + $0E, Y
	INX
	DEY
	BPL @loop_1

@not_spinning:
	JSR _run_megaman_death
	INC z:ztimer
	LDA z:ztimer
	CMP #$10
	BCC @not_explosion
	LSR aobject_flag + $0E
	LSR aobject_flag + $0F
	JSR _create_explosion
	LDA #$A0
	BNE @continue

@not_hit:
	LDA #$E0

@continue:
	STA z:ztimer

@nz:
	LSR aobject_flag
	JSR _run_megaman_death
	DEC z:ztimer
	BNE @nz
	LDA #background_table_right
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA PPU_MASK
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDX #$00
	LDA aobject_screen

@loop_2:
	CMP stage_checkpoint_mapset_id + 1, X
	BCC @at_begin
	INX
	CPX #$05
	BNE @loop_2

@at_begin:
	STX z:zcheckpoint_pointer
	LDX #$FF
	TXS
	bankswitch $0E
	DEC z:z1up
	BNE @continue_stage_regular
	LDA #$00
	STA z:ze_tank
	farjsr _game_over_jmp
	bankswitch $0E
	LDA z:zFD
	BNE @back_to_stage_select
	JMP _game_over_to_continue_stage

@back_to_stage_select:
	JMP _game_over_to_stage_select

@continue_stage_regular:
	JMP _continue_stage_regular

@spin_ycoord_offset:
	.BYTE $F8, $08, $FB, $05, $00, $00, $05, $FB

@spin_xcoord_offset:
	.BYTE $00, $00, $FB, $05, $FB, $08, $FB, $05

@spin_screen_offset:
	.BYTE $00, $00, $FF, $00, $FF, $00, $FF, $00
