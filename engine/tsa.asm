_tsa_ycoord:
	LDA aobject_xcoord
	STA z:z08
	LDA aobject_screen
	STA z:z09
	LDA #$02
	STA z:z01

@loop_1:
	LDX z:z01
	CLC
	LDA aobject_ycoord
	ADC check_horizontal_collision_ycoord_offset, X
	STA z:z0A
	LDA z:zout_of_screen
	ADC check_horizontal_collision_screen_offset, X
	STA z:z0B
	JSR _tsa_collision
	LDX z:z01
	LDA z:z00
	STA z:ztsa_blockset_pointers, X
	DEC z:z01
	BPL @loop_1
	LDX #$00
	LDA z:zboss_ai_pointer
	BEQ @no_bosses
	LDA z:zcurrent_boss
	CMP #$03
	BEQ @skip_jump_into_water_anim

@no_bosses:
	LDA z:ztsa_blockset_pointers + 1
	CMP #water
	BNE @not_water
	LDA z:zwater
	BNE @skip_jump_into_water_anim
	LDA aobject_ycoord_speed
	BPL @skip_jump_into_water_anim
	track_queue track_jump_into_water
	LDA aobject_flag + $0E
	BMI @skip_jump_into_water_anim
	LDY #$0E
	LDX #$0E
	JSR _create_weapon
	SEC
	LDA aobject_ycoord + $0E
	SBC #$04
	AND #%11110000
	STA aobject_ycoord + $0E

@skip_jump_into_water_anim:
	INC z:zscroll_down_process
	LDA z:zscroll_down_process
	CMP #$60
	BCC @hidden
	BEQ @set_bubble
	CMP #$80
	BCC @hidden
	LDA #$00
	STA z:zscroll_down_process

@set_bubble:
	LDA z:zout_of_screen
	BNE @hidden
	STX z:zsprites_pointer
	LDA #$0E
	JSR _enemies_to_items
	BCS @hidden
	LDA aobject_flag + $10, Y
	AND #objects_block | objects_invisible | objects_right | objects_exist
	STA aobject_flag + $10, Y

@hidden:
	LDX #$00
	INX

@not_water:
	LDA tsa_ycoord_speed_accelerate_fraction_table, X
	STA z:zobject_ycoord_speed_accelerate_fraction
	LDA tsa_regular_water_table, X
	STA z:zwater
	LDA tsa_regular_water_jump_speed_table, X
	STA z:zjump_speed
	LDA tsa_regular_water_jump_speed_fraction_table, X
	STA z:zjump_speed_fraction
	LDA #$00
	STA z:zladder_flag
	LDA #$02
	STA z:z01
	LDX #$02

@loop_2:
	LDA z:ztsa_blockset_pointers, X
	CMP #ladder
	BNE @not_ladder_1
	LDA z:z01
	ORA z:zladder_flag
	STA z:zladder_flag

@not_ladder_1:
	ASL z:z01
	DEX
	BPL @loop_2
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	LDA aobject_ycoord
	SBC aobject_ycoord_speed
	LDX aobject_ycoord_speed
	BMI @not_jump_1
	SEC
	SBC #$0C
	STA z:z0A
	LDA z:zout_of_screen
	SBC #$00
	JMP @jump

@not_jump_1:
	CLC
	ADC #$0C
	STA z:z0A
	LDA z:zout_of_screen
	ADC #$00

@jump:
	STA z:z0B
	JSR _tsa_collision
	LDA z:z00
	CMP #ladder
	BNE @not_ladder_2
	LDA aobject_ycoord_speed
	BMI @not_jump_2
	LDA #$10
	BNE @set_ladder

@not_jump_2:
	LDA #$01

@set_ladder:
	ORA z:zladder_flag
	STA z:zladder_flag

@not_ladder_2:
	RTS
