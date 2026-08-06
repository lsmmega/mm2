_megaman_beam_down:
	LDA #objects_right | objects_exist
	STA aobject_flag
	LDA #$80
	STA aobject_xcoord
	LDA #$14
	STA aobject_ycoord
	LDA #$1A
	STA aobject_pointer

@loop:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA #$00
	STA aobject_frameset_lower_timer
	STA aobject_frameset_upper_timer
	CLC
	LDA aobject_ycoord
	ADC #$10
	STA aobject_ycoord
	LDX z:zcheckpoint_pointer
	CMP stage_checkpoint_ycoord, X
	BEQ @done
	JSR _sprites
	JSR _nmi_wait_0e
	JMP @loop

@done:
	track_queue track_teleport_in
	LDA #$00
	STA z:zmegaman_status
	STA z:zslip_speed_fraction
	STA z:zslip_speed
	LDA #objects_right
	STA z:ztoward
	bankswitch $0E
	RTS
