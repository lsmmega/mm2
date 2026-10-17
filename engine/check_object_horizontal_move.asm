_check_object_horizontal_move:
	LDX aobject_screen
	STX z:zobject_in_process_screen
	LDY aobject_xcoord
	STY z:zobject_in_process_coord
	LDA aobject_xcoord_fraction
	STA z:zobject_in_process_coord_fraction
	LDA #$00
	STA z:z00
	LDA z:ztoward
	AND #objects_right
	BEQ @left
	CPX z:zend_scrolling_mapset
	BNE @not_arrived_1
	CPY #$EC
	BCC @not_arrived_1
	LDA #$02
	STA z:zscroll_direction
	JMP @rightward

@not_arrived_1:
	CLC
	LDA aobject_xcoord_fraction
	ADC aobject_xcoord_speed_fraction
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC aobject_xcoord_speed
	STA aobject_xcoord
	LDA aobject_screen
	ADC #$00
	STA aobject_screen
	CLC
	LDA aobject_xcoord
	ADC #$08
	STA z:z08
	LDA aobject_screen
	ADC #$00
	STA z:z09
	JSR _check_horizontal_collision
	LDA z:z00
	BEQ @air_1
	LDA #$00
	STA aobject_xcoord_fraction
	LDA z:z08
	AND #%00001111
	STA z:z00
	SEC
	LDA aobject_xcoord
	SBC z:z00
	STA aobject_xcoord
	LDA aobject_screen
	SBC #$00
	STA aobject_screen

@air_1:
	SEC
	LDA aobject_xcoord
	SBC z:zobject_in_process_coord
	STA z:z00
	BPL @rightward
	CLC
	EOR #%11111111
	ADC #$01
	STA z:z00
	JMP @leftward

@left:
	CPX z:zstart_scrolling_mapset
	BNE @not_arrived_2
	CPY #$14
	BCS @not_arrived_2
	JMP @leftward

@not_arrived_2:
	SEC
	LDA aobject_xcoord_fraction
	SBC aobject_xcoord_speed_fraction
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	SBC aobject_xcoord_speed
	STA aobject_xcoord
	LDA aobject_screen
	SBC #$00
	STA aobject_screen
	SEC
	LDA aobject_xcoord
	SBC #$08
	STA z:z08
	LDA aobject_screen
	SBC #$00
	STA z:z09
	JSR _check_horizontal_collision
	LDA z:z00
	BEQ @air_2
	LDA #$00
	STA aobject_xcoord_fraction
	LDA z:z08
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_xcoord
	STA aobject_xcoord
	LDA aobject_screen
	ADC #$00
	STA aobject_screen

@air_2:
	SEC
	LDA z:zobject_in_process_coord
	SBC aobject_xcoord
	STA z:z00
	BPL @leftward
	EOR #%11111111
	CLC
	ADC #$01
	STA z:z00

@rightward:
	JSR _draw_right_mapset
	JSR _tsa_ycoord
	RTS

@leftward:
	JSR _draw_left_mapset
	JSR _tsa_ycoord
	RTS

_check_horizontal_collision:
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
	JSR _appearing_block_collision
	LDX z:z01
	LDA z:z00
	STA z:ztsa_blockset_pointers, X
	DEC z:z01
	BPL @loop_1
	LDA #$00
	STA z:z00
	LDX #$02

@loop_2:
	LDY z:ztsa_blockset_pointers, X
	LDA tsa_horizontal_blockset_flags_table, Y
	BPL @not_door
	LDY #$02
	STY z:zscroll_direction
	BNE @skip

@not_door:
	CMP #$03
	BNE @skip
	LDY z:zmegaman_invincibility_time
	BNE @skip
	LDA #$00
	STA z:zmegaman_status
	JMP _megaman_death

@skip:
	ORA z:z00
	STA z:z00
	DEX
	BPL @loop_2
	RTS

tsa_ycoord_speed_accelerate_fraction_table:
	.BYTE $40, $1E

tsa_regular_water_table:
	.BYTE $00, $04

tsa_regular_water_jump_speed_table:
	.BYTE $04, $05

tsa_regular_water_jump_speed_fraction_table:
	.BYTE $DF, $80

tsa_horizontal_blockset_flags_table:
	.BYTE $00
	.BYTE $01
	.BYTE $00
	.BYTE $03
	.BYTE $00
	.BYTE $01
	.BYTE $01
	.BYTE $01
	.BYTE $81

check_horizontal_collision_ycoord_offset:
	.BYTE -12, -4, +11

check_horizontal_collision_screen_offset:
	.BYTE -1, -1, +0
