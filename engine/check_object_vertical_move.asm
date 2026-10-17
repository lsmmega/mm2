_check_object_vertical_move:
	LDA aobject_ycoord
	STA z:zobject_in_process_coord
	LDA aobject_ycoord_fraction
	STA z:zobject_in_process_coord_fraction
	LDA #$00
	STA z:z00
	LDA aobject_ycoord_speed
	BPL @up
	DEC z:z00

@up:
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	SBC aobject_ycoord_speed
	STA aobject_ycoord
	TAX
	LDA z:zout_of_screen
	SBC z:z00
	STA z:zout_of_screen
	CPX #$04
	BCS @on_screen_1
	LDA z:zmegaman_status
	CMP #$09
	BEQ @climb_ladder
	CMP #$0A
	BNE @on_screen_2

@climb_ladder:
	LDA #$01
	STA z:zscroll_direction
	BNE @continue

@on_screen_1:
	CPX #$E8
	BCC @on_screen_2
	LDA z:zout_of_screen
	BMI @on_screen_2
	LDA #$03
	STA z:zscroll_direction

@on_screen_2:
@continue:
	LDA aobject_ycoord_speed
	BMI @down
	SEC
	LDA aobject_ycoord
	SBC #$0C
	STA z:z0A
	LDA z:zout_of_screen
	SBC #$00
	STA z:z0B
	JSR _check_vertical_collision
	LDA z:z00
	BEQ @air
	LDA #$00
	STA aobject_ycoord_fraction
	LDA z:z0A
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_ycoord
	STA aobject_ycoord

@mainloop:
	LDA #$00
	STA aobject_ycoord_speed_fraction
	STA aobject_ycoord_speed

@air:
	SEC
	LDA aobject_ycoord_speed_fraction
	SBC z:zobject_ycoord_speed_accelerate_fraction
	STA aobject_ycoord_speed_fraction
	LDA aobject_ycoord_speed
	SBC z:zobject_ycoord_speed_accelerate
	STA aobject_ycoord_speed
	BPL @skip
	CMP #$F4
	BCS @skip
	LDA #$00
	STA aobject_ycoord_speed_fraction
	LDA #$F4
	STA aobject_ycoord_speed

@skip:
	RTS

@down:
	CLC
	LDA aobject_ycoord
	ADC #$0C
	STA z:z0A
	LDA z:zout_of_screen
	ADC #$00
	STA z:z0B
	JSR _check_vertical_collision
	JSR _check_stand_object
	LDA z:z00
	BNE @not_air
	BCS @stand_item
	BCC @air

@not_air:
	LDA #$00
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	PHA
	LDA z:z0A
	AND #%00001111
	STA aobject_ycoord
	PLA
	SEC
	SBC aobject_ycoord
	STA aobject_ycoord
	LDA z:zout_of_screen
	SBC #$00
	STA z:zout_of_screen
	JMP @mainloop

@stand_item:
	LDA #$01
	STA z:z00
	RTS

_check_vertical_collision:
	LDA #$01
	STA z:z01

@loop_1:
	LDX z:z01
	CLC
	LDA aobject_xcoord
	ADC check_vertical_collision_xcoord_offset, X
	STA z:z08
	LDA aobject_screen
	ADC check_vertical_collision_screen_offset, X
	STA z:z09
	JSR _appearing_block_collision
	LDX z:z01
	LDA z:z00
	STA z:ztsa_blockset_pointers, X
	DEC z:z01
	BPL @loop_1
	LDA #$00
	STA z:zslip_wind_flags
	LDX #$01

@loop_2:
	LDA z:ztsa_blockset_pointers, X
	CMP #$08
	BCS @is_door
	CMP #conveyor_right
	BCC @check_spike
	SBC #$05
	TAY
	LDA tsa_vertical_blockset_flags_table, Y
	STA z:zslip_wind_flags
	BMI @ice
	TAY
	LDA a:zpalette_animation_timer, Y
	STA z:zwind_toward
	LDA #$01
	STA z:zwind_conveyor_speed
	LDA #$00
	STA z:zwind_conveyor_speed_fraction

@ice:
	LDA #$01
	BNE @continue

@is_door:
@check_spike:
	CMP #spike
	BNE @skip_1
	LDY z:zmegaman_invincibility_time
	BNE @skip_1
	LDA #$00
	STA z:zmegaman_status
	JMP _megaman_death

@skip_1:
	DEX
	BPL @loop_2
	LDA z:ztsa_blockset_pointers
	ORA z:ztsa_blockset_pointers + 1
	AND #%00000001

@continue:
	STA z:z00
	LDA z:zladder_flag
	BEQ @skip_2
	CMP #$01
	BEQ @ladder_top
	LDX z:zout_of_screen
	BPL @skip_2
	LDA z:zjoy1_pressed
	AND #up_button | down_button
	BEQ @skip_2
	LDX #$01
	STX z:zscroll_direction

@ladder_top:
	STA z:z00

@skip_2:
	RTS

check_vertical_collision_xcoord_offset:
	.BYTE +7, -7

check_vertical_collision_screen_offset:
	.BYTE +0, -1

tsa_vertical_blockset_flags_table:
	.BYTE $01, $02, $80
