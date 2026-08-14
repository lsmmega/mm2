_check_weapon_bosses_collision:
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
	ADC aobject_collision_xcoord + 1
	TAY
	SEC
	LDA aobject_xcoord + 1
	SBC aobject_collision_xcoord, X
	BCS @on_right
	EOR #%11111111
	ADC #$01

@on_right:
	CMP weapon_collision_xcoord, Y
	BCS @skip
	SEC
	LDA aobject_ycoord + 1
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
	STA z:zboss_hit_flag
	STA z:z02

@cant_hit:
	CLC
	RTS
