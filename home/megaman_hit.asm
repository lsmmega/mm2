_megaman_hit:
	track_queue track_megaman_hit
	LDA #$00
	STA z:zmegaman_hit_type
	STA z:ztimer
	LDA #$02
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	LDA #$01
	STA aobject_frameset_upper_timer
	LDA #$6F
	STA z:zmegaman_invincibility_time
	LDA #$01
	STA aobject_ycoord_speed
	LDA #$40
	STA aobject_ycoord_speed_fraction
	LDA #$00
	STA aobject_xcoord_speed
	LDA #$90
	STA aobject_xcoord_speed_fraction
	LSR aobject_flag + $0F
	LDA #$00
	STA z:ztime_stopper_flag
	LDX #$0E

@not_boss:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @not_boss
	RTS

@not_exist:
	LDA #objects_exist
	STA aobject_flag, X
	LDA #$24
	STA aobject_pointer, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_ycoord
	STA aobject_ycoord, X
	LDA #$08
	STA aobject_ycoord_speed_fraction, X
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	RTS

_check_megaman_hit_status:
	LDX z:zmegaman_status
	CLC
	LDA @megaman_hit_object_table, X
	ADC z:zmegaman_hit_type
	CMP aobject_pointer
	BEQ @same
	LDX #$00
	STX aobject_frameset_upper_timer
	STX aobject_frameset_lower_timer

@same:
	STA aobject_pointer
	LDA z:ztimer
	BEQ @z
	DEC z:ztimer
	RTS

@z:
	LDA #$00
	STA z:zmegaman_hit_type
	LDX z:zmegaman_status
	LDA @megaman_hit_object_table, X
	STA aobject_pointer
	RTS

@megaman_hit_object_table:
	.BYTE $1A, $19, $18, $00, $04, $08, $0C, $10
	.BYTE $14, $1B, $1F, $26
