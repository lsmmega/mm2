_enemies_killed:
	LDA z:zboss_ai_pointer
	BEQ @not_bosses
	RTS

@not_bosses:
	LDA z:zrandom
	STA z:z01
	LDA #100
	STA z:z02
	JSR _divide_mod
	LDA z:zdifficulty
	BEQ @normal
	LDA z:z04
	CMP #48
	BCC @nothing
	CMP #73
	BCC @small_weapon_capsule
	CMP #88
	BCC @small_life_capsule
	CMP #93
	BCC @large_weapon_capsule
	CMP #97
	BCC @large_life_capsule
	CMP #98
	BEQ @1up

@nothing:
	RTS

@small_weapon_capsule:
	LDA #objects_small_weapon_capsule
	BNE @drop

@small_life_capsule:
	LDA #objects_small_life_capsule
	BNE @drop

@large_weapon_capsule:
	LDA #objects_large_weapon_capsule
	BNE @drop

@large_life_capsule:
	LDA #objects_large_life_capsule
	BNE @drop

@1up:
	LDA #objects_1up
	BNE @drop
	LDA #objects_e_tank
	BNE @drop

@drop:
	JSR _enemies_to_items
	BCS @exist
	LDA #objects_with_gravity | objects_exist
	STA aobject_flag + $10, Y
	LDA #$02
	STA aobject_ycoord_speed + $10, Y
	LDA #$01
	STA aobject_temp + $10, Y

@exist:
	RTS

@normal:
	LDA z:z04
	CMP #28
	BCC @nothing
	CMP #38
	BCC @small_weapon_capsule
	CMP #48
	BCC @small_life_capsule
	CMP #78
	BCC @large_weapon_capsule
	CMP #98
	BCC @large_life_capsule
	CMP #99
	BEQ @1up
	RTS
