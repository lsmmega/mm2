_clean_object_in_teleporting:
	LDX #$00
	LDA z:zcurrent_weapon
	CMP #$06
	BEQ @time_stopper
	CMP #$01
	BNE @not_atomic_fire

@time_stopper:
	LDX aobject_flag + 2

@not_atomic_fire:
	TXA
	PHA
	LDA #$00
	LDX #$1F

@loop_1:
	STA aobject_flag, X
	DEX
	BNE @loop_1
	STA aweapon_stand_xcoord
	STA aweapon_stand_xcoord + 1
	STA aweapon_stand_xcoord + 2
	PLA
	STA aobject_flag + 2
	LDX #$0F

@loop_2:
	LDA #$FF
	STA aenemies_index, X
	STA aitems_index, X
	LDA #$00
	STA aobject_stand_xcoord, X
	DEX
	BPL @loop_2
	RTS
