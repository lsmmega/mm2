_bosses_init_jmp:
	JMP _bosses_init

_bosses_ai_jmp:
	LDA #$01
	STA z:zsprites_pointer
	LDY z:zcurrent_boss
	LDA z:ztime_stopper_flag
	AND #%00000001
	BEQ @time_stopper_not_use
	LDA @time_stopper_damage_per_frames, Y
	BEQ @time_stopper_not_use
	JMP @use_time_stopper

@time_stopper_not_use:
	LDX z:zboss_ai_pointer
	BPL @run_normal
	JMP _run_bosses_death

@run_normal:
	LDA @lo_jumptable, Y
	STA z:z08
	LDA @hi_jumptable, Y
	STA z:z09
	JMP (z08)

@time_stopper_damage_per_frames:
	.BYTE 15 ;heatman
	.BYTE 15 ;airman
	.BYTE 15 ;woodman
	.BYTE 15 ;bubbleman
	.BYTE 30 ;quickman
	.BYTE 15 ;flashman
	.BYTE 15 ;metalman
	.BYTE 15 ;crashman
	.BYTE 15 ;mecha dragon
	.BYTE 15 ;picopico kun
	.BYTE 15 ;guts tank
	.BYTE 15 ;boobeam trap
	.BYTE 15 ;wily machine 2
	.BYTE 15 ;alien

@time_stopper_damage_table:
	.BYTE 0 ;heatman
	.BYTE 0 ;airman
	.BYTE 0 ;woodman
	.BYTE 0 ;bubbleman
	.BYTE 1 ;quickman
	.BYTE 0 ;flashman
	.BYTE 0 ;metalman
	.BYTE 0 ;crashman
	.BYTE 0 ;mecha dragon
	.BYTE 0 ;picopico kun
	.BYTE 0 ;guts tank
	.BYTE 0 ;boobeam trap
	.BYTE 0 ;wily machine 2
	.BYTE 0 ;alien

@lo_jumptable:
	.LOBYTES _heatman_boss_ai
	.LOBYTES _airman_boss_ai
	.LOBYTES _woodman_boss_ai
	.LOBYTES _bubbleman_boss_ai
	.LOBYTES _quickman_boss_ai
	.LOBYTES _flashman_boss_ai
	.LOBYTES _metalman_boss_ai
	.LOBYTES _crashman_boss_ai
	.LOBYTES _mecha_dragon_boss_ai
	.LOBYTES _picopico_kun_boss_ai
	.LOBYTES _guts_tank_boss_ai
	.LOBYTES _boobeam_trap_boss_ai
	.LOBYTES _wily_machine_2_boss_ai
	.LOBYTES _alien_boss_ai

@hi_jumptable:
	.HIBYTES _heatman_boss_ai
	.HIBYTES _airman_boss_ai
	.HIBYTES _woodman_boss_ai
	.HIBYTES _bubbleman_boss_ai
	.HIBYTES _quickman_boss_ai
	.HIBYTES _flashman_boss_ai
	.HIBYTES _metalman_boss_ai
	.HIBYTES _crashman_boss_ai
	.HIBYTES _mecha_dragon_boss_ai
	.HIBYTES _picopico_kun_boss_ai
	.HIBYTES _guts_tank_boss_ai
	.HIBYTES _boobeam_trap_boss_ai
	.HIBYTES _wily_machine_2_boss_ai
	.HIBYTES _alien_boss_ai

@use_time_stopper:
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	JSR _bosses_hit
	LDA z:zcurrent_weapon
	CMP #$06
	BNE @quit
	LDA aobject_flag + $02
	BPL @quit
	LDA z:zboss_ai_pointer
	CMP #$02
	BCC @quit
	LDA z:zcurrent_boss
	CMP #$05
	BEQ @is_flashman
	CMP #$0D
	BNE @not_alien

@is_flashman:
	LDA #$1C
	STA aobject_hp + $01
	BNE @quit

@not_alien:
	INC atime_stopper_damage_timer
	LDX z:zcurrent_boss
	LDA atime_stopper_damage_timer
	CMP @time_stopper_damage_per_frames, X
	BNE @quit
	LDA #$00
	STA atime_stopper_damage_timer
	LDA @time_stopper_damage_table, X
	BEQ @quit
	SEC
	LDA aobject_hp + $01
	SBC @time_stopper_damage_table, X
	BEQ @death
	BCS @continue

@death:
	LDA #$00
	LSR aobject_flag + $02
	LDA #$00
	STA z:ztime_stopper_flag
	LDA #$01
	STA z:zwind_conveyor_speed
	INC aregular_boss_defeated_flag
	LDA #$00

@continue:
	STA aobject_hp + $01

@quit:
	RTS

_heatman_boss_ai:
	DEX
	LDA _heatman_boss_ai_lo_jumptable, X
	STA z:z08
	LDA _heatman_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_bosses_appeared:
	LDA aobject_temp + $01
	BNE @run_bosses_appeared_anim
	LDY z:zcurrent_boss
	LDA bosses_appeared_xcoord_collision_offset, Y
	STA z:z01
	LDA bosses_appeared_ycoord_collision_offset, Y
	STA z:z02
	JSR _run_bosses_drop
	LDA z:z00
	BNE @drop_done
	LDA #$00
	STA aobject_frameset_upper_timer + $01
	STA aobject_frameset_lower_timer + $01

@nz:
	JSR _bosses_not_death
	RTS

@drop_done:
	LDA #$00
	STA aobject_ycoord_speed + $01
	STA aobject_ycoord_speed_fraction + $01
	INC aobject_temp + $01

@run_bosses_appeared_anim:
	LDA aobject_frameset_upper_timer + $01
	LDY z:zcurrent_boss
	CMP bosses_appeared_frameset_length, Y
	BNE @nz
	STA aobject_frameset_upper_timer + $01
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA aobject_hp + $01
	CMP #$1C
	BNE _bosses_drop_done_start_refilling

_heatman_ignite_self_done:
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$00
	STA z:zboss_timer
	STA aobject_temp + $01
	LDY z:zcurrent_boss
	LDA bosses_appeared_init_object_table, Y
	JSR _init_bosses_object
	RTS

_bosses_drop_done_start_refilling:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	INC aobject_hp + $01
	track_queue track_refill

@4_frames:
	RTS

bosses_appeared_xcoord_collision_offset:
	.BYTE $09, $0C, $0F, $0A, $09, $09, $08, $08

bosses_appeared_ycoord_collision_offset:
	.BYTE $0C, $10, $10, $0C, $0C, $0C, $0C, $0C

bosses_appeared_frameset_length:
	.BYTE $0F, $0F, $0B, $05, $09, $07, $05, $03

bosses_appeared_init_object_table:
	.BYTE $51, $67, $6D, $61, $55, $5C, $64, $6A

_heatman_throw_fireball:
	LDA #$58
	JSR _check_bosses_shoot_object_regular
	BCS @hidden
	LDA aobject_frameset_upper_timer + $01
	BNE _check_hit_common
	STA aobject_frameset_lower_timer + $01
	BEQ _check_hit_common

@hidden:
	LDA aobject_frameset_lower_timer + $01
	BNE _check_hit_common
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BNE _check_hit_common
	JSR _check_bosses_toward
	LDA z:z00
	STA z:z03
	CLC
	ADC #$20
	STA z:z02
	SEC
	SBC #$40
	BCS @not_nearest
	LDA #$00

@not_nearest:
	STA z:z04
	LDA #$02
	STA z:z01

@loop:
	LDX z:z01
	LDA #$00
	STA z:z0A
	STA z:z0C
	LDA z:z02, X
	STA z:z0B
	LDA heatman_throw_fireball_xcoord_speed_divide_table, X
	STA z:z0D
	JSR _divide_fraction
	LDX #$01
	LDA #$58
	JSR _bosses_shoot_object
	LDX z:z01
	LDA heatman_throw_fireball_ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA heatman_throw_fireball_ycoord_speed_table, X
	STA aobject_ycoord_speed + $10, Y
	LDA z:z0E
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA z:z0F
	STA aobject_xcoord_speed + $10, Y
	LDA aobject_flag + $10, Y
	ORA #objects_with_gravity
	STA aobject_flag + $10, Y
	DEC z:z01
	BPL @loop

_check_hit_common:
	LDX #$01
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	BNE @quit
	LDA #$04
	STA z:zboss_ai_pointer
	LDA #$12
	STA aboss_invincibility_time
	LDA #$53
	JSR _init_bosses_object

@quit:
	RTS

;unused
	.BYTE $0F, $15, $0F, $0F, $0F

heatman_throw_fireball_ycoord_speed_fraction_table:
	.BYTE $36, $A8, $76

heatman_throw_fireball_ycoord_speed_table:
	.BYTE +7, +5, +3

heatman_throw_fireball_xcoord_speed_divide_table:
	.BYTE $3A, $2E, $1C

_heatman_ignite_self:
	LDA aobject_temp + $01
	BNE @check_moving
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BNE @nz
	LDA #$00
	STA aobject_frameset_upper_timer + $01

@nz:
	DEC z:zboss_timer
	BNE _check_hit_common
	LDA #$03
	STA aobject_frameset_upper_timer + $01
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA #$11
	STA aobject_collision_xcoord + $01
	JSR _check_bosses_toward
	LDA z:z00
	LSR
	LSR
	CLC
	ADC #$0A
	STA z:zboss_timer
	track_queue track_atomic_fire_release
	INC aobject_temp + $01
	BNE _check_hit_common

@check_moving:
	CMP #$01
	BNE @restore_anim
	LDA aobject_frameset_upper_timer + $01
	CMP #$06
	BCC @not_moving
	LDY #$04
	STY aobject_xcoord_speed + $01

@not_moving:
	CMP #$09
	BNE @check_move_done
	LDA #$06
	STA aobject_frameset_upper_timer + $01

@check_move_done:
	LDA z:zboss_timer
	BEQ @move_done
	DEC z:zboss_timer
	BNE @run_regular

@move_done:
	LDA #$00
	STA aobject_xcoord_speed + $01
	STA aobject_frameset_lower_timer + $01
	LDA #$01
	STA aobject_collision_xcoord + $01
	LDA #$0A
	STA aobject_frameset_upper_timer + $01
	INC aobject_temp + $01
	BNE @run_regular

@restore_anim:
	LDA aobject_frameset_upper_timer + $01
	CMP #$0D
	BNE @run_regular
	LDA #$50
	JSR _init_bosses_object
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	INC aobject_frameset_upper_timer, X
	LDA #$05
	STA z:zboss_ai_pointer

@run_regular:
	JMP _check_hit_common

heatman_hit_timer_table:
	.BYTE $1F, $3E, $5D

_heatman_got_hit:
	LDA aobject_frameset_upper_timer + $01
	BEQ @invincibility
	DEC z:zboss_ai_pointer
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	LDX aobject_xcoord + $01
	CPX #$80
	BCS @on_right
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_right | objects_exist

@on_right:
	STA aobject_flag + $01
	LDA #$00
	STA aobject_temp + $01
	STA z:zboss_hit_flag
	LDA z:zrandom
	STA z:z01
	LDA #$03
	STA z:z02
	JSR _divide_mod
	LDX z:z04
	LDA heatman_hit_timer_table, X
	STA z:zboss_timer
	LDA #$52
	JSR _init_bosses_object
	track_queue track_atomic_fire_release

@invincibility:
	JSR _bosses_not_death
	RTS

_heatman_restore_anim:
	LDA aobject_frameset_upper_timer + $01
	CMP #$04
	BEQ @done
	JMP _check_hit_common

@done:
	JMP _heatman_ignite_self_done

_heatman_boss_ai_lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES _heatman_throw_fireball
	.LOBYTES _heatman_ignite_self
	.LOBYTES _heatman_got_hit
	.LOBYTES _heatman_restore_anim

_heatman_boss_ai_hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES _heatman_throw_fireball
	.HIBYTES _heatman_ignite_self
	.HIBYTES _heatman_got_hit
	.HIBYTES _heatman_restore_anim

_airman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@shooting:
	LDA #$00
	STA z:zslip_wind_flags
	STA z:zwind_conveyor_speed_fraction
	STA z:zwind_conveyor_speed
	LDA z:zboss_timer
	CMP #$03
	BNE @not_shoot_times_done
	LDA #$00
	STA z:zboss_timer
	LDA #$68
	JSR _init_bosses_object
	LDA aobject_flag + $01
	ORA #objects_with_gravity
	STA aobject_flag + $01
	LDA #$04
	STA z:zboss_ai_pointer
	LDA #$FF
	STA aobject_ycoord_speed + $01
	BNE @set_jumping_done

@not_shoot_times_done:
	LDA z:zrandom
	STA z:z01
	LDA #$05
	STA z:z02
	JSR _divide_mod
	LDX z:z04
	LDA @shoot_timer, X
	STA aobject_temp + $01
	LDA z:z04
	ASL
	STA z:z01
	ASL
	ADC z:z01
	STA z:z01
	LDA #$06
	STA z:z02

@loop_1:
	LDA #$5D
	LDX #$01
	JSR _bosses_shoot_object
	LDX z:z01
	LDA @air_shooter_ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA @air_shooter_ycoord_speed_table, X
	STA aobject_ycoord_speed + $10, Y
	LDA @air_shooter_xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA @air_shooter_xcoord_speed_table, X
	STA aobject_xcoord_speed + $10, Y
	LDA @air_shooter_distance_timer, X
	STA aobject_temp + $10, Y
	INC z:z01
	DEC z:z02
	BNE @loop_1
	track_queue track_air_shooter
	INC z:zboss_timer
	INC z:zboss_ai_pointer
	LDA #$00
	STA aobject_frameset_upper_timer + $01
	STA aobject_frameset_lower_timer + $01

@set_jumping_done:
	JSR @check_got_hit
	RTS

@shoot_timer:
	.BYTE $44, $4A, $42, $43, $43

@air_shooter_ycoord_speed_fraction_table:
	.BYTE $00, $F0, $50, $3C, $00, $00
	.BYTE $D3, $CD, $68, $0F, $1A, $00
	.BYTE $A7, $68, $00, $7F, $B1, $A7
	.BYTE $88, $50, $D4, $D0, $D0, $B9
	.BYTE $98, $50, $3C, $1A, $7C, $35

@air_shooter_ycoord_speed_table:
	.BYTE +4, +3, +3, +2, +2, +0
	.BYTE +3, +3, +2, +2, +1, +0
	.BYTE +3, +2, +2, +1, +0, -1
	.BYTE +3, +3, +2, +1, +1, -1
	.BYTE +3, +3, +2, +1, +0, +0

@air_shooter_xcoord_speed_fraction_table:
	.BYTE $00, $B1, $3C, $50, $76, $00
	.BYTE $2B, $3C, $31, $6B, $DB, $00
	.BYTE $A0, $31, $76, $B5, $F0, $FC
	.BYTE $E0, $3C, $D4, $90, $90, $FD
	.BYTE $C0, $3C, $50, $DB, $F8, $FE

@air_shooter_xcoord_speed_table:
	.BYTE +0, +0, +2, +3, +3, +4
	.BYTE +1, +1, +3, +3, +3, +4
	.BYTE +1, +3, +3, +3, +3, +3
	.BYTE +1, +2, +2, +3, +3, +3
	.BYTE +1, +2, +3, +3, +3, +3

@air_shooter_distance_timer:
	.BYTE $0C, $16, $24, $0E, $24, $18
	.BYTE $1B, $0E, $1E, $2A, $1D, $0C
	.BYTE $0D, $0A, $20, $15, $22, $18
	.BYTE $21, $15, $05, $0D, $23, $1C
	.BYTE $1A, $0E, $1C, $1D, $10, $24

@blowing:
	LDA aobject_temp + $01
	BEQ @shooting_done

@blowing_done:
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	DEC aobject_temp + $01
	JSR @check_got_hit
	RTS

@shooting_done:
	LDA #$5D
	JSR _check_bosses_shoot_object_regular
	BCC @exist
	DEC z:zboss_ai_pointer
	JMP @blowing_done

