_check_shoot_on_ladder:
	LDA z:zjoy1_pressed
	AND #b_button
	BNE @fire
	LDA #$00
	STA z:zquick_boomerang_autofire_timer
	BEQ @continue

@fire:
	JSR _use_weapons

@continue:
	LDA z:zladder_flag
	BNE @on_ladder

@skip:
	RTS

@on_ladder:
	LDA z:zjoy1_pressed
	AND #up_button | down_button
	BEQ @skip
	ORA z:zladder_flag
	CMP #$11
	BEQ @skip
	CMP #$2E
	BEQ @skip
	LDA aobject_xcoord
	STA z:zobject_in_process_coord
	AND #%11110000
	ORA #$08
	SEC
	STA aobject_xcoord
	SBC z:zobject_in_process_coord
	BCC @on_right
	STA z:z00
	JSR _draw_right_mapset
	JMP @on_left

@on_right:
	EOR #%11111111
	CLC
	ADC #$01
	STA z:z00
	JSR _draw_left_mapset

@on_left:
	LDA aobject_flag
	EOR #objects_right
	STA aobject_flag
	JSR _check_megaman_hit_status
	PLA
	PLA
	JMP _run_megaman_climb_ladder

_turn_megaman:
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @not_pressed
	LDA aobject_flag
	AND #~objects_right
	STA aobject_flag
	LDA z:zjoy1_pressed
	AND #objects_right
	EOR #objects_right
	ORA aobject_flag
	STA aobject_flag

@not_pressed:
	RTS

_megaman_status_parameter:
	LDX z:zmegaman_status
	LDA megaman_status_xcoord_speed_table, X
	STA aobject_xcoord_speed
	LDA megaman_status_xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction
	LDA z:zmegaman_hit_type
	CMP #$03
	BNE @not_heavily
	LDA z:zmegaman_status
	CMP #$06
	BEQ @not_heavily
	LDA #$00
	STA aobject_xcoord_speed_fraction
	STA aobject_xcoord_speed

@not_heavily:
	LDA z:zslip_wind_flags
	BMI @ice
	LDA z:zslip_speed_fraction
	ORA z:zslip_speed
	BEQ _check_conveyor_ice
	BNE @regular

@ice:
	LDA aobject_flag
	AND #objects_right
	CMP z:ztoward
	BEQ @same_toward

@regular:
	LDX #$00
	LDA z:zmegaman_status
	CMP #$06
	BEQ @vertical_move
	INX
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @vertical_move
	INX

@vertical_move:
	SEC
	LDA z:zslip_speed_fraction
	SBC slip_speed_fraction_table, X
	STA z:zslip_speed_fraction
	TAX
	LDA z:zslip_speed
	SBC #$00
	STA z:zslip_speed
	BMI @init
	BNE @not_init
	CPX #$80
	BCS @not_init

@init:
	LDA #$00
	STA z:zslip_speed_fraction
	STA z:zslip_speed
	BEQ @init_done

@not_init:
	LDA z:zslip_speed_fraction
	STA aobject_xcoord_speed_fraction
	LDA z:zslip_speed
	STA aobject_xcoord_speed
	JMP _check_conveyor_ice

@same_toward:
	SEC
	LDA aobject_xcoord_speed_fraction
	SBC z:zslip_speed_fraction
	LDA aobject_xcoord_speed
	SBC z:zslip_speed
	BCC @regular
	LDA aobject_xcoord_speed_fraction
	STA z:zslip_speed_fraction
	LDA aobject_xcoord_speed
	STA z:zslip_speed

@init_done:
	LDA aobject_flag
	AND #objects_right
	STA z:ztoward

_check_conveyor_ice:
	LDA z:zslip_wind_flags
	BPL @check_conveyor
	RTS

@check_conveyor:
	AND #%00001111
	BEQ @not_conveyor
	LDA aobject_flag
	AND #objects_right
	CMP z:zwind_toward
	BEQ @same_toward
	SEC
	LDA aobject_xcoord_speed_fraction
	SBC z:zwind_conveyor_speed_fraction
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	SBC z:zwind_conveyor_speed
	STA aobject_xcoord_speed
	BCC @not_reverse
	LDA aobject_flag
	AND #objects_right
	STA z:ztoward
	RTS

@not_reverse:
	LDA aobject_xcoord_speed_fraction
	EOR #%11111111
	ADC #$01
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	EOR #%11111111
	ADC #$00
	STA aobject_xcoord_speed
	LDA z:zwind_toward
	STA z:ztoward
	RTS

@same_toward:
	CLC
	LDA aobject_xcoord_speed_fraction
	ADC z:zwind_conveyor_speed_fraction
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	ADC z:zwind_conveyor_speed
	STA aobject_xcoord_speed
	LDA z:zwind_toward
	STA z:ztoward
	RTS

@not_conveyor:
	LDA z:zslip_speed
	ORA z:zslip_speed_fraction
	BEQ @not_set
	RTS

@not_set:
	LDA aobject_flag
	AND #objects_right
	STA z:ztoward
	RTS

slip_speed_fraction_table:
	.BYTE $80, $02, $04

megaman_status_xcoord_speed_table:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $01
	.BYTE $01
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	
megaman_status_xcoord_speed_fraction_table:
	.BYTE $00
	.BYTE $00
	.BYTE $90
	.BYTE $00
	.BYTE $20
	.BYTE $60
	.BYTE $50
	.BYTE $80
	.BYTE $00
	.BYTE $00
	.BYTE $00
