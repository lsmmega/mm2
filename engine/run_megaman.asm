_run_megaman:
	LDA z:ztime_stopper_flag
	AND #megaman_frozen
	BEQ @not_frozen
	RTS

@not_frozen:
	LDA #$00
	STA z:zscroll_direction
	LDX z:zmegaman_status
	LDA run_megaman_lo_jumptable, X
	STA z:z08
	LDA run_megaman_hi_jumptable, X
	STA z:z09
	JMP (z08)

_run_megaman_teleport_out:
	LDA aobject_frameset_upper_timer
	CMP #$04
	BNE @nz
	LDA #$C0
	STA aobject_ycoord_speed_fraction
	LDA #$FF
	STA aobject_ycoord_speed
	LDA #$00
	STA z:ztime_stopper_flag
	LDA #$03
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	LDA aobject_xcoord
	STA z:z08
	LDA aobject_screen
	STA z:z09
	LDA aobject_ycoord
	STA z:z0A
	LDA #$00
	STA z:z0B
	JSR _tsa_collision
	LDA z:z00
	CMP #$04
	BNE @not_water
	LDA #$04
	STA z:zwater

@nz:
@not_water:
	RTS

_run_megaman_nothing:
	RTS

_run_megaman_megaman_hit:
	LDA aobject_flag
	AND #objects_right
	EOR #objects_right
	STA z:ztoward
	JSR _check_object_horizontal_move
	JSR _check_object_vertical_move
	LDA aobject_frameset_upper_timer
	BEQ @knock_back_done
	JSR _check_megaman_hit_status
	RTS

@knock_back_done:
	LDY #$06
	LDA z:z00
	BEQ @not_landing
	LDY #$03

@not_landing:
	STY z:zmegaman_status
	RTS

_run_megaman_standing:
	JSR _check_shoot_on_ladder
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @not_pressed
	LDA #$04
	STA z:zmegaman_status
	JSR _turn_megaman

@not_pressed:
	JSR _megaman_status_parameter
	JSR _check_object_horizontal_move
	JSR _check_object_vertical_move
	LDA z:z00
	BNE _run_megaman_landing_common_1
	LDA #$06
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	RTS

_run_megaman_landing_common_1:
	LDA z:zjoy1_pressed_bits
	AND #a_button
	BEQ @not_pressed
	LDA z:zjump_speed_fraction
	STA aobject_ycoord_speed_fraction
	LDA z:zjump_speed
	STA aobject_ycoord_speed
	LDA #$06
	STA z:zmegaman_status

@not_pressed:
	JSR _check_megaman_hit_status
	RTS

_run_megaman_walk_slow:
	JSR _check_shoot_on_ladder
	JSR _turn_megaman
	JSR _megaman_status_parameter
	JSR _check_object_horizontal_move
	JSR _check_object_vertical_move
	LDA z:z00
	BEQ _run_megaman_not_landing_common
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BNE @pressed
	LDA #$03
	STA z:zmegaman_status
	BNE @continue

@pressed:
	LDA aobject_frameset_upper_timer
	CMP #$01
	BNE @nz
	LDA #$05
	STA z:zmegaman_status

@continue:
@nz:
	JMP _run_megaman_landing_common_1

_run_megaman_running:
	JSR _check_shoot_on_ladder
	JSR _turn_megaman
	JSR _megaman_status_parameter
	JSR _check_object_horizontal_move
	JSR _check_object_vertical_move
	LDA z:z00
	BNE _run_megaman_landing_common_2

_run_megaman_not_landing_common:
	LDA #$06
	STA z:zmegaman_status
	JSR _check_megaman_hit_status
	RTS

_run_megaman_landing_common_2:
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BNE @horizontal_running
	LDA #$07
	STA z:zmegaman_status

@horizontal_running:
	JMP _run_megaman_landing_common_1

_run_megaman_jumping:
	JSR _check_shoot_on_ladder
	LDA #$00
	STA aobject_xcoord_speed_fraction
	STA aobject_xcoord_speed
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BNE @horizontal_jumping
	LDA z:zslip_speed_fraction
	ORA z:zslip_speed
	BNE @slip_set
	LDA z:zslip_wind_flags
	AND #%00001111
	BEQ @continue
	JSR _check_conveyor_ice
	JMP @continue

@slip_set:
	SEC
	LDA z:zslip_speed_fraction
	SBC #$80
	STA z:zslip_speed_fraction
	TAX
	LDA z:zslip_speed
	SBC #$00
	STA z:zslip_speed
	BMI @init_slip
	BNE @continue
	CPX #$80
	BCS @continue

@init_slip:
	LDA #$00
	STA z:zslip_speed_fraction
	STA z:zslip_speed
	BEQ @continue

@horizontal_jumping:
	JSR _turn_megaman
	JSR _megaman_status_parameter

@continue:
	JSR _check_object_horizontal_move
	LDA aobject_ycoord_speed
	BMI @jump_down
	JSR _check_object_vertical_move
	LDA z:z00
	BNE @landing
	LDA z:zjoy1_pressed
	AND #a_button
	BNE @skip
	LDA aobject_ycoord_speed
	BMI @skip
	CMP #$01
	BCC @skip
	BEQ @skip
	LDA #$01
	STA aobject_ycoord_speed
	LDA #$00
	STA aobject_ycoord_speed_fraction

@landing:
@skip:
	RTS