@exist:
	LDA #$01
	STA z:zslip_wind_flags
	LDA aobject_flag + $01
	AND #objects_right
	STA z:zwind_toward
	CLC
	LDA z:zwind_conveyor_speed_fraction
	ADC #$10
	STA z:zwind_conveyor_speed_fraction
	LDA z:zwind_conveyor_speed
	ADC #$00
	STA z:zwind_conveyor_speed
	CMP #$04
	BNE @not_max
	LDA #$00
	STA z:zwind_conveyor_speed_fraction

@not_max:
	LDY #$0F
	LDA #$5D
	STA z:z00

@loop_2:
	JSR _check_bosses_shoot_object_with_speed
	BCS @not_set
	LDA z:zwind_conveyor_speed_fraction
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA z:zwind_conveyor_speed
	STA aobject_xcoord_speed + $10, Y
	DEY
	BPL @loop_2

@not_set:
	LDA aobject_frameset_upper_timer + $01
	CMP #$03
	BNE @nz
	LDA #$01
	STA aobject_frameset_upper_timer + $01

@nz:
	LDX #$01
	JSR @check_got_hit
	RTS

@jumping:
	JSR @check_got_hit
	LDA #$0B
	STA z:z01
	LDA #$10
	STA z:z02
	JSR _check_bosses_not_landing_collision
	LDA z:z00
	BEQ @air
	LDX z:zboss_timer
	LDA @jumping_ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $01
	LDA @jumping_ycoord_speed_table, X
	STA aobject_ycoord_speed + $01
	LDA @jumping_xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $01
	LDA @jumping_xcoord_speed_table, X
	STA aobject_xcoord_speed + $01
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$03
	BNE @jump_running
	LDA #$02
	STA z:zboss_ai_pointer
	LDA aobject_flag + $01
	AND #~objects_with_gravity
	EOR #objects_right
	STA aobject_flag + $01
	LDA #$00
	STA z:zboss_timer
	LDA #$67
	JSR _init_bosses_object
	RTS

@air:
@jump_running:
	RTS

@jumping_ycoord_speed_fraction_table:
	.BYTE $E6, $76, $00

@jumping_ycoord_speed_table:
	.BYTE +4, +7, +0

@jumping_xcoord_speed_fraction_table:
	.BYTE $39, $9A, $00

@jumping_xcoord_speed_table:
	.BYTE +1, +1, +0

@check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	JMP @quit

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time

@quit:
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @shooting
	.LOBYTES @blowing
	.LOBYTES @jumping

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @shooting
	.HIBYTES @blowing
	.HIBYTES @jumping

_woodman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@throw_leaf:
	JSR _check_bosses_toward
	LDA aobject_temp + $01
	BNE @create_leaf_shield_done
	LDA #$61
	LDX #$01
	JSR _bosses_shoot_object
	INC aobject_temp + $01
	JMP @done

@create_leaf_shield_done:
	CMP #$04
	BCS @dropping
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$12
	BNE @processing
	LDA #$00
	STA z:zboss_timer
	INC aobject_temp + $01
	LDA #$62
	LDX #$01
	JSR _bosses_shoot_object

@processing:
	JMP @done

@dropping:
	LDA #$62
	JSR _check_bosses_shoot_object_regular
	BCC @done
	LDA #$03
	STA z:z02

@loop:
	LDA #$62
	LDX #$01
	JSR _bosses_shoot_object
	BCS @exist
	LDX z:z02
	LDA #can_collide_megaman | objects_right | objects_exist
	STA aobject_flag + $10, Y
	LDA #$20
	STA aobject_ycoord + $10, Y
	LDA #$01
	STA aobject_temp + $10, Y
	LDA #$FE
	STA aobject_ycoord_speed + $10, Y
	LDA #$02
	STA aobject_xcoord_speed + $10, Y
	LDA @drop_leaf_xcoord_table, X
	STA aobject_xcoord + $10, Y
	DEC z:z02
	BPL @loop

@exist:
	INC z:zboss_ai_pointer
	LDA #$6F
	JSR _init_bosses_object

@done:
	JSR @check_got_hit
	RTS

@drop_leaf_xcoord_table:
	.BYTE $40, $70, $A0, $D0

@throw_leaf_shield:
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BCC @throwing
	BNE @had_throwed
	LDA aobject_frameset_lower_timer + $01
	BNE @throwing
	LDA #$61
	JSR _check_bosses_shoot_object_regular
	BCS @throwing
	LDA #$04
	STA aobject_xcoord_speed + $10, Y
	LDA aobject_flag + $10, Y
	AND #~objects_right
	STA z:z00
	LDA aobject_flag + $01
	AND #objects_right
	ORA z:z00
	STA aobject_flag + $10, Y
	BNE @throwing

@had_throwed:
	LDA #$6E
	JSR _init_bosses_object
	INC z:zboss_ai_pointer

@throwing:
	JSR @check_got_hit
	RTS

@jump:
	JSR @check_got_hit
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BCC @skip
	BNE @jump_done
	LDA aobject_frameset_lower_timer + $01
	BNE @set_jump_done
	LDA #$04
	STA aobject_ycoord_speed + $01
	LDA #$01
	STA aobject_xcoord_speed + $01
	LDA aobject_flag + $01
	ORA #objects_with_gravity
	STA aobject_flag + $01

@set_jump_done:
	LDA #$01
	STA aobject_frameset_lower_timer + $01
	LDA aobject_ycoord_speed + $01
	PHP
	LDA #$0F
	STA z:z01
	LDA #$10
	STA z:z02
	JSR _check_bosses_not_landing_collision
	PLP
	BPL @skip
	LDA z:z00
	BEQ @skip
	LDA #$03
	STA aobject_frameset_upper_timer + $01
	LDA #$00
	STA aobject_ycoord_speed + $01
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	STA aobject_frameset_lower_timer + $01
	STA aobject_temp + $01
	STA z:zboss_timer
	LDA aobject_flag + $01
	AND #~objects_with_gravity
	STA aobject_flag + $01

@jump_done:
	LDA aobject_frameset_upper_timer + $01
	CMP #$04
	BNE @skip
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA #$62
	JSR _check_bosses_shoot_object_regular
	BCC @skip
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$6D
	JSR _init_bosses_object

@skip:
	RTS

@check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	RTS

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time

@quit:
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @throw_leaf
	.LOBYTES @throw_leaf_shield
	.LOBYTES @jump

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @throw_leaf
	.HIBYTES @throw_leaf_shield
	.HIBYTES @jump

_bubbleman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@shoot_bubble:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	LDA aobject_frameset_upper_timer, X
	BNE @shoot_bubble_anim
	STA aobject_frameset_lower_timer + $01

@shoot_bubble_anim:
	LDA aobject_temp + $01
	BNE @shoot_bubble_running
	SEC
	LDA aobject_ycoord + $01
	SBC aobject_ycoord
	BCS @on_bottom_1
	EOR #%11111111
	ADC #$01

@on_bottom_1:
	CMP #$03
	BCS @skip
	LDA z:zrandom
	STA z:z01
	LDA #$03
	STA z:z02
	JSR _divide_mod
	INC z:z04
	LDA z:z04
	STA aobject_temp + $01
	LDA #$01
	STA z:zboss_timer

@shoot_bubble_running:
	DEC z:zboss_timer
	BNE @skip
	LDA #$1F
	STA z:zboss_timer
	LDA #$5B
	LDX #$01
	JSR _bosses_shoot_object
	LDA #$01
	STA aobject_frameset_upper_timer + $01
	DEC aobject_temp + $01
	BNE @skip
	LDA aobject_ycoord
	PHA
	LDA #$50
	STA aobject_ycoord
	LDA #$01
	STA z:z09
	LDA #$60
	STA z:z08
	LDX #$01
	STX z:zsprites_pointer
	JSR _calc_bosses_to_megaman_distance_speed
	PLA
	STA aobject_ycoord
	LDA #$00
	STA z:zboss_timer
	LDA aobject_flag + $01
	STA aobject_temp + $01
	INC z:zboss_ai_pointer
	LDA #$62
	JSR _init_bosses_object

@skip:
	JSR @check_got_hit
	RTS

@swim_up:
	LDA aobject_temp + $01
	STA aobject_flag + $01
	JSR @check_got_hit
	LDA aobject_ycoord + $01
	CMP #$50
	BCS @not_down
	LDA #$FF
	STA aobject_ycoord_speed + $01
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	LDA #$04
	STA z:zboss_ai_pointer

@not_down:
	JSR _check_bosses_toward
	LDA z:zboss_timer
	BNE @landing
	SEC
	LDA aobject_ycoord + $01
	SBC aobject_ycoord
	BCS @on_bottom_2
	EOR #%11111111
	ADC #$01

@on_bottom_2:
	CMP #$03
	BCS @run_swin_anim
	LDA #$01
	STA aboss_defeated_timer_1
	LDA #$04
	STA z:zboss_timer

@landing:
	DEC aboss_defeated_timer_1
	BNE @run_swin_anim
	LDA #$12
	STA aboss_defeated_timer_1
	LDA #$03
	STA aobject_frameset_upper_timer + $01
	LDA #$5A
	LDX #$01
	JSR _bosses_shoot_object
	DEC z:zboss_timer

@run_swin_anim:
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BNE @nz
	LDA #$00
	STA aobject_frameset_upper_timer + $01

@nz:
	RTS

@swim_down:
	JSR @check_got_hit
	LDA z:z00
	BEQ @not_down
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$00
	STA aobject_ycoord_speed + $01
	STA aobject_temp + $01
	STA z:zboss_timer
	LDA #$61
	JSR _init_bosses_object
	JMP @run_swin_anim

@check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	JMP @quit

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time

@quit:
	LDA #$09
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _check_bosses_not_landing_collision
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @shoot_bubble
	.LOBYTES @swim_up
	.LOBYTES @swim_down

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @shoot_bubble
	.HIBYTES @swim_up
	.HIBYTES @swim_down

_quickman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@jump:
	LDA aobject_temp + $01
	BNE @jumping
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	LDA z:zrandom
	STA z:z01
	LDA #$03
	STA z:z02
	JSR _divide_mod
	LDX z:z04
	LDA z:z00
	CLC
	ADC #$20
	STA z:z01
	SEC
	SBC #$40
	BCS @not_too_close
	LDA #$00

@not_too_close:
	STA z:z02
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	LDA @jump_speed_table, X
	STA aobject_ycoord_speed + $01
	LDA z:z00, X
	STA z:z0B
	LDA @jump_distance_table, X
	STA z:z0D
	LDA #$00
	STA z:z0A
	STA z:z0C
	JSR _divide_fraction
	LDA z:z0F
	STA aobject_xcoord_speed + $01
	LDA z:z0E
	STA aobject_xcoord_speed_fraction + $01
	INC aobject_temp + $01
	INC z:zboss_timer

@jumping:
	LDA #$08
	STA z:z01
	LDA #$0C
	STA z:z02
	LDA aobject_ycoord_speed + $01
	PHP
	JSR _check_bosses_not_landing_collision
	PLP
	BPL @falling
	LDA z:z00
	BEQ @air
	DEC aobject_temp + $01
	LDA z:zboss_timer
	CMP #$03
	BNE @jump_times_not_max
	LDX #$01
	JMP @reset_common

@falling:
@air:
@jump_times_not_max:
	LDA aobject_frameset_upper_timer + $01
	BNE @nz_1
	STA aobject_frameset_lower_timer + $01

@nz_1:
	LDA aobject_ycoord_speed + $01
	PHP
	JSR @jumping_check_got_hit
	PLP
	BMI @skip
	LDA aobject_ycoord_speed + $01
	BPL @skip
	LDA z:zboss_timer
	CMP #$02
	BNE @skip
	LDA z:zboss_ai_pointer
	CMP #$02
	BNE @skip
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA #$01
	STA aobject_frameset_upper_timer + $01
	LDA aobject_ycoord
	PHA
	SEC
	SBC #$18
	STA aobject_ycoord
	LDA #$03
	STA z:z02

@loop:
	LDA #$59
	LDX #$01
	JSR _bosses_shoot_object
	BCS @exist
	TYA
	CLC
	ADC #$10
	TAX
	STA z:zsprites_pointer
	LDA #$25
	STA aobject_temp, X
	LDA #$04
	STA z:z09
	LDA #$00
	STA z:z08
	JSR _calc_bosses_to_megaman_distance_speed
	CLC
	LDA aobject_ycoord
	ADC #$18
	STA aobject_ycoord
	DEC z:z02
	BNE @loop

@exist:
	PLA
	STA aobject_ycoord

@skip:
	RTS

@jump_speed_table:
	.BYTE +7, +8, +4

@jump_distance_table:
	.BYTE $38, $40, $20

@reset:
	JSR _check_bosses_toward
	LDX #$00

@reset_common:
	LDA #$00
	STA aobject_temp + $01
	STA z:zboss_timer
	LDA @reset_ai, X
	STA z:zboss_ai_pointer
	LDA @reset_object, X
	JSR _init_bosses_object
	JSR @check_got_hit
	RTS

@reset_ai:
	.BYTE $02, $05

@reset_object:
	.BYTE $55, $58

@guard:
	DEC aobject_temp + $01
	BEQ @guard_done
	JSR @check_got_hit
	RTS

@running:
	LDA aobject_temp + $01
	BNE @set_running_done
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	LDA #$02
	STA aobject_xcoord_speed + $01
	LDA #$3E
	STA z:zboss_timer
	INC aobject_temp + $01

@set_running_done:
	DEC z:zboss_timer
	BNE @nz_2
	LDX #$00
	JSR @reset_common

@nz_2:
	JSR @check_got_hit
	RTS

@guard_done:
	LDA #$00
	STA aobject_temp + $01
	STA z:zboss_timer
	LDA #$03
	STA z:zboss_ai_pointer
	LDA #$56
	JSR _init_bosses_object
	LDA #$0B
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _quickman_guard_done
	RTS

@check_got_hit:
	LDA #$08
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _check_bosses_not_landing_collision

@jumping_check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	JMP @quit

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	BEQ @quit
	CMP #$01
	BNE @set_guard
	LDA #$12
	STA aboss_invincibility_time
	BNE @quit

@set_guard:
	LDA #$00
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	LDA #$FF
	STA aobject_ycoord_speed + $01
	LDA #$C0
	STA aobject_ycoord_speed_fraction + $01
	LDA #$57
	JSR _init_bosses_object
	LDA #$04
	STA z:zboss_ai_pointer
	LDA #$3E
	STA aobject_temp + $01

@quit:
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @jump
	.LOBYTES @reset
	.LOBYTES @guard
	.LOBYTES @running

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @jump
	.HIBYTES @reset
	.HIBYTES @guard
	.HIBYTES @running

_flashman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@running:
	LDA aobject_flag + $01
	ORA #objects_with_gravity
	STA aobject_flag + $01
	LDA #$06
	STA aobject_xcoord_speed_fraction + $01
	LDA #$01
	STA aobject_xcoord_speed + $01
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$BB
	BCC @not_time_stop
	LDA #$00
	STA aobject_temp + $01
	LDA #$03
	STA z:zboss_ai_pointer
	LDA #$5A
	JSR _init_bosses_object
	LDA #$03
	STA aobject_frameset_upper_timer + $01
	JSR @check_got_hit
	track_queue track_time_stopper
	RTS

@not_time_stop:
	JSR @check_got_hit
	LDA z:z03
	BEQ @skip
	LDA z:zboss_ai_pointer
	CMP #$06
	BEQ @skip
	LDA #$00
	STA aobject_temp + $01
	LDA #$05
	STA z:zboss_ai_pointer
	LDA #$5D
	JSR _init_bosses_object

@skip:
	RTS

