@calc_damage:
	LDA z:zboss_hit_flag
	BNE @cant_hit
	LDY z:zcurrent_weapon
	LDA @lo_jumptable, Y
	STA z:z08
	LDA @hi_jumptable, Y
	STA z:z09
	JMP (z08)

@mega_buster:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_1
	LDY z:zcurrent_boss
	LDA @mega_buster_damage_table, Y
	STA z:z00
	BEQ @immune_1
	PHP
	LSR aobject_flag, X
	PLP
	BPL @not_refilled_1
	JMP @refill_boss

@not_refilled_1:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_1
	BCS @exist_1

@killed_1:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_1:
	LDA aobject_flag, X
	EOR #objects_right
	AND #~can_collide_enemies
	STA aobject_flag, X
	LDA #$05
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed, X
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02

@exist_1:
	CLC
	RTS

@atomic_fire:
	LDA z:zcurrent_boss
	CMP #$00
	BNE @not_heatman
	JMP @refill_boss

@not_heatman:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_2
	LDY z:zcurrent_boss
	LDA @atomic_fire_damage_table, Y
	BEQ @immune_2
	LDA aobject_temp, X
	CMP #$02
	BCC @not_max
	BEQ @max
	LDA @atomic_fire_damage_table, Y
	BNE @calc_atomic_fire

@max:
	CLC
	LDA @mega_buster_damage_table, Y
	ASL
	ADC @mega_buster_damage_table, Y
	JMP @calc_atomic_fire

@not_max:
	LDA @mega_buster_damage_table, Y

@calc_atomic_fire:
	STA z:z00
	BEQ @immune_2
	BPL @not_refilled_2
	JMP @refill_boss

@not_refilled_2:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_2
	BCS @exist_2

@killed_2:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_2:
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02
	LSR aobject_flag, X
	JMP @not_hit_1

@exist_2:
	LDA #$00
	STA aobject_flag, X

@not_hit_1:
	CLC
	RTS

@air_shooter:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_3
	LDY z:zcurrent_boss
	LDA @air_shooter_damage_table, Y
	STA z:z00
	BEQ @immune_3
	BPL @not_refilled_3
	JMP @refill_boss

@not_refilled_3:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_3
	BCS @exist_2

@killed_3:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_3:
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02
	LDA aobject_flag, X
	AND #~can_collide_enemies
	STA aobject_flag, X
	LDA #$3D
	STA aobject_pointer, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	CLC
	RTS

@leaf_shield:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_4
	LDY z:zcurrent_boss
	LDA @leaf_shield_damage_table, Y
	STA z:z00
	BEQ @immune_4
	BPL @not_refilled_4
	JMP @refill_boss

@not_refilled_4:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_4
	BCS @exist_3

@killed_4:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_4:
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02
	LDA aobject_flag, X
	AND #~(can_collide_enemies | objects_with_gravity | objects_can_recoiled)
	STA aobject_flag, X
	LDA #$3B
	STA aobject_pointer, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	STA aobject_temp, X
	STA aobject_hp, X

@not_hit_2:
	CLC
	RTS

@exist_3:
	LDA #$00
	STA aobject_flag, X
	BEQ @not_hit_2

@bubble_lead:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_5
	LDY z:zcurrent_boss
	LDA @bubble_lead_damage_table, Y
	STA z:z00
	BEQ @immune_5
	BPL @not_refilled_5
	JMP @refill_boss

@not_refilled_5:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_5
	BCS @exist_3

@killed_5:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_5:
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X
	LDA #objects_exist
	STA aobject_flag, X
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02
	CLC
	RTS

@quick_boomerang:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_6
	LDY z:zcurrent_boss
	LDA @quick_boomerang_damage_table, Y
	STA z:z00
	BEQ @immune_6
	BPL @not_refilled_6
	JMP @refill_boss

@not_refilled_6:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_6
	BCS @exist_4

@killed_6:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_6:
	LDA #$3C
	STA aobject_pointer, X
	LDA aobject_flag, X
	AND #objects_right | objects_exist
	EOR #objects_right
	ORA #objects_with_gravity
	STA aobject_flag, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$C0
	STA aobject_xcoord_speed_fraction, X
	LDA #$04
	STA aobject_ycoord_speed, X
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02

@not_hit_3:
	LDX z:zsprites_pointer
	CLC
	RTS

@exist_4:
	LDA #$00
	STA aobject_flag, X
	BEQ @not_hit_3

@crash_bomber:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_7
	LDY z:zcurrent_boss
	LDA @crash_bomber_damage_table, Y
	STA z:z00
	BEQ @immune_7
	BPL @not_refilled_7
	JMP @refill_boss

@not_refilled_7:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_7
	BCS @exist_4

@killed_7:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_7:
	LDA aobject_pointer, X
	CMP #$2F
	BEQ @not_hit_4
	LDA aobject_temp, X
	CMP #$02
	BEQ @not_hit_4
	LDA #$05
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$38
	STA aobject_hp, X
	INC aobject_temp, X
	track_queue track_enemy_immune
	LDA #$01
	STA z:z02

@not_hit_4:
	CLC
	RTS

@metal_blade:
	LDA aobject_flag + 1
	AND #objects_can_recoiled
	BNE @immune_8
	LDY z:zcurrent_boss
	LDA @metal_blade_damage_table, Y
	STA z:z00
	BEQ @immune_8
	BPL @not_refilled_8
	JMP @refill_boss

@not_refilled_8:
	JSR @calc_difficulty
	track_queue track_enemy_hit
	LDA #$01
	STA z:z02
	INC z:zboss_hit_flag
	SEC
	LDA aobject_hp + 1
	SBC z:z00
	STA aobject_hp + 1
	BEQ @killed_8
	BCS @exist_5

@killed_8:
	LDA #$00
	STA aobject_hp + 1
	SEC
	RTS

@immune_8:
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$B2
	STA aobject_ycoord_speed_fraction, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$87
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_flag, X
	AND #objects_block | objects_invisible | objects_right | objects_exist
	STA aobject_flag, X
	track_queue track_enemy_immune
	LDA #$02
	STA z:z02

@not_hit_5:
	CLC
	RTS

@exist_5:
	LDA #$00
	STA aobject_flag, X
	BEQ @not_hit_5

@time_stopper:
@refill_boss:
	LDA #$1C
	STA aobject_hp + 1
	LDA #$00
	STA z:z02
	LSR aobject_flag, X
	CLC
	RTS

@calc_difficulty:
	LDA z:zdifficulty
	BNE @difficult
	ASL z:z00

@difficult:
	RTS

@lo_jumptable:
	.LOBYTES @mega_buster
	.LOBYTES @atomic_fire
	.LOBYTES @air_shooter
	.LOBYTES @leaf_shield
	.LOBYTES @bubble_lead
	.LOBYTES @quick_boomerang
	.LOBYTES @time_stopper
	.LOBYTES @metal_blade
	.LOBYTES @crash_bomber

@hi_jumptable:
	.HIBYTES @mega_buster
	.HIBYTES @atomic_fire
	.HIBYTES @air_shooter
	.HIBYTES @leaf_shield
	.HIBYTES @bubble_lead
	.HIBYTES @quick_boomerang
	.HIBYTES @time_stopper
	.HIBYTES @metal_blade
	.HIBYTES @crash_bomber
