_check_weapon_enemies_collision:
	LDA aobject_ycoord, X
	STA z:z00
	LDA aobject_collision_xcoord, X
	STA z:z08
	LDX #$09
	LDA z:znmi_frame
	AND #%00000001
	BNE @odd
	DEX

@odd:
@loop:
	LDA aobject_flag, X
	BPL @skip
	AND #%00000001
	BEQ @skip
	CLC
	LDY aweapon_collision_index, X
	LDA weapon_collision_index, Y
	ADC z:z08
	TAY
	SEC
	LDA z:zobject_in_process_coord
	SBC aobject_collision_xcoord, X
	BCS @on_right
	EOR #%11111111
	ADC #$01

@on_right:
	CMP weapon_collision_xcoord, Y
	BCS @skip
	SEC
	LDA z:z00
	SBC aobject_ycoord, X
	BCS @on_up
	EOR #%11111111
	ADC #$01

@on_up:
	CMP weapon_collision_ycoord, Y
	BCC @calc_damage

@skip:
	DEX
	DEX
	CPX #$02
	BCS @loop
	LDX z:zsprites_pointer
	LDA #$00
	STA aenemies_index, X
	CLC
	RTS