@ready_time_stop:
	LDA #$00
	STA aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	LDA aobject_frameset_upper_timer + $01
	CMP #$07
	BNE @processing
	LDA #$5F
	STA aobject_pointer + $0F
	LDA #$80
	STA aobject_flag + $0F ;objects_exist
	STA aobject_xcoord + $0F
	STA aobject_ycoord + $0F
	LDA aobject_screen + $01
	STA aobject_screen + $0F
	LDA #$00
	STA aobject_ycoord_speed_fraction + $0F
	STA aobject_ycoord_speed + $0F
	STA aobject_xcoord_speed + $0F
	STA aobject_xcoord_speed_fraction + $0F
	STA aobject_frameset_lower_timer + $0F
	STA aobject_frameset_upper_timer + $0F
	LDA #$04
	STA z:ztime_stopper_flag
	LDA #white_gray
	STA acurrent_background_palette + $10
	LDA #$06
	STA aobject_temp + $01
	LDA #$1F
	STA z:zboss_timer
	INC z:zboss_ai_pointer
	LDA #$5B
	JSR _init_bosses_object

@processing:
	JSR @check_got_hit
	RTS

@time_stop:
	LDA #black
	STA acurrent_background_palette + $10
	LDA aobject_frameset_upper_timer + $01
	BEQ @processing
	CMP #$02
	BNE @shooting
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$00
	STA z:ztime_stopper_flag
	STA z:zboss_timer
	STA aobject_temp + $01
	LSR aobject_flag + $0F
	LDA #$5C
	JSR _init_bosses_object
	JSR _check_bosses_toward
	JMP @processing

@shooting:
	JSR _check_bosses_toward
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	DEC z:zboss_timer
	BNE @processing
	LDA #$06
	STA z:zboss_timer
	LDA aobject_ycoord
	PHA
	LDA z:zrandom
	STA z:z01
	LDA #$50
	STA z:z02
	JSR _divide_mod
	SEC
	LDA aobject_ycoord + $01
	SBC #$28
	CLC
	ADC z:z04
	STA aobject_ycoord
	LDA #$35
	LDX #$01
	JSR _bosses_shoot_object
	BCS @exist
	CLC
	TYA
	ADC #$10
	TAX
	STX z:zsprites_pointer
	LDA #$08
	STA z:z09
	LDA #$00
	STA z:z08
	LDY #$00
	LDA aobject_flag + $01
	AND #objects_right
	PHA
	BNE @on_right
	INY

@on_right:
	CLC
	LDA aobject_xcoord, X
	ADC @xcoord_offset, Y
	STA aobject_xcoord, X
	PLA
	TAY
	LDA #$60
	STA z:z00
	JSR _calc_flashman_shoot_to_megaman_distance_speed
	LDA #$01
	STA z:zsprites_pointer

@exist:
	PLA
	STA aobject_ycoord
	LDX #$01
	DEC aobject_temp + $01
	BNE @shooting_times_not_done
	INC aobject_frameset_upper_timer + $01

@shooting_times_not_done:
	JMP @processing

@xcoord_offset:
	.BYTE +8, -8

@turn_jump:
	LDA aobject_temp + $01
	BNE @not_landing
	JSR _check_bosses_toward
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	LDA #$04
	STA aobject_ycoord_speed + $01
	LDA #$80
	STA aobject_xcoord_speed_fraction + $01
	INC aobject_temp + $01

@not_landing:
	JSR @check_got_hit
	BNE @landing

@e6:
	RTS

@landing:
	LDA z:zboss_ai_pointer
	CMP #$06
	BEQ @e6
	LDA #$00
	STA aobject_temp + $01
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$5C
	JSR _init_bosses_object

@check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	JMP @quit

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time
	RTS

@quit:
	LDA #$08
	STA z:z01
	LDA #$0C
	STA z:z02
	LDA aobject_ycoord_speed + $01
	PHP
	JSR _check_bosses_not_landing_collision
	PLP
	BPL @jump_up
	LDA z:z00
	RTS

@jump_up:
	LDA #$00
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @running
	.LOBYTES @ready_time_stop
	.LOBYTES @time_stop
	.LOBYTES @turn_jump

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @running
	.HIBYTES @ready_time_stop
	.HIBYTES @time_stop
	.HIBYTES @turn_jump

_metalman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@run_in_place:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BNE @pressed
	LDA z:zboss_timer
	CMP #$BB
	BNE @not_max

@pressed:
	LDA z:zrandom
	STA z:z01
	LDA #$03
	STA z:z02
	JSR _divide_mod
	LDX z:z04
	JSR @jump
	JMP @done

@not_max:
	LDA z:z00
	CMP #$48
	BCS @skip
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	LDY aobject_xcoord + $01
	CPY #$80
	BCS @on_right
	ORA #objects_right

@on_right:
	STA aobject_flag + $01
	LDX #$03
	JSR @jump

@done:
@skip:
	INC z:zboss_timer
	JSR @swap_background_palette
	RTS

@jump:
	LDA #$65
	JSR _init_bosses_object
	LDA #$01
	STA z:zboss_timer
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $01
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + $01
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $01
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $01
	LDA @ai_pointer_table, X
	STA z:zboss_ai_pointer
	LDA aobject_flag + $01
	STA aobject_temp + $01
	RTS

@ycoord_speed_fraction_table:
	.BYTE $ED, $A8, $00, $00

@ycoord_speed_table:
	.BYTE +6, +5, +4, +8

@xcoord_speed_fraction_table:
	.BYTE $00, $00, $00, $20

@xcoord_speed_table:
	.BYTE +0, +0, +0, +2

@ai_pointer_table:
	.BYTE $03, $03, $03, $04

@jump_and_shoot:
	LDA aobject_temp + $01
	STA aobject_flag + $01
	JSR @swap_background_palette
	LDA z:z00
	PHA
	JSR _check_bosses_toward
	PLA
	STA z:z00
	LDA aobject_ycoord_speed + $01
	BPL @raising
	DEC z:zboss_timer
	BNE @nz_1
	LDY #$12
	LDA z:zboss_ai_pointer
	CMP #$04
	BNE @not_jump_ahead
	LDY #$40

@not_jump_ahead:
	STY z:zboss_timer
	LDA #$00
	STA aobject_ycoord_speed + $01
	STA aobject_ycoord_speed_fraction + $01
	LDA aobject_flag + $01
	AND #~objects_with_gravity
	STA aobject_flag + $01
	LDA #$01
	STA aobject_frameset_upper_timer + $01

@nz_1:
	LDA z:z00
	BEQ @raising
	LDA #$00
	STA z:zboss_timer
	DEC z:zboss_ai_pointer
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	LDA #$64
	JSR _init_bosses_object

@raising:
	LDA aobject_frameset_upper_timer + $01
	BNE @nz_2
	STA aobject_frameset_lower_timer + $01

@nz_2:
	CMP #$02
	BNE @not_throwing
	LDA aobject_frameset_lower_timer + $01
	BNE @not_throwing
	track_queue track_metal_blade
	LDA #$5C
	LDX #$01
	JSR _bosses_shoot_object
	CLC
	TYA
	ADC #$10
	TAX
	STX z:zsprites_pointer
	LDA #$00
	STA z:z08
	LDA #$04
	STA z:z09
	JSR _calc_bosses_to_megaman_distance_speed
	LDA aobject_flag + $01
	ORA #objects_with_gravity
	STA aobject_flag + $01

@not_throwing:
	RTS

@swap_background_palette:
	LDA #black
	STA acurrent_background_palette + $10
	CLC
	LDA aboss_defeated_timer_1
	ADC #$01
	STA aboss_defeated_timer_1
	LDA aboss_defeated_timer_2
	ADC #$00
	STA aboss_defeated_timer_2
	BEQ @not_flash
	LDA aboss_defeated_timer_1
	CMP #$77
	BNE @not_flash
	LDA #$00
	STA aboss_defeated_timer_1
	STA aboss_defeated_timer_2
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BEQ @not_flash
	LDA #pale_gray
	STA acurrent_background_palette + $10
	LDX #$00
	LDY #$00
	LDA z:zconveyor_right
	EOR #objects_right
	STA z:zconveyor_right
	LDA z:zconveyor_left
	EOR #objects_right
	STA z:zconveyor_left
	BEQ @on_left
	INX

@on_left:
@loop:
	LDA @conveyor_palette, X
	STA abackground_palette_set + $05, Y
	INX
	INX
	INY
	CPY #$03
	BNE @loop

@not_flash:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	JMP @quit

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time

@quit:
	LDA #$07
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _check_bosses_not_landing_collision
	RTS

@conveyor_palette:
	.BYTE light_gray, light_gray, light_gray
	.BYTE light_rose, light_rose, light_gray

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @run_in_place
	.LOBYTES @jump_and_shoot
	.LOBYTES @jump_and_shoot

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @run_in_place
	.HIBYTES @jump_and_shoot
	.HIBYTES @jump_and_shoot

_crashman_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@landing:
	LDA aobject_temp + $01
	ORA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_speed + $01
	LDA #$47
	STA aobject_xcoord_speed_fraction + $01
	LDA #$01
	STA aobject_xcoord_speed + $01
	LDA #$6A
	JSR _init_bosses_object
	INC z:zboss_ai_pointer
	JSR @check_got_hit
	RTS

@turning:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BNE @pressed
	LDA aboss_defeated_timer_1
	BEQ @turn_only
	DEC aboss_defeated_timer_1
	BNE @turn_only

@pressed:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $01
	JSR _check_bosses_toward
	LDA aobject_flag + $01
	STA aboss_defeated_timer_2
	LDA #$ED
	STA aobject_ycoord_speed_fraction + $01
	LDA #$06
	STA aobject_ycoord_speed + $01
	CLC
	LDA z:z00
	ADC #$20
	STA z:z0B
	LDA z:zrandom
	AND #%00000001
	BEQ @even
	SEC
	LDA z:z0B
	SBC #$40
	BCS @not_too_close
	LDA #$00

@not_too_close:
	STA z:z0B

@even:
	LDA #$37
	STA z:z0D
	LDA #$00
	STA z:z0A
	STA z:z0C
	JSR _divide_fraction
	LDA z:z0F
	STA aobject_xcoord_speed + $01
	LDA z:z0E
	STA aobject_xcoord_speed_fraction + $01
	LDA #$6B
	JSR _init_bosses_object
	LDA #$04
	STA z:zboss_ai_pointer
	BNE @continue

@turn_only:
	LDX aobject_xcoord + $01
	LDA aobject_flag + $01
	AND #objects_right
	BNE @on_right
	CPX #$38
	BCS @not_turn
	BCC @turn_right

@on_right:
	CPX #$C8
	BCC @not_turn

@turn_right:
	LDA aobject_temp + $01
	EOR #objects_right
	STA aobject_temp + $01
	LDA aobject_flag + $01
	EOR #objects_right
	STA aobject_flag + $01

@continue:
@not_turn:
	JSR @check_got_hit
	RTS

@jump_and_throw:
	LDA aboss_defeated_timer_2
	STA aobject_flag + $01
	LDA aobject_ycoord_speed + $01
	PHP
	JSR @check_got_hit
	LDA #$0B
	STA z:z01
	LDA #$0C
	STA z:z02
	JSR _check_bosses_not_landing_collision
	PLP
	BMI @jump_down
	LDA aobject_ycoord_speed + $01
	BPL @run_jump_throw_regular
	LDA #$01
	STA aobject_frameset_upper_timer + $01
	BNE @run_jump_throw_regular

@jump_down:
	LDA z:z00
	BEQ @air
	LDA #$02
	STA z:zboss_ai_pointer
	LDA #$9C
	STA aboss_defeated_timer_1
	BNE @run_jump_throw_regular

@air:
	LDA aobject_frameset_upper_timer + $01
	CMP #$02
	BNE @run_jump_throw_regular
	LDA aobject_frameset_lower_timer + $01
	BNE @run_jump_throw_regular
	LDA #$5E
	JSR _check_bosses_shoot_object_regular
	BCC @run_jump_throw_regular
	LDA #$5E
	LDX #$01
	JSR _bosses_shoot_object
	BCS @run_jump_throw_regular
	CLC
	TYA
	ADC #$10
	TAX
	STX z:zsprites_pointer
	LDA #$24
	STA z:z08
	LDA #$06
	STA z:z09
	JSR _calc_bosses_to_megaman_distance_speed

@run_jump_throw_regular:
	LDA aobject_frameset_upper_timer + $01
	BNE @nz
	STA aobject_frameset_lower_timer + $01

@nz:
	JSR _check_bosses_toward
	RTS

@check_got_hit:
	LDA aboss_invincibility_time
	BEQ @check_hit
	JSR _bosses_not_death
	RTS

@check_hit:
	JSR _check_weapon_bosses_hit
	LDA z:z02
	CMP #$01
	BNE @quit
	LDA #$12
	STA aboss_invincibility_time

@quit:
	RTS

@lo_jumptable:
	.LOBYTES _bosses_appeared
	.LOBYTES @landing
	.LOBYTES @turning
	.LOBYTES @jump_and_throw

@hi_jumptable:
	.HIBYTES _bosses_appeared
	.HIBYTES @landing
	.HIBYTES @turning
	.HIBYTES @jump_and_throw

_mecha_dragon_boss_ai:
	DEX
	LDA mecha_dragon_boss_ai_lo_jumptable, X
	STA z:z08
	LDA mecha_dragon_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_draw_mecha_dragon:
	LDA aobject_temp + $01
	BNE @draw_mecha_dragon_background
	LDA #$09
	JSR _draw_bosses_background
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$40
	BEQ @load_tiles_done
	RTS

@load_tiles_done:
	INC aobject_temp + $01
	LDA #$00
	STA z:zboss_timer
	LDA #$80
	STA aboss_defeated_timer_1
	RTS

@draw_mecha_dragon_background:
	CMP #$01
	BNE @draw_mecha_dragon_attributes
	LDX z:zboss_timer
	LDA @ppu_hi_address, X
	STA aobject_ppu_address
	LDA @ppu_lo_address, X
	STA aobject_ppu_address + 1
	LDA @draw_tiles_length, X
	STA z:zobject_tiles_update_size
	STA z:z00
	LDY #$00

@loop_1:
	LDA aboss_defeated_timer_1
	STA aobject_ppu_data, Y
	INY
	INC aboss_defeated_timer_1
	DEC z:z00
	BNE @loop_1
	INX
	STX z:zboss_timer
	CPX #$0F
	BNE @processing
	INC aobject_temp + $01
	LDA #$00
	STA z:zboss_timer
	RTS

@draw_mecha_dragon_attributes:
	CMP #$02
	BNE @draw_attributes_done
	LDX z:zboss_timer
	CPX #$10
	BEQ @max
	LDA #$23
	STA aobject_ppu_address
	TXA
	ASL
	ADC #$D0
	STA aobject_ppu_address + 1
	LDY #$00

@loop_2:
	LDA @attributes_table, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY #$04
	BNE @loop_2
	STY z:zobject_tiles_update_size
	STX z:zboss_timer
	RTS

@max:
	INC aobject_temp + $01
	LDA #$23
	STA aobject_ppu_address
	LDA #$E0
	STA aobject_ppu_address + 1
	LDA #$1E
	STA z:zboss_timer

@draw_attributes_done:
	LDA #$00
	LDX #$1F

@loop_3:
	STA aobject_ppu_data, X
	DEX
	BPL @loop_3
	CLC
	LDA #$20
	STA z:zobject_tiles_update_size
	ADC aobject_ppu_address + 1
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	DEC z:zboss_timer
	BNE @processing
	INC z:zboss_ai_pointer
	LDA #$00
	STA aobject_temp + $01

@processing:
	RTS

@ppu_hi_address:
	hileftscreencoord 11, 10
	hileftscreencoord 9, 11
	hileftscreencoord 7, 12
	hileftscreencoord 6, 13
	hileftscreencoord 5, 14
	hileftscreencoord 5, 15
	hileftscreencoord 14, 15
	hileftscreencoord 4, 16
	hileftscreencoord 4, 17
	hileftscreencoord 4, 18
	hileftscreencoord 4, 19
	hileftscreencoord 4, 20
	hileftscreencoord 4, 21
	hileftscreencoord 5, 22
	hileftscreencoord 6, 23

