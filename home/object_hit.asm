_object_hit:
	LDA #$00
	STA z:z01
	LDA z:zmegaman_status
	BEQ @skip_1
	LDA z:zcant_collision_flag
	BNE @skip_1
	LDA z:zout_of_screen
	BNE @skip_1
	SEC
	LDA z:zobject_in_process_screen
	SBC z:zobject_in_process_coord
	BCS @on_right
	EOR #%11111111
	ADC #$01

@on_right:
	LDY aobject_collision_xcoord, X
	CMP weapon_collision_xcoord, Y
	BCS @skip_1
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	BCS @on_up
	EOR #%11111111
	ADC #$01

@on_up:
	CMP weapon_collision_ycoord, Y
	BCS @skip_1
	LDY aobject_pointer, X
	CPY #objects_large_life_capsule
	BCS @item
	LDA z:zmegaman_invincibility_time
	BNE @skip_1
	SEC
	LDA aobject_hp
	SBC enemies_hit_damage_table, Y
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
	LDA aobject_flag, X
	AND #objects_right
	EOR #objects_right
	ORA aobject_flag
	STA aobject_flag
	JSR _megaman_hit
	INC z:z01

@skip_1:
	RTS

@item:
	LDA z:zitem
	BNE @skip_2
	LSR aobject_flag, X
	STY z:zitem
	INC z:z01
	LDA aobject_temp, X
	BNE @skip_2
	LDA #$FF
	STA aenemies_temp, X
	LDA aenemies_hit_flag, X
	TAY
	LDA #$00
	STA aitems_respawn_flag, Y

@skip_2:
	RTS