@jump_down:
	JSR _check_object_vertical_move
	LDA z:z00
	BEQ @not_landing
	track_queue track_landing
	LDX #$05
	LDA z:zjoy1_pressed_frame
	AND #left_button | right_button
	BNE @horizontal_jump_down
	LDX #$08

@horizontal_jump_down:
	STX z:zmegaman_status
	JMP _run_megaman_landing_common_1

@not_landing:
	JSR _check_megaman_hit_status
	RTS

_run_megaman_landing:
	JSR _check_shoot_on_ladder
	JSR _turn_megaman
	JSR _megaman_status_parameter
	JSR _check_object_horizontal_move
	JSR _check_object_vertical_move
	LDA z:z00
	BNE @landing
	JMP _run_megaman_not_landing_common

@landing:
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BNE @horizontal_landing
	LDA aobject_frameset_upper_timer
	CMP #$02
	BNE @nz
	LDA #$03
	STA z:zmegaman_status
	BNE @continue

@horizontal_landing:
	LDA #$04
	STA z:zmegaman_status

@nz:
@continue:
	JMP _run_megaman_landing_common_1

_run_megaman_climb_ladder:
	LDA #$09
	STA z:zmegaman_status
	LDA z:zjoy1_pressed
	AND #b_button
	BEQ @not_shoot_1
	JMP @shoot

@not_shoot_1:
	LDA #$00
	STA z:zquick_boomerang_autofire_timer

@ladder_mainloop:
	LDA z:zjoy1_pressed
	AND #a_button | up_button | down_button
	BNE @pressed
	JMP @init_anim

@pressed:
	AND #up_button | down_button
	BEQ @jump_set
	AND #up_button
	BEQ @down_pressed
	LDY #$00
	LDX #$C0
	LDA z:zladder_flag
	AND #%00001100
	BNE @not_ladder_top_1
	LDA aobject_ycoord
	AND #%11110000
	SEC
	SBC #$0C
	STA aobject_ycoord
	LDA z:zout_of_screen
	SBC #$00
	STA z:zout_of_screen
	LDX #$03
	JMP @continue_2

@not_ladder_top_1:
	AND #%00001000
	BNE @not_upper_ladder
	LDA #$0A
	STA z:zmegaman_status
	BNE @continue_1

@down_pressed:
	LDA z:zladder_flag
	CMP #$01
	BNE @not_up_to_down
	LDA aobject_ycoord
	CLC
	ADC #$0C
	STA aobject_ycoord
	LDA z:zout_of_screen
	ADC #$00
	STA z:zout_of_screen

@not_up_to_down:
	LDY #$FF
	LDX #$40
	LDA z:zladder_flag
	AND #%00001100
	BNE @not_ladder_top_2
	LDA #$0A
	STA z:zmegaman_status

@not_upper_ladder:
@continue_1:
@not_ladder_top_2:
	LDA z:zmegaman_hit_type
	BEQ @not_shoot_2
	LDY #$00
	LDX #$00

@not_shoot_2:
	STY aobject_ycoord_speed
	STX aobject_ycoord_speed_fraction
	JSR _tsa_ycoord
	LDA z:zladder_flag
	BEQ @jump_set
	JSR _check_object_vertical_move
	LDA z:z00
	BEQ @not_landing
	LDX #$03
	BNE @continue_2

@jump_set:
	LDX #$06

@continue_2:
	STX z:zmegaman_status
	LDA #$00
	STA z:zladder_flag
	LDA #$C0
	STA aobject_ycoord_speed_fraction
	LDA #$FF
	STA aobject_ycoord_speed
	BNE @continue_3

@init_anim:
	LDA #$00
	STA aobject_frameset_lower_timer

@not_landing:
@continue_3:
	JSR _check_megaman_hit_status
	RTS

@shoot:
	JSR _turn_megaman
	JSR _use_weapons
	BCC @not_exist
	JMP @ladder_mainloop

@not_exist:
	JMP @init_anim

_run_megaman_play_mm_anim:
	LDA aobject_frameset_upper_timer
	CMP #$03
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer

@nz:
	RTS

run_megaman_lo_jumptable:
	.LOBYTES _run_megaman_teleport_out
	.LOBYTES _run_megaman_nothing
	.LOBYTES _run_megaman_megaman_hit
	.LOBYTES _run_megaman_standing
	.LOBYTES _run_megaman_walk_slow
	.LOBYTES _run_megaman_running
	.LOBYTES _run_megaman_jumping
	.LOBYTES _run_megaman_landing
	.LOBYTES _run_megaman_landing
	.LOBYTES _run_megaman_climb_ladder
	.LOBYTES _run_megaman_climb_ladder
	.LOBYTES _run_megaman_play_mm_anim

run_megaman_hi_jumptable:
	.HIBYTES _run_megaman_teleport_out
	.HIBYTES _run_megaman_nothing
	.HIBYTES _run_megaman_megaman_hit
	.HIBYTES _run_megaman_standing
	.HIBYTES _run_megaman_walk_slow
	.HIBYTES _run_megaman_running
	.HIBYTES _run_megaman_jumping
	.HIBYTES _run_megaman_landing
	.HIBYTES _run_megaman_landing
	.HIBYTES _run_megaman_climb_ladder
	.HIBYTES _run_megaman_climb_ladder
	.HIBYTES _run_megaman_play_mm_anim