@ppu_lo_address:
	loleftscreencoord 11, 10
	loleftscreencoord 9, 11
	loleftscreencoord 7, 12
	loleftscreencoord 6, 13
	loleftscreencoord 5, 14
	loleftscreencoord 5, 15
	loleftscreencoord 14, 15
	loleftscreencoord 4, 16
	loleftscreencoord 4, 17
	loleftscreencoord 4, 18
	loleftscreencoord 4, 19
	loleftscreencoord 4, 20
	loleftscreencoord 4, 21
	loleftscreencoord 5, 22
	loleftscreencoord 6, 23

@draw_tiles_length:
	.BYTE $03
	.BYTE $06
	.BYTE $08
	.BYTE $0A
	.BYTE $0B
	.BYTE $05
	.BYTE $02
	.BYTE $07
	.BYTE $07
	.BYTE $08
	.BYTE $08
	.BYTE $08
	.BYTE $08
	.BYTE $07
	.BYTE $03

@attributes_table:
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_0 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

_mecha_dragon_appear:
	LDA aobject_temp + $01
	BNE @set_body_done
	LDA #$67
	LDX #$01
	JSR _bosses_shoot_object
	LDA z:zscreen_id
	STA aobject_screen + $10, Y
	LDA #$30
	STA aobject_xcoord + $10, Y
	LDA #$E0
	STA aobject_ycoord + $10, Y
	INC aobject_temp + $01
	RTS

@set_body_done:
	CMP #$02
	BCS @show_full
	RTS

@show_full:
	BNE @set_done
	LDX #$0F

@loop:
	LDA @background_palette_set, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop
	JSR _bosses_init
	LDA #$03
	STA z:zboss_ai_pointer
	LDA #$5D
	STA z:zboss_timer
	LDA #$65
	LDX #$01
	JSR _bosses_shoot_object
	LDA #$40
	STA aobject_xcoord + $10, Y
	LDA #$87
	STA aobject_ycoord + $10, Y
	LDA #$66
	LDX #$01
	JSR _bosses_shoot_object
	LDA #$38
	STA aobject_xcoord + $10, Y
	LDA #$BF
	STA aobject_ycoord + $10, Y
	track_queue track_mecha_dragon

@set_done:
	RTS

@background_palette_set:
	.BYTE black, pale_gray,    white_chartreuse, light_chartreuse
	.BYTE black, white_orange, light_azure,      light_chartreuse
	.BYTE black, light_azure,  white_chartreuse, light_chartreuse
	.BYTE black, white_orange, white_chartreuse, light_chartreuse

_mecha_dragon_fly_and_hit_blocks:
	LDA #$63
	STA z:z00
	LDY #$0F

@loop:
	JSR _check_bosses_shoot_object_with_speed
	BCS @not_set
	LDA aobject_flag + $10, Y
	AND #objects_with_gravity
	BNE @with_gravity
	LDA aobject_xcoord + $10, Y
	CMP #$60
	BCS @not_hit_down
	LDA #objects_with_gravity | objects_right | objects_exist
	STA aobject_flag + $10, Y
	LDA z:zrandom
	AND #%00000011
	STA aobject_xcoord_speed + $10, Y

@with_gravity:
@not_hit_down:
	DEY
	BPL @loop

@not_set:
	JSR _mecha_dragon_flying
	DEC z:zboss_timer
	BNE @nz_1
	LDA #$5D
	STA z:zboss_timer

@nz_1:
	JSR _mecha_dragon_check_run_hit
	LDA aobject_frameset_upper_timer + $01
	BNE @nz_2
	STA aobject_frameset_lower_timer + $01

@nz_2:
	RTS

_mecha_dragon_flying:
	LDA aobject_temp + $01
	BNE @fly_down
	LDA aobject_ycoord + $01
	CMP #$53
	BCC @fly_down

@fly_up:
	LDA #$00
	STA aobject_temp + $01
	LDA #$00
	STA aobject_ycoord_speed + $01
	LDA #$80
	STA aobject_ycoord_speed_fraction + $01
	RTS

@fly_down:
	LDA aobject_ycoord + $01
	CMP #$73
	BCS @fly_up
	LDA #$01
	STA aobject_temp + $01
	LDA #$FF
	STA aobject_ycoord_speed + $01
	LDA #$80
	STA aobject_ycoord_speed_fraction + $01
	RTS

_mecha_dragon_refilling:
	LDA #$63
	STA z:z00
	LDY #$0F

@loop:
	JSR _check_bosses_shoot_object_with_speed
	BCS @not_set
	LDA aobject_flag + $10, Y
	AND #objects_with_gravity
	BNE @with_gravity
	LDA aobject_xcoord + $10, Y
	CMP #$90
	BCS @no_gravity
	LDA #objects_with_gravity | objects_right | objects_exist
	STA aobject_flag + $10, Y

@with_gravity:
@no_gravity:
	DEY
	BPL @loop

@not_set:
	JSR _mecha_dragon_flying
	JSR _mecha_dragon_check_run_hit
	JSR _bosses_hp_refilling
	LDA aobject_hp + $01
	CMP #$1C
	BNE @refilling
	LDA #$00
	STA aobject_temp + $01
	INC z:zboss_ai_pointer

@refilling:
	RTS

_mecha_dragon_shoot_fireball:
	track_queue track_mecha_dragon
	LDA #$01
	STA aobject_frameset_upper_timer + $01
	LDA #$68
	LDX #$01
	JSR _bosses_shoot_object
	BCS _mecha_dragon_shoot_fireball_exist
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$10
	STA aobject_ycoord + $10, Y
	LDA #$02

_alien_shoot_bullet:
	STA z:z09
	LDA #$00
	STA z:z08
	TYA
	CLC
	ADC #$10
	TAX
	STX z:zsprites_pointer
	JSR _calc_bosses_to_megaman_distance_speed

_mecha_dragon_shoot_fireball_exist:
	RTS

_mecha_dragon_ready_shoot:
	LDA aobject_temp + $01
	BNE @moving
	LDY #$A0
	JSR _set_mecha_dragon_shoot_fireball_speed
	INC aobject_temp + $01

@moving:
	JSR _mecha_dragon_compare_megaman_ycoord
	BCS @shooting
	LDA aobject_xcoord + $01
	CMP #$A0
	BCC _mecha_dragon_move_horizontal

@shooting:
	LDA #$00
	STA aobject_temp + $01
	INC z:zboss_ai_pointer

_mecha_dragon_move_horizontal:
	LDA aobject_frameset_upper_timer + $01
	BNE @nz
	STA aobject_frameset_lower_timer + $01

@nz:
	LDA aobject_ycoord_speed + $01
	BPL @move_down
	LDA aobject_ycoord + $01
	CMP #$A0
	BCC @not_turn
	BCS @turn

@move_down:
	LDA aobject_ycoord + $01
	CMP #$20
	BCS @not_turn

@turn:
	CLC
	LDA aobject_ycoord_speed_fraction + $01
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction + $01
	LDA aobject_ycoord_speed + $01
	EOR #%11111111
	ADC #$00
	STA aobject_ycoord_speed + $01

@not_turn:
	LDA aboss_defeated_timer_1
	STA aobject_flag + $01
	JSR _mecha_dragon_check_run_hit
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	RTS

_set_mecha_dragon_shoot_fireball_speed:
	LDA #$00
	STA z:z09
	LDA #$C4
	STA z:z08
	LDX #$01
	STX z:zsprites_pointer
	LDA aobject_xcoord
	PHA
	STY aobject_xcoord
	JSR _calc_bosses_to_megaman_distance_speed
	LDA #$C3
	STA aboss_defeated_timer_1
	PLA
	STA aobject_xcoord
	RTS

_mecha_dragon_fly_back:
	LDA aobject_temp + $01
	BNE @set_done
	LDY #$58
	JSR _set_mecha_dragon_shoot_fireball_speed
	LDA #$83
	STA aboss_defeated_timer_1
	INC aobject_temp + $01

@set_done:
	LDA aobject_xcoord + $01
	CMP #$58
	BEQ @turn_ahead
	BCS @back

@turn_ahead:
	LDA #$00
	STA aobject_temp + $01
	DEC z:zboss_ai_pointer

@back:
	JMP _mecha_dragon_move_horizontal

_mecha_dragon_compare_megaman_ycoord:
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord + $01
	BCS @on_bottom
	EOR #%11111111
	ADC #$01

@on_bottom:
	CMP #$04
	BCS @not_shoot
	JSR _mecha_dragon_shoot_fireball
	SEC
	RTS

@not_shoot:
	CLC
	RTS

_wily_bosses_fade_out_death:
	LDA z:zboss_timer
	BNE @nz_1
	LDA #black
	STA acurrent_background_palette + $10
	JMP _bosses_death_regular

@nz_1:
	JSR _wily_bosses_death_flash_screen
	LDA z:znmi_frame
	AND #%00001111
	BNE @16_frames
	LDX #$0F

@loop_1:
	SEC
	LDA acurrent_background_palette, X
	SBC #$10
	BPL @fading_1
	LDA #black

@fading_1:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_1
	LDX #$07

@loop_2:
	SEC
	LDA acurrent_background_palette + $18, X
	SBC #$10
	BPL @fading_2
	LDA #black

@fading_2:
	STA acurrent_background_palette + $18, X
	DEX
	BPL @loop_2
	DEC z:zboss_timer
	BNE @nz_2
	LDA #$70
	STA aboss_defeated_timer_1

@16_frames:
@nz_2:
	RTS

_mecha_dragon_check_run_hit:
	LDA aobject_ycoord
	CMP #$B0
	BCC @not_bottom
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_speed + $01

@not_bottom:
	LDA #black
	STA acurrent_background_palette + $10
	JSR _check_weapon_bosses_collision
	BCC @bosses_not_death
	LDA #$0D
	STA z:zboss_timer
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	INC aregular_boss_defeated_flag
	LDA #$07
	STA z:zboss_ai_pointer
	BNE @fade_set

@bosses_not_death:
	LDA z:z02
	CMP #$01
	BNE _wily_bosses_not_hit
	LDA #pale_gray
	STA acurrent_background_palette + $10

@fade_set:
_wily_bosses_not_hit:
	JSR _bosses_not_death
	SEC
	LDA z:zmecha_dragon_ycoord_fraction
	SBC aobject_ycoord_speed_fraction + $01
	STA z:zmecha_dragon_ycoord_fraction
	LDA z:zmecha_dragon_ycoord
	SBC aobject_ycoord_speed + $01
	STA z:zmecha_dragon_ycoord
	BEQ @check_toward
	LDY aobject_ycoord_speed + $01
	BPL @move_up
	CMP #$10
	BCS @check_toward
	CLC
	ADC #$10
	STA z:zmecha_dragon_ycoord
	JMP @check_toward

@move_up:
	CMP #$11
	BCS @check_toward
	SEC
	SBC #$10
	STA z:zmecha_dragon_ycoord

@check_toward:
	LDA aobject_flag + $01
	AND #objects_right
	BEQ @left
	CLC
	LDA z:zmecha_dragon_xcoord_fraction
	ADC aobject_xcoord_speed_fraction + $01
	STA z:zmecha_dragon_xcoord_fraction
	LDA z:zmecha_dragon_xcoord
	ADC aobject_xcoord_speed + $01
	STA z:zmecha_dragon_xcoord
	LDA z:zmecha_dragon_screen
	ADC #$00
	STA z:zmecha_dragon_screen
	RTS

@left:
	SEC
	LDA z:zmecha_dragon_xcoord_fraction
	SBC aobject_xcoord_speed_fraction + $01
	STA z:zmecha_dragon_xcoord_fraction
	LDA z:zmecha_dragon_xcoord
	SBC aobject_xcoord_speed + $01
	STA z:zmecha_dragon_xcoord
	LDA z:zmecha_dragon_screen
	SBC #$00
	STA z:zmecha_dragon_screen
	RTS

mecha_dragon_boss_ai_lo_jumptable:
	.LOBYTES _draw_mecha_dragon
	.LOBYTES _mecha_dragon_appear
	.LOBYTES _mecha_dragon_fly_and_hit_blocks
	.LOBYTES _mecha_dragon_refilling
	.LOBYTES _mecha_dragon_ready_shoot
	.LOBYTES _mecha_dragon_fly_back
	.LOBYTES _wily_bosses_fade_out_death

mecha_dragon_boss_ai_hi_jumptable:
	.HIBYTES _draw_mecha_dragon
	.HIBYTES _mecha_dragon_appear
	.HIBYTES _mecha_dragon_fly_and_hit_blocks
	.HIBYTES _mecha_dragon_refilling
	.HIBYTES _mecha_dragon_ready_shoot
	.HIBYTES _mecha_dragon_fly_back
	.HIBYTES _wily_bosses_fade_out_death

_picopico_kun_boss_ai:
	DEX
	LDA picopico_kun_boss_ai_lo_jumptable, X
	STA z:z08
	LDA picopico_kun_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_picopico_kun_refilling:
	LDA z:zboss_timer
	BNE @track_queue_done
	INC z:zboss_timer
	track_queue track_boss_fighting

@track_queue_done:
	JSR _bosses_hp_refilling
	LDA aobject_hp + $01
	CMP #$1C
	BNE @processing
	LDA #$6F
	STA aobject_temp + $01
	INC z:zboss_ai_pointer
	LDA #$00
	STA z:zboss_timer

@processing:
	RTS

_picopico_kun_set_done:
	JMP _picopico_kun_unbeaten

_picopico_kun_connecting:
	DEC aobject_temp + $01
	BNE _picopico_kun_set_done
	LDA #$1F
	STA aobject_temp + $01
	LDA #$6A
	JSR _check_bosses_shoot_object_regular
	BCC _picopico_kun_set_done
	LDX z:zboss_timer
	LDY picopico_kun_object_set_index_table, X
	LDX #$00

@loop_1:
	LDA picopico_kun_object_set_table, Y
	STA z:z08, X
	INY
	INX
	CPX #$08
	BNE @loop_1
	LDA z:zboss_timer
	ASL
	STA z:z01
	LDX #$00

@loop_2:
	STX z:z02
	LDA #$6A
	LDX #$01
	JSR _bosses_shoot_object
	LDX z:z01
	LDA picopico_kun_ycoord_table, X
	STA aobject_ycoord + $10, Y
	LDA picopico_kun_xcoord_table, X
	STA aobject_xcoord + $10, Y
	LDA picopico_kun_move_timer_index_table, X
	STA aobject_temp + $10, Y
	LDX z:z02
	LDA z:z08, X
	STA aobject_ycoord_speed + $10, Y
	LDA z:z0A, X
	STA aobject_xcoord_speed + $10, Y
	LDA z:z0C, X
	STA aobject_flag + $10, Y
	LDA z:z0E, X
	STA aenemies_temp, Y
	INC z:z01
	INX
	CPX #$02
	BNE @loop_2
	LDA z:zboss_timer
	ASL
	STA z:z0C

@loop_3:
	LDX z:z0C
	LDA aobject_screen
	STA z:z09
	LDA picopico_kun_xcoord_table, X
	AND #%11110000
	STA z:z08
	LDA picopico_kun_ycoord_table, X
	STA z:z0A
	JSR _draw_other_on_screen
	LDA z:zdraw_other_flag
	BNE @set_flag
	INC z:zdraw_other_flag
	INC z:z0C
	BNE @loop_3

@set_flag:
	LDA #$82
	STA z:zdraw_other_flag
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$0E
	BNE _picopico_kun_unbeaten
	INC z:zboss_ai_pointer

_picopico_kun_unbeaten:
	RTS

picopico_kun_object_set_index_table:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $08
	.BYTE $10
	.BYTE $00
	.BYTE $00
	.BYTE $10
	.BYTE $08
	.BYTE $00
	.BYTE $10
	.BYTE $10
	.BYTE $00
	.BYTE $10

picopico_kun_ycoord_table:
	.BYTE $57, $57
	.BYTE $87, $87
	.BYTE $B7, $B7
	.BYTE $27, $C7
	.BYTE $27, $C7
	.BYTE $77, $77
	.BYTE $37, $37
	.BYTE $27, $C7
	.BYTE $27, $C7
	.BYTE $A7, $A7
	.BYTE $27, $C7
	.BYTE $27, $C7
	.BYTE $97, $97
	.BYTE $27, $C7

