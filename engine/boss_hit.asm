_boss_hit:
	LDA #$00
	STA z:z01
	LDA z:zmegaman_status
	BEQ @skip
	LDA z:zcant_collision_flag
	BNE @skip
	LDA z:zout_of_screen
	BNE @skip
	SEC
	LDA aobject_xcoord
	SBC aobject_xcoord + 1
	BCS @on_right
	EOR #%11111111
	ADC #$01

@on_right:
	LDY aobject_collision_xcoord + 1
	CMP weapon_collision_xcoord, Y
	BCS @skip
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord + 1
	BCS @on_up
	EOR #%11111111
	ADC #$01

@on_up:
	CMP weapon_collision_ycoord, Y
	BCS @skip
	LDA z:zmegaman_invincibility_time
	BNE @skip
	LDY z:zcurrent_boss
	SEC
	LDA aobject_hp
	SBC bosses_hit_damage_table, Y
	STA aobject_hp
	BEQ @death
	BCS @hit

@death:
	LDA #$00
	STA z:zmegaman_status
	STA aobject_hp
	JMP _megaman_death

@hit:
	LDA aobject_flag
	AND #~objects_right
	STA aobject_flag
	LDA aobject_flag + 1
	AND #objects_right
	EOR #objects_right
	ORA aobject_flag
	STA aobject_flag
	JSR _megaman_hit
	INC z:z01

@skip:
	RTS