picopico_kun_xcoord_table:
	.BYTE $28, $D8
	.BYTE $28, $D8
	.BYTE $28, $D8
	.BYTE $58, $68
	.BYTE $B8, $A8
	.BYTE $28, $D8
	.BYTE $28, $D8
	.BYTE $A8, $98
	.BYTE $38, $48
	.BYTE $28, $D8
	.BYTE $68, $58
	.BYTE $C8, $B8
	.BYTE $28, $D8
	.BYTE $48, $38

picopico_kun_move_timer_index_table:
	.BYTE $00, $00
	.BYTE $00, $00
	.BYTE $00, $00
	.BYTE $00, $00
	.BYTE $01, $01
	.BYTE $01, $01
	.BYTE $01, $01
	.BYTE $01, $01
	.BYTE $02, $02
	.BYTE $02, $02
	.BYTE $02, $02
	.BYTE $02, $02
	.BYTE $03, $03
	.BYTE $03, $03

picopico_kun_object_set_table:
	.BYTE +0, +0, +1, +1, can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_right | objects_exist, can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist,                 $50, $50
	.BYTE -1, +1, +0, +0, can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_right | objects_exist, can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist,                 $50, $50
	.BYTE -1, +1, +0, +0, can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist,                 can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_right | objects_exist, $50, $50

_bosses_one_left:
	LDA aobject_hp + $01
	BNE @nz
	LDA #$BB
	STA z:zboss_timer
	INC aregular_boss_defeated_flag
	track_queue mute_music

@nz:
	RTS

_wily_bosses_regular_death:
	LDA z:zboss_timer
	BEQ @set_timer_done
	DEC z:zboss_timer
	BEQ @set_timer
	JSR _wily_bosses_death_flash_screen
	RTS

@set_timer:
	LDA #$80
	STA aboss_defeated_timer_1

@set_timer_done:
	LDA #black
	STA acurrent_background_palette + $10
	JMP _bosses_death_regular

_wily_bosses_death_flash_screen:
	LDX #$0F
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	track_queue track_enemy_hit
	LDX #pale_gray

@8_frames:
	STX acurrent_background_palette + $10
	RTS

picopico_kun_boss_ai_lo_jumptable:
	.LOBYTES _picopico_kun_refilling
	.LOBYTES _picopico_kun_connecting
	.LOBYTES _bosses_one_left

picopico_kun_boss_ai_hi_jumptable:
	.HIBYTES _picopico_kun_refilling
	.HIBYTES _picopico_kun_connecting
	.HIBYTES _bosses_one_left

_guts_tank_boss_ai:
	DEX
	LDA guts_tank_boss_ai_lo_jumptable, X
	STA z:z08
	LDA guts_tank_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_guts_tank_load_tiles:
	JSR _bosses_hp_refilling
	LDA aobject_temp + $01
	BNE @set_address_done
	LDA #$02
	STA ano_of_palette
	LDA #$04
	STA apalette_animation_frame
	LDA #>load_guts_tank_chr
	STA aboss_defeated_timer_1
	LDA #<load_guts_tank_chr
	STA aboss_defeated_timer_2
	LDA #$10
	STA aobject_ppu_address
	LDA #$E0
	STA aobject_ppu_address + 1
	LDA #$69
	STA z:zboss_timer
	INC aobject_temp + $01

@set_address_done:
	LDA aobject_temp + $01
	CMP #$01
	BNE @load_tiles_done
	LDA #<.BANK (load_guts_tank_chr)
	JSR _draw_bosses_background
	DEC z:zboss_timer
	BEQ @next_1
	RTS

@next_1:
	INC aobject_temp + $01
	LDA #$10
	STA aboss_defeated_timer_1
	RTS

@load_tiles_done:
	CMP #$02
	BNE @draw_guts_tank_upper_done
	LDX z:zboss_timer
	CPX #$0B
	BEQ @next_2
	LDA guts_tank_ppu_hi_address, X
	STA aobject_ppu_address
	LDA guts_tank_ppu_lo_address, X
	STA aobject_ppu_address + 1
	LDA guts_tank_draw_length, X
	STA z:zobject_tiles_update_size
	LDY #$00

@loop_1:
	LDA aboss_defeated_timer_1
	STA aobject_ppu_data, Y
	INC aboss_defeated_timer_1
	INY
	CPY z:zobject_tiles_update_size
	BNE @loop_1
	INX
	STX z:zboss_timer
	RTS

@next_2:
	LDA #$21
	STA aobject_ppu_address
	LDA #$E0
	STA aobject_ppu_address + 1
	LDA #$00
	STA z:zboss_timer
	INC aobject_temp + $01

@draw_guts_tank_upper_done:
	LDA aobject_temp + $01
	CMP #$03
	BNE @draw_guts_tank_lower_done
	CLC
	LDA #$20
	STA z:zobject_tiles_update_size
	ADC aobject_ppu_address + 1
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	LDX z:zboss_timer
	CPX #$B0
	BEQ @next_3
	LDY #$00

@loop_2:
	LDA guts_tank_lower_tileset, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY #$16
	BNE @loop_2
	STX z:zboss_timer
	RTS

@next_3:
	LDA #$23
	STA aobject_ppu_address
	LDA #$C0
	STA aobject_ppu_address + 1
	LDA #$00
	STA z:zboss_timer
	INC aobject_temp + $01

@draw_guts_tank_lower_done:
	CLC
	LDA aobject_ppu_address + 1
	ADC #$08
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	LDA #$06
	STA z:zobject_tiles_update_size
	LDX z:zboss_timer
	CPX #$1E
	BEQ @next_4
	LDY #$00

@loop_3:
	LDA guts_tank_attributes, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY #$06
	BNE @loop_3
	STX z:zboss_timer
	RTS

@next_4:
	LDA #$00
	STA z:zobject_tiles_update_size
	STA aobject_temp + $01
	LDA #$8B
	STA aboss_defeated_timer_1
	INC z:zboss_ai_pointer
	RTS

_guts_tank_set_object:
	LDA aobject_flag + $01
	BMI @exist
	LDA #$FF
	STA aobject_xcoord + $01

@exist:
	LDX aobject_temp + $01
	LDA z:zmecha_dragon_xcoord
	CMP @xcoord_table, X
	BNE @not_equal
	CPX #$01
	BNE @not_guts_tank
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist
	STA aobject_flag + $01
	LDA z:zmecha_dragon_xcoord_fraction
	STA aobject_xcoord_fraction + $01
	JMP @set_flags_done_1

@not_guts_tank:
	LDA @ycoord_table, X
	STA z:z01
	LDA @collision_xcoord_table, X
	STA z:z02
	LDA @object_table, X
	LDX #$01
	JSR _bosses_shoot_object
	LDA z:z01
	STA aobject_ycoord + $10, Y
	LDA #$FF
	STA aobject_xcoord + $10, Y
	LDA z:zmecha_dragon_xcoord_fraction
	STA aobject_xcoord_fraction + $10, Y
	LDA z:z02
	STA aobject_collision_xcoord + $10, Y

@set_flags_done_1:
	INC aobject_temp + $01
	LDA aobject_temp + $01
	CMP #$04
	BNE @not_equal
	LDA #$3F
	STA aobject_temp + $01
	INC z:zboss_ai_pointer

@not_equal:
	JSR _wily_bosses_not_hit
	RTS

@xcoord_table:
	.BYTE $D7, $C7, $A7, $8C

@object_table:
	.BYTE $69, $00, $63, $67

@ycoord_table:
	.BYTE $7F, $00, $A8, $68

@collision_xcoord_table:
	.BYTE $09, $00, $14, $06

_guts_tank_run_ahead:
	LDA z:zmecha_dragon_xcoord
	CMP #$30
	BNE @not_arrived
	LDA #$7D
	STA z:zboss_timer
	INC z:zboss_ai_pointer

@not_arrived:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist

_guts_tank_run_back_flags_done:
	STA aboss_defeated_timer_1
	LDA #$60
	STA aobject_xcoord_speed_fraction + $01
	JSR _run_guts_tank_shoot
	RTS

_guts_tank_run_back:
	LDA z:zmecha_dragon_xcoord
	CMP #$80
	BNE @not_arrived
	LDA #$7D
	STA z:zboss_timer
	INC z:zboss_ai_pointer

@not_arrived:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_right | objects_exist
	BNE _guts_tank_run_back_flags_done

_guts_tank_halt:
	LDA #$05
	BNE _guts_tank_set_run_back

_guts_tank_set_run_ahead_wait:
	LDA #$03

_guts_tank_set_run_back:
	STA z:z00
	DEC z:zboss_timer
	BNE @nz
	LDA z:z00
	STA z:zboss_ai_pointer

@nz:
	LDA #$00
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	JSR _run_guts_tank_shoot
	RTS

_run_guts_tank_shoot:
	DEC aobject_temp + $01
	BEQ @next
	JMP @check_hit

@next:
	LDA #$3F
	STA aobject_temp + $01
	JSR _check_bosses_toward
	LDA z:z00
	CMP #$38
	BCC @throw_bullet
	LDA #$69
	JSR _check_bosses_shoot_object_regular
	LDA #$01
	STA aobject_temp + $10, Y
	LDA #$02
	STA z:z02
	LDA #$34
	STA z:z00
	LDY #$0F

@loop:
	JSR _check_bosses_shoot_object_with_speed
	BCS @not_set
	DEC z:z02
	BEQ @check_hit
	DEY
	BPL @loop

@not_set:
	LDA #$34
	LDX #$01
	JSR _bosses_shoot_object
	BCS @check_hit
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_with_gravity | objects_exist
	STA aobject_flag + $10, Y
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$30
	STA aobject_ycoord + $10, Y
	LDA #$C4
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA #$01
	STA aobject_xcoord_speed + $10, Y
	LDA #$02
	STA aobject_ycoord_speed + $10, Y
	LDA #$D4
	STA aobject_ycoord_speed_fraction + $10, Y
	BNE @check_hit

@throw_bullet:
	SEC
	LDA z:z00
	SBC #$10
	BCS @not_too_close
	LDA #$00

@not_too_close:
	STA z:z08
	LDA #$00
	ASL z:z08
	ROL
	ASL z:z08
	ROL
	ASL z:z08
	ROL
	STA z:z09
	LDA #$69
	JSR _check_bosses_shoot_object_regular
	LDA #$00
	STA aobject_temp + $10, Y
	LDA #$35
	LDX #$01
	JSR _bosses_shoot_object
	BCS @check_hit
	LDA #can_collide_megaman | objects_with_gravity | objects_exist
	STA aobject_flag + $10, Y
	CLC
	LDA aobject_ycoord + $10, Y
	ADC #$10
	STA aobject_ycoord + $10, Y
	LDA #$04
	STA aobject_ycoord_speed + $10, Y
	LDA z:z09
	STA aobject_xcoord_speed + $10, Y
	LDA z:z08
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA #$01
	STA aobject_frameset_upper_timer + $01

@check_hit:
	LDA aobject_frameset_upper_timer + $01
	BNE @nz
	STA aobject_frameset_lower_timer + $01

@nz:
	LDA #black
	STA acurrent_background_palette + $10
	JSR _check_weapon_bosses_collision
	BCC _guts_tank_not_death

_set_wily_bosses_defeated_regular:
	LDA #$00
	STA ano_of_palette
	STA apalette_animation_frame
	LDA #$0D
	STA z:zboss_timer
	LDA #$00
	STA aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_speed + $01
	INC aregular_boss_defeated_flag
	LDA #$07
	STA z:zboss_ai_pointer
	BNE _check_guts_tank_got_hit

_guts_tank_not_death:
	LDA z:z02
	CMP #$01
	BNE _check_guts_tank_got_hit
	LDA #pale_gray
	STA acurrent_background_palette + $10

_check_guts_tank_got_hit:
	LDA aboss_defeated_timer_1
	STA aobject_flag + $01
	JSR _wily_bosses_not_hit
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	RTS

guts_tank_boss_ai_lo_jumptable:
	.LOBYTES _guts_tank_load_tiles
	.LOBYTES _guts_tank_set_object
	.LOBYTES _guts_tank_run_ahead
	.LOBYTES _guts_tank_halt
	.LOBYTES _guts_tank_run_back
	.LOBYTES _guts_tank_set_run_ahead_wait

guts_tank_boss_ai_hi_jumptable:
	.HIBYTES _guts_tank_load_tiles
	.HIBYTES _guts_tank_set_object
	.HIBYTES _guts_tank_run_ahead
	.HIBYTES _guts_tank_halt
	.HIBYTES _guts_tank_run_back
	.HIBYTES _guts_tank_set_run_ahead_wait

_boobeam_trap_boss_ai:
	DEX
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@set_boobeam_trap:
	JSR _bosses_hp_refilling
	LDA aobject_hp + $01
	CMP #$1C
	BEQ @done
	RTS

@done:
	LDA #$04
	STA z:z02

@loop:
	LDA #$6D
	LDX #$01
	JSR _bosses_shoot_object
	LDX z:z02
	LDA @xcoord_table, X
	STA aobject_xcoord + $10, Y
	LDA @ycoord_table, X
	STA aobject_ycoord + $10, Y
	LDA @object_flag_table, X
	STA aobject_flag + $10, Y
	DEC z:z02
	BPL @loop
	INC z:zboss_ai_pointer
	RTS

@xcoord_table:
	.BYTE $14, $44, $AC, $EC, $EC

@ycoord_table:
	.BYTE $60, $30, $40, $70, $B0

@object_flag_table:
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist

@lo_jumptable:
	.LOBYTES @set_boobeam_trap
	.LOBYTES _bosses_one_left

@hi_jumptable:
	.HIBYTES @set_boobeam_trap
	.HIBYTES _bosses_one_left

_wily_machine_2_boss_ai:
	DEX
	LDA wily_machine_2_boss_ai_lo_jumptable, X
	STA z:z08
	LDA wily_machine_2_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_load_wily_machine_2_phase_1:
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA aobject_temp + $01
	BNE @set_load_chr_done
	LDA #$02
	STA ano_of_palette
	LDA #$04
	STA apalette_animation_frame
	LDA #>load_wily_machine_2_chr
	STA aboss_defeated_timer_1
	LDA #<load_wily_machine_2_chr
	STA aboss_defeated_timer_2
	STA ano_of_palette
	STA apalette_animation_frame
	LDA #black
	LDX #$0B

@loop_1:
	STA acurrent_background_palette + $04, X
	DEX
	BPL @loop_1
	LDA #$15
	STA aobject_ppu_address
	LDA #$A0
	STA aobject_ppu_address + 1
	LDA #$52
	STA z:zboss_timer
	INC aobject_temp + $01

@set_load_chr_done:
	LDA aobject_temp + $01
	CMP #$01
	BNE @set_attributes_address_done
	LDA #<.BANK (load_wily_machine_2_chr)
	JSR _draw_bosses_background
	DEC z:zboss_timer
	BEQ @next_1
	RTS

@next_1:
	INC aobject_temp + $01
	LDA #$00
	STA z:zboss_timer
	LDA #$27
	STA aobject_ppu_address
	LDA #$CB
	STA aobject_ppu_address + 1
	RTS

@set_attributes_address_done:
	CMP #$02
	BNE @set_attributes_done
	LDX z:zboss_timer
	CPX #$14
	BEQ @next_2
	JSR _set_wily_machine_2_attributes
	RTS

@next_2:
	INC aobject_temp + $01
	LDA #$00
	STA z:zboss_timer
	LDA #$5C
	STA aboss_defeated_timer_1
	RTS

@set_attributes_done:
	LDX z:zboss_timer
	CPX #$0E
	BCS @next_3
	JSR @draw_wily_machine_2_phase_1
	RTS

@next_3:
	CPX #$13
	BCS @run_refilling
	LDA z:znmi_frame
	AND #%00000011
	BNE @run_refilling
	LDA #$04
	LDY #$0B
	LDX #$0F
	JSR @fade_palette
	LDA #$18
	LDY #$13
	LDX #$1F
	JSR @fade_palette
	INC z:zboss_timer
	RTS

@run_refilling:
	JSR _bosses_hp_refilling
	LDA aobject_hp + $01
	CMP #$1C
	BNE @processing
	INC z:zboss_ai_pointer
	LDA #$56
	LDX #$01
	JSR _bosses_shoot_object
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_invisible | objects_exist
	STA aobject_flag + $10, Y
	LDA #$B0
	STA aobject_xcoord + $10, Y
	LDA #$80
	STA aobject_ycoord + $10, Y
	LDA #$3E
	STA z:zboss_timer

@processing:
	RTS

@fade_palette:
	STA z:z00

@loop_2:
	LDA acurrent_background_palette, X
	CMP #black
	BNE @not_black
	LDA @wily_machine_2_palette_table, Y
	AND #%00001111
	JMP @save

@not_black:
	CLC
	ADC #$10
	CMP @wily_machine_2_palette_table, Y
	BEQ @save
	BCS @continue

@save:
	STA acurrent_background_palette, X

@continue:
	DEX
	DEY
	CPX z:z00
	BNE @loop_2
	RTS

@wily_machine_2_palette_table:
	.BYTE black, light_rose,   light_orange, pale_rose
	.BYTE black, white_orange, light_orange, dark_orange
	.BYTE black, light_rose,   light_orange, dark_orange
	.BYTE black, black,        light_azure,  white_cyan
	.BYTE black, black,        white_rose,   light_rose

@draw_wily_machine_2_phase_1:
	LDA wily_machine_2_ppu_hi_address, X
	STA aobject_ppu_address
	LDA wily_machine_2_ppu_lo_address, X
	STA aobject_ppu_address + 1
	LDA wily_machine_2_draw_length, X
	STA z:zobject_tiles_update_size
	LDY #$00

@loop_3:
	LDA aboss_defeated_timer_1
	STA aobject_ppu_data, Y
	INC aboss_defeated_timer_1
	INY
	CPY z:zobject_tiles_update_size
	BNE @loop_3
	INC z:zboss_timer
	RTS

_set_wily_machine_2_attributes:
	LDY #$00

@loop:
	LDA wily_machine_2_attributes, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY #$05
	BNE @loop
	STY z:zobject_tiles_update_size
	STX z:zboss_timer
	CLC
	LDA aobject_ppu_address + 1
	ADC #$08
	STA aobject_ppu_address + 1
	RTS

_wily_machine_2_run_ahead:
	LDA aobject_xcoord + $01
	CMP #$38
	BCS @run_regular
	INC z:zboss_ai_pointer

@run_regular:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist

_wily_machine_2_run_common:
	STA aobject_flag + $01
	STA aboss_defeated_timer_1
	JSR _check_wily_machine_2_hit
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	DEC z:zboss_timer
	BNE @skip
	LDA #$3E
	STA z:zboss_timer
	LDA aobject_xcoord + $01
	PHA
	CLC
	ADC #$28
	STA aobject_xcoord + $01
	JSR _check_bosses_toward
	PLA
	STA aobject_xcoord + $01
	LDA z:z00
	STA z:z0B
	LDA #$1A
	STA z:z0D
	LDA #$00
	STA z:z0A
	STA z:z0C
	JSR _divide_fraction
	LDA #$6B
	LDX #$01
	JSR _bosses_shoot_object
	BCS @skip
	CLC
	LDA aobject_xcoord + $01
	ADC #$28
	STA aobject_xcoord + $10, Y
	CLC
	LDA aobject_ycoord + $01
	ADC #$36
	STA aobject_ycoord + $10, Y
	LDA z:z0F
	STA aobject_xcoord_speed + $10, Y
	LDA z:z0E
	STA aobject_xcoord_speed_fraction + $10, Y
	LDA z:zboss_ai_pointer
	CMP #$04
	BCC @skip
	LDA aobject_flag + $10, Y
	ORA #objects_with_gravity
	STA aobject_flag + $10, Y
	LDA #$00
	STA aobject_ycoord_speed + $10, Y
	STA aobject_ycoord_speed_fraction + $10, Y
	LDA #$01
	STA aobject_xcoord_speed + $10, Y
	LDA #$1E
	STA aobject_xcoord_speed_fraction + $10, Y

@skip:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $01
	RTS

_wily_machine_2_run_back:
	LDA aobject_xcoord + $01
	CMP #$98
	BCC @run_regular
	DEC z:zboss_ai_pointer

@run_regular:
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist
	JMP _wily_machine_2_run_common

_wily_machine_2_phase_2:
	JSR _bosses_hp_refilling
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	STA aobject_frameset_upper_timer + $01
	DEC awily_temp
	BNE @skip
	LDA #$0C
	STA awily_temp
	LDA z:zrandom
	STA z:z01
	LDA #$18
	STA z:z02
	JSR _divide_mod
	LDA z:z04
	STA z:z08
	LDA z:zrandom
	STA z:z01
	LDA #$30
	STA z:z02
	JSR _divide_mod
	LDA z:z04
	STA z:z09
	LDA #$6C
	LDX #$01
	JSR _bosses_shoot_object
	BCS @skip
	SEC
	LDA aobject_ycoord + $01
	SBC #$18
	CLC
	ADC z:z09
	STA aobject_ycoord + $10, Y
	CLC
	LDA aobject_xcoord + $01
	ADC z:z08
	STA aobject_xcoord + $10, Y

@skip:
	LDA aobject_temp + $01
	BNE @set_attributes_address_done
	LDA #$73
	STA aobject_pointer + $01
	LDA #$27
	STA aobject_ppu_address
	LDA #$CB
	STA aobject_ppu_address + 1
	LDA #$14
	STA z:zboss_timer
	INC aobject_temp + $01

@set_attributes_address_done:
	LDA aobject_temp + $01
	CMP #$02
	BCS @set_attributes_done
	LDX z:zboss_timer
	CPX #$28
	BEQ @next
	JSR _set_wily_machine_2_attributes
	RTS

@next:
	LDA #$0E
	STA z:zboss_timer
	LDA #$00
	STA aboss_defeated_timer_2
	INC aobject_temp + $01

@set_attributes_done:
	LDX z:zboss_timer
	CPX #$16
	BCS @set_tiles_done
	LDA wily_machine_2_ppu_hi_address, X
	STA aobject_ppu_address
	LDA wily_machine_2_ppu_lo_address, X
	STA aobject_ppu_address + 1
	LDA wily_machine_2_draw_length, X
	STA z:zobject_tiles_update_size
	LDY #$00
	LDX aboss_defeated_timer_2

@loop:
	LDA wily_machine_2_phase_2_tileset, X
	STA aobject_ppu_data, Y
	INX
	INY
	CPY z:zobject_tiles_update_size
	BNE @loop
	STX aboss_defeated_timer_2
	INC z:zboss_timer
	RTS

@set_tiles_done:
	LDA aobject_hp + $01
	CMP #$1C
	BEQ @start_phase_2
	RTS

@start_phase_2:
	INC z:zboss_ai_pointer
	LDA #$3E
	STA z:zboss_timer
	LDA #$A3
	STA aobject_xcoord_speed_fraction + $01
	RTS

_wily_machine_2_defeated:
	LDA aobject_temp + $01
	BEQ @wily_ufo_chase
	LDA aobject_ycoord
	CMP #$E0
	BCS @megaman_had_dropped
	INC aobject_ycoord
	INC aobject_ycoord
	RTS

@megaman_had_dropped:
	LDA #$00
	STA aobject_flag
	DEC z:zboss_timer
	BNE @nz
	LDA #$FF
	STA z:zboss_ai_pointer

@nz:
	RTS

@wily_ufo_chase:
	JSR _wily_bosses_death_flash_screen
	LDA aobject_ycoord + $01
	BEQ @chasing
	SEC
	LDA aobject_ycoord_fraction + $01
	SBC #$80
	STA aobject_ycoord_fraction + $01
	LDA aobject_ycoord + $01
	SBC #$00
	STA aobject_ycoord + $01
	BNE @chasing
	STA aobject_flag + $01

@chasing:
	LDA z:zrandom
	STA z:z01
	LDA #$20
	STA z:z02
	JSR _divide_mod
	LDA #$06
	LDX #$01
	JSR _bosses_shoot_object
	BCS @exist
	LDA z:zrandom
	ASL
	LDA z:zrandom
	ROL
	ROL
	ROL
	ROL
	ORA #$08
	STA aobject_xcoord + $10, Y
	CLC
	LDA z:z04
	ADC #$C8
	STA aobject_ycoord + $10, Y

@exist:
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$FD
	BEQ @no_flash
	RTS

@no_flash:
	LDA #black
	LDX #$10

@loop:
	STA acurrent_background_palette, X
	DEX
	BPL @loop
	INC aobject_temp + $01
	LDA #$0B
	STA z:zmegaman_status
	LDA #$00
	STA aobject_frameset_upper_timer
	STA aobject_frameset_lower_timer
	LDA #$0C
	STA aobject_pointer
	LDA #$3E
	STA z:zboss_timer
	RTS

_check_wily_machine_2_hit:
	LDA #black
	STA acurrent_background_palette + $10
	LDA z:zboss_ai_pointer
	CMP #$04
	BCS @phase_2_1
	LDA z:zcurrent_weapon
	CMP #$02
	BEQ @immune
	CMP #$05
	BEQ @immune
	BNE @can_damage

@phase_2_1:
	LDA z:zcurrent_weapon
	CMP #$01
	BNE @can_damage

@immune:
	LDA aobject_flag + $01
	ORA #objects_can_recoiled
	STA aobject_flag + $01

@can_damage:
	JSR _check_weapon_bosses_collision
	BCC @bosses_not_death
	LDA z:zboss_ai_pointer
	CMP #$04
	BCS @phase_2_2
	LDA #$04
	STA z:zboss_ai_pointer
	LDA #$0C
	STA awily_temp
	LDA #$00
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	STA aobject_temp + $01
	BEQ @skip

@phase_2_2:
	LDA #$74
	JSR _init_bosses_object
	CLC
	LDA aobject_xcoord + $01
	ADC #$28
	STA aobject_xcoord + $01
	LDA #$57
	STA aobject_ycoord + $01
	LDA #$00
	STA aobject_temp + $01
	LDA #$56
	JSR _check_bosses_shoot_object_regular
	BCS @hidden
	LDA #$00
	STA aobject_flag + $10, Y

@hidden:
	JMP _set_wily_bosses_defeated_regular

@bosses_not_death:
	LDA z:z02
	CMP #$01
	BNE @skip
	LDA #pale_gray
	STA acurrent_background_palette + $10

@skip:
	JSR _wily_bosses_not_hit
	RTS

wily_machine_2_ppu_hi_address:
;phase 1
	hirightscreencoord 23, 8
	hirightscreencoord 22, 9
	hirightscreencoord 22, 10
	hirightscreencoord 17, 11
	hirightscreencoord 16, 12
	hirightscreencoord 16, 13
	hirightscreencoord 16, 14
	hirightscreencoord 16, 15
	hirightscreencoord 14, 16
	hirightscreencoord 14, 17
	hirightscreencoord 14, 18
	hirightscreencoord 14, 19
	hirightscreencoord 19, 20
	hirightscreencoord 20, 21

;phase 2
	hirightscreencoord 16, 12
	hirightscreencoord 16, 13
	hirightscreencoord 16, 14
	hirightscreencoord 16, 15
	hirightscreencoord 14, 16
	hirightscreencoord 14, 17
	hirightscreencoord 14, 18
	hirightscreencoord 14, 19

wily_machine_2_ppu_lo_address:
;phase 1
	lorightscreencoord 23, 8
	lorightscreencoord 22, 9
	lorightscreencoord 22, 10
	lorightscreencoord 17, 11
	lorightscreencoord 16, 12
	lorightscreencoord 16, 13
	lorightscreencoord 16, 14
	lorightscreencoord 16, 15
	lorightscreencoord 14, 16
	lorightscreencoord 14, 17
	lorightscreencoord 14, 18
	lorightscreencoord 14, 19
	lorightscreencoord 19, 20
	lorightscreencoord 20, 21

;phase 2
	lorightscreencoord 16, 12
	lorightscreencoord 16, 13
	lorightscreencoord 16, 14
	lorightscreencoord 16, 15
	lorightscreencoord 14, 16
	lorightscreencoord 14, 17
	lorightscreencoord 14, 18
	lorightscreencoord 14, 19

wily_machine_2_draw_length:
;phase 1
	.BYTE $04
	.BYTE $05
	.BYTE $06
	.BYTE $0B
	.BYTE $0D
	.BYTE $0D
	.BYTE $0D
	.BYTE $0D
	.BYTE $0F
	.BYTE $0E
	.BYTE $0D
	.BYTE $0C
	.BYTE $04
	.BYTE $02

;phase 2
	.BYTE wily_machine_2_phase_2_tileset_0 - wily_machine_2_phase_2_tileset
	.BYTE wily_machine_2_phase_2_tileset_1 - wily_machine_2_phase_2_tileset_0
	.BYTE wily_machine_2_phase_2_tileset_2 - wily_machine_2_phase_2_tileset_1
	.BYTE wily_machine_2_phase_2_tileset_3 - wily_machine_2_phase_2_tileset_2
	.BYTE wily_machine_2_phase_2_tileset_4 - wily_machine_2_phase_2_tileset_3
	.BYTE wily_machine_2_phase_2_tileset_5 - wily_machine_2_phase_2_tileset_4
	.BYTE wily_machine_2_phase_2_tileset_6 - wily_machine_2_phase_2_tileset_5
	.BYTE wily_machine_2_phase_2_tileset_6_end - wily_machine_2_phase_2_tileset_6

wily_machine_2_attributes:
;phase 1
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_1 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_1 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

;phase 2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_2 | bottomright_palette_2
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3
	.BYTE topleft_palette_3 | topright_palette_3 | bottomleft_palette_3 | bottomright_palette_3

wily_machine_2_phase_2_tileset:
	.BYTE $00, $E6, $E7, $E8

wily_machine_2_phase_2_tileset_0:
	.BYTE $00, $00, $E9, $EA

wily_machine_2_phase_2_tileset_1:
	.BYTE $00, $00, $EB, $EC

wily_machine_2_phase_2_tileset_2:
	.BYTE $ED, $EE, $EF, $F0

wily_machine_2_phase_2_tileset_3:
	.BYTE $00, $00, $F1, $F2, $F3, $F4

wily_machine_2_phase_2_tileset_4:
	.BYTE $F5, $F6, $F7, $F8, $F9, $FA, $FB

wily_machine_2_phase_2_tileset_5:
	.BYTE $00, $00, $00, $00, $FC

wily_machine_2_phase_2_tileset_6:
	.BYTE $00, $00, $00, $00
wily_machine_2_phase_2_tileset_6_end:

wily_machine_2_boss_ai_lo_jumptable:
	.LOBYTES _load_wily_machine_2_phase_1
	.LOBYTES _wily_machine_2_run_ahead
	.LOBYTES _wily_machine_2_run_back
	.LOBYTES _wily_machine_2_phase_2
	.LOBYTES _wily_machine_2_run_ahead
	.LOBYTES _wily_machine_2_run_back
	.LOBYTES _wily_machine_2_defeated

wily_machine_2_boss_ai_hi_jumptable:
	.HIBYTES _load_wily_machine_2_phase_1
	.HIBYTES _wily_machine_2_run_ahead
	.HIBYTES _wily_machine_2_run_back
	.HIBYTES _wily_machine_2_phase_2
	.HIBYTES _wily_machine_2_run_ahead
	.HIBYTES _wily_machine_2_run_back
	.HIBYTES _wily_machine_2_defeated

_alien_boss_ai:
	DEX
	LDA alien_boss_ai_lo_jumptable, X
	STA z:z08
	LDA alien_boss_ai_hi_jumptable, X
	STA z:z09
	JMP (z08)

_wily_change_to_alien:
	LDA aobject_temp + $01
	BNE @set_ufo_done
	LDY #$0F
	LDX #$0E
	JSR _create_weapon
	LDA #$08
	STA aobject_ycoord + $0E
	LDA #$B4
	STA aobject_xcoord + $0E
	LDA #$7D
	STA z:zboss_timer
	LDA #$00
	STA ano_of_palette
	STA apalette_animation_frame
	INC aobject_temp + $01

@set_ufo_done:
	LDA aobject_temp + $01
	CMP #$02
	BCS @be_alien
	LDA aobject_flag + $0E
	BPL @hidden
	LDA aobject_ycoord + $0E
	CMP #$90
	BCC @skip_1
	LDX #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STX aobject_flag + $01
	CMP #$E0
	BCC @skip_1
	LSR aobject_flag + $0E

@skip_1:
	RTS

@hidden:
	DEC z:zboss_timer
	BNE @skip_1
	LDX #$02

@loop_1:
	LDA @alien_palette_set, X
	STA acurrent_background_palette + $19, X
	DEX
	BPL @loop_1
	INC aobject_temp + $01
	LDA #$76
	JSR _init_bosses_object

@nz:
	RTS

@be_alien:
	BNE @start_refilling
	LDA aobject_frameset_upper_timer + $01
	CMP #$03
	BNE @nz
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDX #$0A
	LDA z:zboss_timer
	CMP #$7D
	BCC @processing
	LDX #$12

@processing:
	LDA z:zboss_timer
	AND #%00000100
	BEQ @4_frames
	TXA
	CLC
	ADC #$08
	TAX

@4_frames:
	LDY #$07

@loop_2:
	LDA @alien_palette_set, X
	STA acurrent_background_palette + $18, Y
	DEX
	DEY
	BPL @loop_2
	INC z:zboss_timer
	LDA z:zboss_timer
	CMP #$FD
	BNE @skip_2
	INC aobject_temp + $01
	LDA #$77
	JSR _init_bosses_object

@skip_2:
	RTS

@start_refilling:
	LDA aobject_xcoord + $01
	CMP #$D8
	BEQ @run_refilling_but_not_move
	CLC
	LDA aobject_xcoord_fraction + $01
	ADC #$80
	STA aobject_xcoord_fraction + $01
	LDA aobject_xcoord + $01
	ADC #$00
	STA aobject_xcoord + $01

@run_refilling_but_not_move:
	JSR _bosses_hp_refilling
	LDA aobject_hp + $01
	CMP #$1C
	BNE @skip_2
	INC z:zboss_ai_pointer
	LDA #$0E
	STA z:zboss_timer
	LDA #$3E
	STA aboss_defeated_timer_1
	LDA #$00
	STA aboss_defeated_timer_2
	LDA #pale_gray
	STA acurrent_background_palette + $09
	LDA #$01
	STA z:zsprites_pointer
	LDX #$0C

@loop_3:
	STX z:z02
	LDA #objects_alien_star
	JSR _force_generate_object
	LDX z:z02
	LDA @alien_star_ycoord, X
	STA aobject_ycoord + $10, X
	LDA @alien_star_xcoord_frameset, X
	PHA
	AND #%11110000
	ORA #%00000100
	STA aobject_xcoord + $10, X
	PLA
	AND #%00001111
	STA aobject_frameset_upper_timer + $10, X
	DEX
	BPL @loop_3
	RTS

@alien_star_ycoord:
	.BYTE $34, $34, $64, $94, $B4, $D4, $24, $44
	.BYTE $54, $74, $84, $B4, $C4

@alien_star_xcoord_frameset:
	.BYTE $20, $B0, $D0, $70, $40, $F0, $D1, $51
	.BYTE $01, $A1, $31, $E1, $11

@alien_palette_set:
;solid
	.BYTE pale_gray, pale_yellow, light_red

;flash
	.BYTE black, light_red, pale_gray,        pale_gray
	.BYTE black, light_red, pale_yellow,      pale_yellow
	.BYTE black, light_red, pale_yellow,      white_chartreuse
	.BYTE black, light_red, pale_yellow,      white_chartreuse
	.BYTE black, light_red, white_chartreuse, light_chartreuse
	.BYTE black, light_red, white_chartreuse, light_chartreuse

_alien_fighting:
	JSR _run_lemniscate_trajectory
	JSR _check_weapon_bosses_hit
	LDX #black
	LDA z:z02
	CMP #$01
	BNE @not_hit
	LDA aregular_boss_defeated_flag
	BEQ @got_hit
	LDA #$00
	STA aobject_temp + $01
	INC z:zboss_ai_pointer
	RTS

@got_hit:
	LDX #pale_gray

@not_hit:
	STX acurrent_background_palette + $10
	CLC
	LDA z:zmecha_dragon_xcoord_fraction
	ADC #$60
	STA z:zmecha_dragon_xcoord_fraction
	LDA z:zmecha_dragon_xcoord
	ADC #$01
	STA z:zmecha_dragon_xcoord
	LDA z:zmecha_dragon_screen
	ADC #$00
	STA z:zmecha_dragon_screen
	JSR _check_bosses_toward
	DEC aboss_defeated_timer_1
	BNE @skip
	LDA #$3E
	STA aboss_defeated_timer_1
	LDA #$6F
	JSR _bosses_shoot_object
	BCS @skip
	LDA #$04
	JSR _alien_shoot_bullet

@skip:
	RTS

lemniscate_trajectory_ycoord_speed_fraction_table:
	.BYTE $B9, $19, $00, $E7, $47, $E7, $00, $19

lemniscate_trajectory_ycoord_speed_table:
	.BYTE -2, -1, +0, +0, +1, +0, +0, -1

lemniscate_trajectory_xcoord_speed_fraction_table:
	.BYTE $00, $E7, $47, $E7, $00, $E7, $47, $E7

lemniscate_trajectory_xcoord_speed_table:
	.BYTE +0, +0, +1, +0, +0, +0, +1, +0

_run_lemniscate_trajectory:
	DEC z:zboss_timer
	BNE @nz
	INC aboss_defeated_timer_2
	LDA #$1C
	STA z:zboss_timer

@nz:
	LDA aboss_defeated_timer_2
	PHA
	AND #%00000111
	TAX
	LDA lemniscate_trajectory_ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $01
	LDA lemniscate_trajectory_ycoord_speed_table, X
	STA aobject_ycoord_speed + $01
	LDA lemniscate_trajectory_xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $01
	LDA lemniscate_trajectory_xcoord_speed_table, X
	STA aobject_xcoord_speed + $01
	LDX #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	PLA
	AND #objects_can_recoiled
	BEQ @cant_recoiled
	LDX #can_collide_megaman | can_collide_megaman_bullet | objects_right | objects_exist

@cant_recoiled:
	STX aobject_flag + $01
	RTS

_alien_defeated:
	LDX aobject_temp + $01
	BNE @init_done
	LDA #$E0
	STA aobject_ppu_address + 1
	LDA #$0F
	STA aobject_ppu_address
	LDA #<load_wily_lab_chr
	STA aboss_defeated_timer_2
	LDA #>load_wily_lab_chr
	STA aboss_defeated_timer_1
	LDA #$80
	STA z:zboss_timer
	INC aobject_temp + $01
	INX
	track_queue mute_music
	LSR aobject_flag + $01

@init_done:
	DEX
	LDA alien_defeated_hi_jumptable, X
	STA z:z09
	LDA alien_defeated_lo_jumptable, X
	STA z:z08
	JMP (z08)

_alien_defeated_flash:
	LDA z:znmi_frame
	AND #%00001111
	BNE @16_frames
	track_queue track_enemy_hit

@16_frames:
	LDX #$10
	LDY #black
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	LDY #pale_gray

@4_frames:
	TYA

@loop:
	STA acurrent_background_palette, X
	DEX
	BPL @loop
	RTS

_load_wily_lab_chr:
	JSR _alien_defeated_flash
	LDA z:zboss_timer
	BEQ @done
	LDA #<.BANK (load_wily_lab_chr)
	JSR _draw_bosses_background
	DEC z:zboss_timer
	RTS

@done:
	INC aobject_temp + $01
	LDA #$00
	STA z:zFD
	LDA #$0F ;screen sprites index, see `stages/flashman_wily6/flashman_wily6_sprites_set.asm`
	STA z:zFE
	RTS

_load_wily_lab_sprites:
	JSR _alien_defeated_flash
	LDA z:zFD
	CMP #$60
	BCS @done
	JSR _scrolling_object_tiles
	RTS

@done:
	INC aobject_temp + $01
	LDA #<mapset_quickman_wily5_20
	STA aboss_defeated_timer_1
	LDA #>mapset_quickman_wily5_20
	STA aboss_defeated_timer_2
	LDA #$00
	STA z:zcurrent_handle_32x32_attribute
	STA z:zscreen_update_flag
	BEQ _load_wily_lab_sprites_set_done

_load_wily_lab_mapset:
	JSR _alien_defeated_flash
	LDA aboss_defeated_timer_1
	AND #%00111111
	BEQ _load_wily_lab_mapset_done

_load_wily_lab_sprites_set_done:
	LDA #<.BANK (mapset_quickman_wily5_20) + 8
	STA z:zcurrent_stage
	LDA aboss_defeated_timer_1
	STA z:z08
	LDA aboss_defeated_timer_2
	STA z:z09
	JSR _draw_screen_temp
	LDA #stage_wily6
	STA z:zcurrent_stage
	INC aboss_defeated_timer_1
	INC z:zcurrent_handle_32x32_attribute
	RTS

_load_wily_lab_mapset_done:
	INC aobject_temp + $01
	INC z:zscreen_id
	INC aobject_screen
	INC aobject_screen + $01
	LDA #$00
	STA z:zmecha_dragon_xcoord
	STA z:zmecha_dragon_screen
	LDX #$10

@loop:
	LDA @load_wily_lab_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop
	LDY #$10
	LDX #$0E
	JSR _create_weapon
	LDA #objects_exist
	STA aobject_flag + $0E
	LDA #$A7
	STA aobject_ycoord + $0E
	LDA #$E0
	STA aobject_xcoord + $0E
	LDY #$11
	LDX #$0D
	JSR _create_weapon
	LDA #$80
	STA aobject_xcoord + $0D
	LDA #$37
	STA aobject_ycoord + $0D
	LDA #objects_exist
	STA aobject_flag + $01
	LDA #$80
	STA aobject_ycoord + $01
	LDA #$D8
	STA aobject_xcoord + $01
	LDA #$0E
	STA z:zboss_timer
	LDA #$00
	STA aboss_defeated_timer_2
	STA awily_temp
	LDA #$78
	JSR _init_bosses_object
	track_queue track_wily_control
	RTS

@load_wily_lab_palettes:
	.BYTE black, white_gray, light_azure,  dark_azure
	.BYTE black, white_gray, white_cyan,   light_cyan
	.BYTE black, white_gray, white_violet, light_violet
	.BYTE black, white_gray, black,        black
	.BYTE black

_run_disco_ball:
	JSR _disco_ball_core
	LDA aboss_defeated_timer_2
	CMP #$24
	BEQ @done
	JSR _run_lemniscate_trajectory
	STX z:z03
	JSR _alien_defeated_force_run_coord
	RTS

@done:
	LDA #objects_with_gravity | objects_exist
	STA aobject_flag + $01
	LDA #$00
	STA z:zboss_timer
	STA aobject_xcoord_speed + $01
	STA aobject_xcoord_speed_fraction + $01
	STA aobject_ycoord_speed + $01
	STA aobject_ycoord_speed_fraction + $01
	INC aobject_temp + $01
	RTS

_disco_ball_core:
	LDX #white_cyan
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	LDX #dark_gray

@4_frames:
	STX acurrent_background_palette + $1A
	RTS

wily_lab_fade_palette:
	.BYTE black, white_gray, black,       black
	.BYTE black, white_gray, dark_cyan,   black
	.BYTE black, white_gray, light_cyan,  dark_cyan
	.BYTE black, white_gray, light_azure, dark_cyan
	.BYTE black, white_gray, light_azure, dark_azure

_disco_ball_drop:
	JSR _disco_ball_core
	LDA #$80
	STA z:z03
	JSR _alien_defeated_force_run_coord
	LDA #$04
	STA z:z01
	STA z:z02
	JSR _run_bosses_drop
	LDA z:z00
	BEQ @not_landing
	LDX z:zboss_timer
	CPX #$02
	BEQ @drop_done
	LDA @drop_ycoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction + $01
	LDA @drop_ycoord_speed, X
	STA aobject_ycoord_speed + $01
	INC z:zboss_timer

@not_landing:
	RTS

@drop_done:
	LSR aobject_flag + $0E
	LDA #$79
	JSR _init_bosses_object
	LDA #$A7
	STA aobject_ycoord + $01
	LDA #$E0
	STA aobject_xcoord + $01
	LDA #$3E
	STA z:zboss_timer
	LDA #$00
	STA aboss_defeated_timer_1
	INC aobject_temp + $01
	LSR aobject_flag + $0D
	LDX #$0F

@loop:
	LSR aobject_flag + $10, X
	DEX
	BPL @loop
	LDA #pale_gray
	STA acurrent_background_palette + $1E
	LDA #light_rose
	STA acurrent_background_palette + $1F
	RTS

@drop_ycoord_speed_fraction:
	.BYTE $76, $00

@drop_ycoord_speed:
	.BYTE +3, +2

_disco_ball_landing:
	LDA z:zboss_timer
	BEQ @done
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	track_queue track_enemy_hit

@8_frames:
	LDX #$0F
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	LDX #pale_gray

@4_frames:
	STX acurrent_background_palette + $10
	DEC z:zboss_timer
	RTS

@done:
	LDA #black
	STA acurrent_background_palette + $10
	INC aboss_defeated_timer_1
	LDA aboss_defeated_timer_1
	CMP #$41
	BEQ @fade_done
	LSR
	LSR
	AND #%00011100
	TAX
	LDY #$00

@loop:
	LDA wily_lab_fade_palette, X
	STA acurrent_background_palette + $0C, Y
	INX
	INY
	CPY #$04
	BNE @loop
	RTS

@fade_done:
	INC aobject_temp + $01
	LDA #$7A
	JSR _init_bosses_object
	LDA #objects_with_gravity | objects_exist
	STA aobject_flag + $01
	LDA #$50
	STA aobject_xcoord_speed_fraction + $01
	LDA #$00
	STA aobject_xcoord_speed + $01
	LDA #$53
	STA aobject_ycoord_speed_fraction + $01
	LDA #$06
	STA aobject_ycoord_speed + $01
	RTS

_set_wily_dozega_toward:
	LDA #$84
	STA z:z03
	JSR _alien_defeated_force_run_coord
	LDA #$0C
	STA z:z01
	STA z:z02
	JSR _run_bosses_drop
	LDA z:z00
	BNE @landing
	RTS

@landing:
	LDA aobject_flag
	AND #~objects_right
	LDX aobject_xcoord
	CPX #$B0
	BCS @on_right
	ORA #objects_right

@on_right:
	STA aobject_flag
	LDA #$7B
	JSR _init_bosses_object
	INC aobject_temp + $01
	LDA #$FD
	STA aboss_defeated_timer_1
	LDA #$80
	STA aboss_defeated_timer_2
	LDA #$02
	STA awily_temp
	track_queue track_wily_defeated
	RTS

_wily_dogeza:
	JSR _check_bosses_toward
	LDA aboss_defeated_timer_1
	BEQ @anim_done
	DEC aboss_defeated_timer_1
	RTS

@anim_done:
	LDA #$00
	STA aobject_frameset_upper_timer + $01
	STA aobject_frameset_lower_timer + $01
	DEC aboss_defeated_timer_2
	BNE @nz
	DEC awily_temp
	BNE @nz
	LDA #$FF
	STA z:zboss_ai_pointer

@nz:
	RTS

alien_boss_ai_lo_jumptable:
	.LOBYTES _wily_change_to_alien
	.LOBYTES _alien_fighting
	.LOBYTES _alien_defeated

alien_defeated_lo_jumptable:
	.LOBYTES _load_wily_lab_chr
	.LOBYTES _load_wily_lab_sprites
	.LOBYTES _load_wily_lab_mapset
	.LOBYTES _run_disco_ball
	.LOBYTES _disco_ball_drop
	.LOBYTES _disco_ball_landing
	.LOBYTES _set_wily_dozega_toward
	.LOBYTES _wily_dogeza

alien_boss_ai_hi_jumptable:
	.HIBYTES _wily_change_to_alien
	.HIBYTES _alien_fighting
	.HIBYTES _alien_defeated

alien_defeated_hi_jumptable:
	.HIBYTES _load_wily_lab_chr
	.HIBYTES _load_wily_lab_sprites
	.HIBYTES _load_wily_lab_mapset
	.HIBYTES _run_disco_ball
	.HIBYTES _disco_ball_drop
	.HIBYTES _disco_ball_landing
	.HIBYTES _set_wily_dozega_toward
	.HIBYTES _wily_dogeza

_run_bosses_death:
	SEC
	LDA z:zcurrent_boss
	SBC #$08
	BCC @is_regular_bosses
	TAX
	LDA run_bosses_death_lo_jumptable, X
	STA z:z08
	LDA run_bosses_death_hi_jumptable, X
	STA z:z09
	JMP (z08)

@is_regular_bosses:
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	LDA aboss_defeated_timer_1
	CMP #$10
	BCC @death_spinning
	JMP _bosses_death_regular

@death_spinning:
	AND #%00000001
	BNE @odd
	LDA aboss_defeated_timer_1
	AND #%00000111
	STA z:z02
	LDX #$01

@loop:
	STX z:z01
	LDA #objects_explosion
	JSR _force_generate_object
	LDX z:z02
	CLC
	LDA aobject_xcoord + $01
	ADC death_spin_xcoord_offset, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $01
	ADC death_spin_screen_offset, X
	STA aobject_screen + $10, Y
	CLC
	LDA aobject_ycoord + $01
	ADC death_spin_ycoord_offset, X
	STA aobject_ycoord + $10, Y
	LDA #$01
	STA aobject_frameset_upper_timer + $10, Y
	INX
	STX z:z02
	LDX z:z01
	DEX
	BPL @loop

@odd:
	INC aboss_defeated_timer_1
	LDA aboss_defeated_timer_1
	CMP #$10
	BNE @nz
	LDX #$1B
	LDA aobject_xcoord + $01
	STA z:z08
	LDA aobject_screen + $01
	STA z:z09
	LDA aobject_ycoord + $01
	STA z:z0A
	LDA #$60
	STA z:z0B
	JSR _create_explosion_common
	track_queue track_death
	track_queue mute_music
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BNE @not_wily_5
	LDA #objects_large_life_capsule
	LDX #$0E
	JSR _force_generate_object
	LDA #$02
	STA aobject_ycoord_speed + $1E
	LDA #can_collide_megaman | objects_with_gravity | objects_exist
	STA aobject_flag + $1E
	INC aobject_temp + $1E
	LDA z:zrefighting_flag
	CMP #$FF
	BEQ @max
	LSR aobject_flag + $01
	LDA #$00
	STA z:zboss_ai_pointer

@nz:
@not_wily_5:
@max:
	RTS

_bosses_death_regular:
	LSR aobject_flag + $01
	LDA aboss_defeated_timer_1
	CMP #$FD
	BCS @start_playing_boss_defeated
	INC aboss_defeated_timer_1
	RTS

@start_playing_boss_defeated:
	BNE @start_playing_boss_defeated_queue_done
	INC aboss_defeated_timer_1
	LDA #$FD
	STA aboss_defeated_timer_2
	track_queue track_boss_defeated
	RTS

@start_playing_boss_defeated_queue_done:
	CMP #$FE
	BNE @not_teleport_out
	DEC aboss_defeated_timer_2
	BNE @quit
	INC aboss_defeated_timer_1
	LDA #$D0
	STA aboss_defeated_timer_2

@not_teleport_out:
	LDA aboss_defeated_timer_2
	CMP #$40
	BCC @start_teleport_out
	BNE @run_timer
	DEC aboss_defeated_timer_2
	LDA #$26
	STA aobject_pointer
	LDA #$00
	STA aobject_frameset_upper_timer
	STA aobject_frameset_lower_timer
	LDA #$0B
	STA z:zmegaman_status
	track_queue track_teleport_out

@start_teleport_out:
	LDA aobject_frameset_upper_timer
	CMP #$03
	BNE @quit
	LDA aobject_flag
	BPL @run_timer
	SEC
	LDA aobject_ycoord
	SBC #$08
	STA aobject_ycoord
	BCS @quit
	LSR aobject_flag

@run_timer:
	DEC aboss_defeated_timer_2
	BNE @quit
	LDA #$FF
	STA z:zboss_ai_pointer

@quit:
	RTS

run_bosses_death_lo_jumptable:
	.LOBYTES _wily_bosses_fade_out_death
	.LOBYTES _wily_bosses_regular_death
	.LOBYTES _wily_bosses_fade_out_death
	.LOBYTES _wily_bosses_regular_death
	.LOBYTES _wily_machine_2_defeated
	.LOBYTES _alien_defeated

run_bosses_death_hi_jumptable:
	.HIBYTES _wily_bosses_fade_out_death
	.HIBYTES _wily_bosses_regular_death
	.HIBYTES _wily_bosses_fade_out_death
	.HIBYTES _wily_bosses_regular_death
	.HIBYTES _wily_machine_2_defeated
	.HIBYTES _alien_defeated

_init_bosses_object:
	STA aobject_pointer + $01
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	STA aobject_frameset_upper_timer + $01
	RTS

_bosses_hp_refilling:
	LDA z:znmi_frame
	AND #%00000011
	BNE @skip
	LDA aobject_hp + $01
	CMP #$1C
	BEQ @skip
	INC aobject_hp + $01
	track_queue track_refill

@skip:
	RTS

_quickman_guard_done:
	LDA aobject_flag + $01
	EOR #objects_right
	STA aobject_flag + $01
	JSR _check_bosses_not_landing_collision
	LDA aobject_flag + $01
	STA z:z03
	EOR #objects_right
	STA aobject_flag + $01
	JMP _quickman_guard_done_continue

_check_weapon_bosses_hit:
	JSR _check_weapon_bosses_collision
	BCC _bosses_not_death
	INC aregular_boss_defeated_flag
	RTS

_bosses_not_death:
	LDA aobject_flag + $01
	STA z:z03

_quickman_guard_done_continue:
	JSR _bosses_hit

_alien_defeated_force_run_coord:
	SEC
	LDA aobject_ycoord_fraction + $01
	SBC aobject_ycoord_speed_fraction + $01
	STA aobject_ycoord_fraction + $01
	LDA aobject_ycoord + $01
	SBC aobject_ycoord_speed + $01
	STA aobject_ycoord + $01
	CMP #$F0
	BCC @not_bottom
	LDA #$F0
	STA aobject_ycoord + $01

@not_bottom:
	LDA aobject_flag + $01
	AND #objects_with_gravity
	BEQ @ignore_gravity
	CLC
	LDA aobject_ycoord_speed_fraction + $01
	SBC z:zobject_ycoord_speed_accelerate_fraction
	STA aobject_ycoord_speed_fraction + $01
	LDA aobject_ycoord_speed + $01
	SBC z:zobject_ycoord_speed_accelerate
	STA aobject_ycoord_speed + $01

@ignore_gravity:
	LDA z:z03
	AND #objects_right
	BNE @on_right
	SEC
	LDA aobject_xcoord_fraction + $01
	SBC aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_fraction + $01
	LDA aobject_xcoord + $01
	SBC aobject_xcoord_speed + $01
	STA aobject_xcoord + $01
	LDA aobject_screen + $01
	SBC #$00
	STA aobject_screen + $01
	SEC
	LDA aobject_xcoord + $01
	SBC z:zscreen_xcoord
	STA z:z08
	LDA aobject_screen + $01
	SBC z:zscreen_id
	BNE @out_of_bound_1
	LDA z:z08
	CMP #$08
	BCS @run_regular

@out_of_bound_1:
	LDA z:zscreen_id
	STA aobject_screen
	LDA #$08
	STA aobject_xcoord + $01
	BNE @run_regular

@on_right:
	CLC
	LDA aobject_xcoord_fraction + $01
	ADC aobject_xcoord_speed_fraction + $01
	STA aobject_xcoord_fraction + $01
	LDA aobject_xcoord + $01
	ADC aobject_xcoord_speed + $01
	STA aobject_xcoord + $01
	LDA aobject_screen + $01
	ADC #$00
	STA aobject_screen + $01
	SEC
	LDA aobject_xcoord + $01
	SBC z:zscreen_xcoord
	STA z:z08
	LDA aobject_screen + $01
	SBC z:zscreen_id
	BNE @out_of_bound_2
	LDA z:z08
	CMP #$F8
	BCC @run_regular

@out_of_bound_2:
	LDA z:zscreen_id
	STA aobject_screen + $01
	LDA #$F8
	STA aobject_xcoord + $01

@run_regular:
	CLC
	RTS

_check_bosses_toward:
	LDA aobject_flag + $01
	AND #~objects_right
	STA aobject_flag + $01
	SEC
	LDA aobject_xcoord + $01
	SBC aobject_xcoord
	STA z:z00
	BCS @on_right
	LDA z:z00
	EOR #%11111111
	ADC #$01
	STA z:z00
	LDA #objects_right
	ORA aobject_flag + $01
	STA aobject_flag + $01

@on_right:
	RTS

_check_bosses_shoot_object_regular:
	STA z:z00
	LDY #$0F

_check_bosses_shoot_object_with_speed:
@loop_2:
	LDA z:z00

@loop_1:
	CMP aobject_pointer + $10, Y
	BEQ @same
	DEY
	BPL @loop_1
	SEC
	RTS

@same:
	LDA aobject_flag + $10, Y
	BMI @exist
	DEY
	BPL @loop_2
	SEC
	RTS

@exist:
	CLC
	RTS

_run_bosses_drop:
	LDA #$00
	STA z:z0B
	LDA aobject_ycoord_speed + $01
	PHP
	BPL @down
	CLC
	LDA aobject_ycoord + $01
	ADC z:z02
	JMP @continue_1

@down:
	SEC
	LDA aobject_ycoord + $01
	SBC z:z02

@continue_1:
	STA z:z0A
	CLC
	LDA aobject_xcoord + $01
	ADC z:z01
	STA z:z08
	LDA aobject_screen + $01
	ADC #$00
	STA z:z09
	JSR _run_alien_broken
	LDY z:z00
	LDA bosses_not_landing_collision_table, Y
	STA z:z02
	SEC
	LDA aobject_xcoord + $01
	SBC z:z01
	STA z:z08
	LDA aobject_screen + $01
	SBC #$00
	STA z:z09
	JSR _run_alien_broken
	LDY z:z00
	LDA bosses_not_landing_collision_table, Y
	ORA z:z02
	STA z:z00
	BEQ @skip
	PLP
	BMI @up
	LDA z:z0A
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_ycoord + $01
	JMP @continue_2

@up:
	LDA aobject_ycoord + $01
	PHA
	LDA z:z0A
	AND #%00001111
	STA z:z02
	PLA
	SEC
	SBC z:z02

@continue_2:
	STA aobject_ycoord + $01
	LDA #$00
	STA aobject_ycoord_fraction + $01
	LDA aobject_flag + $01
	AND #objects_with_gravity
	BEQ @no_gravity
	LDA #$C0
	STA aobject_ycoord_speed_fraction + $01
	LDA #$FF
	STA aobject_ycoord_speed + $01

@no_gravity:
	RTS

@skip:
	PLP
	RTS

_check_bosses_not_landing_collision:
	LDA aobject_ycoord + $01
	STA z:z0A
	LDA #$00
	STA z:z0B
	LDA aobject_flag + $01
	AND #objects_right
	PHP
	BEQ @leftward
	SEC
	LDA aobject_xcoord + $01
	ADC z:z01
	STA z:z08
	LDA aobject_screen + $01
	ADC #$00
	JMP @rightward

@leftward:
	CLC
	LDA aobject_xcoord + $01
	SBC z:z01
	STA z:z08
	LDA aobject_screen + $01
	SBC #$00

@rightward:
	STA z:z09
	JSR _run_alien_broken
	LDY z:z00
	LDA bosses_not_landing_collision_table, Y
	STA z:z03
	BEQ @air
	PLP
	BEQ @on_left
	LDA z:z08
	AND #%00001111
	STA z:z00
	SEC
	LDA aobject_xcoord + $01
	SBC z:z00
	STA aobject_xcoord + $01
	LDA aobject_screen + $01
	SBC #$00
	STA aobject_screen + $01
	JMP _run_bosses_drop

@on_left:
	LDA z:z08
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_xcoord + $01
	STA aobject_xcoord + $01
	LDA aobject_screen + $01
	ADC #$00
	STA aobject_screen + $01
	JMP _run_bosses_drop

@air:
	PLP
	JMP _run_bosses_drop

bosses_not_landing_collision_table:
	.BYTE $00, $01, $00, $01, $00, $01, $01, $01
	.BYTE $01

_bosses_shoot_object:
	PHA
	JSR _check_object
	BCS _bosses_shoot_check_object_exist
	PLA

_force_generate_object:
	JSR _generate_objects_common
	TXA
	TAY
	LDA aobject_flag + $01
	AND #objects_right
	ORA aobject_flag + $10, Y
	STA aobject_flag + $10, Y
	LDA aobject_xcoord_fraction + $01
	STA aobject_xcoord_fraction + $10, Y
	LDA aobject_xcoord + $01
	STA aobject_xcoord + $10, Y
	LDA aobject_screen + $01
	STA aobject_screen + $10, Y
	LDA aobject_ycoord_fraction + $01
	STA aobject_ycoord_fraction + $10, Y
	LDA aobject_ycoord + $01
	STA aobject_ycoord + $10, Y
	CLC
	RTS

_bosses_shoot_check_object_exist:
	PLA
	SEC
	RTS

_calc_bosses_to_megaman_distance_speed:
	LDY #objects_right
	SEC
	LDA aobject_xcoord
	SBC aobject_xcoord, X
	STA z:z00
	BCS @megaman_on_right
	LDA z:z00
	EOR #%11111111
	ADC #$01
	LDY #objects_left
	STA z:z00

@megaman_on_right:
_calc_flashman_shoot_to_megaman_distance_speed:
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	TYA
	ORA aobject_flag, X
	STA aobject_flag, X
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	PHP
	BCS @megaman_on_down
	EOR #%11111111
	ADC #$01

@megaman_on_down:
	STA z:z01
	CMP z:z00
	BCS @ycoord_le_xcoord
	LDA z:z09
	STA z:z0D
	STA aobject_xcoord_speed, X
	LDA z:z08
	STA z:z0C
	STA aobject_xcoord_speed_fraction, X
	LDA z:z00
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDA z:z0F
	STA z:z0D
	LDA z:z0E
	STA z:z0C
	LDA z:z01
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDX z:zsprites_pointer
	LDA z:z0F
	STA aobject_ycoord_speed, X
	LDA z:z0E
	STA aobject_ycoord_speed_fraction, X
	JMP @continue

@ycoord_le_xcoord:
	LDA z:z09
	STA z:z0D
	STA aobject_ycoord_speed, X
	LDA z:z08
	STA z:z0C
	STA aobject_ycoord_speed_fraction, X
	LDA z:z01
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDA z:z0F
	STA z:z0D
	LDA z:z0E
	STA z:z0C
	LDA z:z00
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDX z:zsprites_pointer
	LDA z:z0F
	STA aobject_xcoord_speed, X
	LDA z:z0E
	STA aobject_xcoord_speed_fraction, X

@continue:
	PLP
	BCC @megaman_on_up
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	ADC #$00
	STA aobject_ycoord_speed, X

@megaman_on_up:
	RTS
