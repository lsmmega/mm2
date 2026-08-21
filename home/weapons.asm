_use_weapons: ;da51
	LDA z:zout_of_screen
	BNE @skip_1
	LDX z:zcurrent_weapon
	BEQ @is_buster
	LDA z:zgot_item_flag, X
	BEQ @skip_1

@is_buster:
	LDA @lo_jumptable, X
	STA z:z08
	LDA @hi_jumptable, X
	STA z:z09
	JMP (z08)

@skip_1:
	SEC
	RTS

@mega_buster:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_2
	LDX #$04

@loop_1:
	LDA aobject_flag, X
	BPL @not_exist_1
	DEX
	CPX #$01
	BNE @loop_1
	BEQ @skip_2

@not_exist_1:
	track_queue track_mega_buster
	LDY #$00
	JSR _create_weapon

@use_lightly:
	LDA #$0F
	STA z:ztimer
	LDA #$01

@use_animation_common:
	STA z:zmegaman_hit_type
	LDX z:zmegaman_status
	CLC
	ADC $D3D4, X
	STA aobject_pointer
	CLC
	RTS

@skip_2:
	SEC
	RTS

@atomic_fire:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_3
	LDX #$02
	LDY #$01
	JSR _create_weapon
	LDA #$82
	STA aobject_flag, X

@skip_3:
	SEC
	RTS

@air_shooter:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_4
	LDX #$04

@loop_2:
	LDA aobject_flag, X
	BMI @skip_4
	DEX
	CPX #$01
	BNE @loop_2
	LDX #$04

@loop_3:
	STX z:z01
	LDY #$02
	JSR _create_weapon
	LDX z:z01
	DEX
	CPX #$01
	BNE @loop_3
	track_queue track_air_shooter
	SEC
	LDA z:zweapon_energy + $01
	SBC #$02
	STA z:zweapon_energy + $01
	JMP @use_lightly

@skip_4:
	SEC
	RTS

@leaf_shield:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_5
	LDA aobject_flag + 2
	BMI @skip_5
	SEC
	LDA z:zweapon_energy + $02
	SBC #$03
	BCC @skip_5
	LDX #$05

@loop_4:
	STX z:z02
	LDY #$03
	JSR _create_weapon
	LDX z:z02
	DEX
	CPX #$01
	BNE @loop_4

@skip_5:
	SEC
	RTS

@bubble_lead:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_6
	LDX #$03

@loop_5:
	LDA aobject_flag, X
	BPL @not_exist_2
	DEX
	CPX #$01
	BNE @loop_5
	BEQ @skip_6

@not_exist_2:
	LDY #$04
	JSR _create_weapon
	track_queue track_mega_buster
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #$02
	BNE @not_max_1
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $03

@not_max_1:
	JMP @use_lightly

@skip_6:
	SEC
	RTS

@quick_boomerang:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BNE @do
	LDA z:zquick_boomerang_autofire_timer
	CMP #$0B
	BEQ @do
	INC z:zquick_boomerang_autofire_timer
	CLC
	RTS

@do:
	LDX #$05

@loop_6:
	LDA aobject_flag, X
	BPL @not_exist_3
	DEX
	CPX #$01
	BNE @loop_6
	BEQ @skip_7

@not_exist_3:
	LDY #$05
	JSR _create_weapon
	track_queue track_mega_buster
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #$08
	BNE @not_max_2
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $04

@not_max_2:
	LDA #$00
	STA z:zquick_boomerang_autofire_timer
	JMP @use_lightly

@skip_7:
	SEC
	RTS

@crash_bomber:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_8
	LDA aobject_flag + 2
	BMI @skip_8
	SEC
	LDA z:zweapon_energy + $07
	SBC #$04
	BCC @skip_8
	STA z:zweapon_energy + $07
	LDX #$02
	LDY #$06
	JSR _create_weapon
	track_queue track_mega_buster
	JMP @use_lightly

@skip_8:
	SEC
	RTS

@metal_blade:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_9
	LDX #$04

@loop_7:
	LDA aobject_flag, X
	BPL @not_exist_4
	DEX
	CPX #$01
	BNE @loop_7
	BEQ @skip_9

@not_exist_4:
	LDY #$07
	JSR _create_weapon
	track_queue track_metal_blade
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #$04
	BNE @not_max_3
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $06

@not_max_3:
	LDA z:zjoy1_pressed
	AND #up_button | down_button | left_button | right_button
	LSR
	LSR
	LSR
	LSR
	TAY
	LDA @ycoord_speed_fraction, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed, Y
	STA aobject_ycoord_speed, X
	LDA @xcoord_speed_fraction, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @xcoord_speed, Y
	STA aobject_xcoord_speed, X
	JMP @use_heavily

@skip_9:
	SEC
	RTS

@ycoord_speed_fraction:
	.BYTE $00 ;no direction
	.BYTE $00 ;up
	.BYTE $00 ;down
	.BYTE $00 ;up down
	.BYTE $00 ;left
	.BYTE $D4 ;up left
	.BYTE $2C ;down left
	.BYTE $00 ;up down left
	.BYTE $00 ;right
	.BYTE $D4 ;up right
	.BYTE $2C ;down right
	.BYTE $00 ;up down right
	.BYTE $00 ;left right
	.BYTE $00 ;up left right
	.BYTE $00 ;down left right
	.BYTE $00 ;up down left right

@ycoord_speed:
	.BYTE +0 ;no direction
	.BYTE +4 ;up
	.BYTE -4 ;down
	.BYTE +0 ;up down
	.BYTE +0 ;left
	.BYTE +2 ;up left
	.BYTE -3 ;down left
	.BYTE +0 ;up down left
	.BYTE +0 ;right
	.BYTE +2 ;up right
	.BYTE -3 ;down right
	.BYTE +0 ;up down right
	.BYTE +0 ;left right
	.BYTE +0 ;up left right
	.BYTE +0 ;down left right
	.BYTE +0 ;up down left right

@xcoord_speed_fraction:
	.BYTE $00 ;no direction
	.BYTE $00 ;up
	.BYTE $00 ;down
	.BYTE $00 ;up down
	.BYTE $00 ;left
	.BYTE $D4 ;up left
	.BYTE $D4 ;down left
	.BYTE $00 ;up down left
	.BYTE $00 ;right
	.BYTE $D4 ;up right
	.BYTE $D4 ;down right
	.BYTE $00 ;up down right
	.BYTE $00 ;left right
	.BYTE $00 ;up left right
	.BYTE $00 ;down left right
	.BYTE $00 ;up down left right

@xcoord_speed:
	.BYTE +4 ;no direction
	.BYTE +0 ;up
	.BYTE +0 ;down
	.BYTE +0 ;up down
	.BYTE +4 ;left
	.BYTE +2 ;up left
	.BYTE +2 ;down left
	.BYTE +0 ;up down left
	.BYTE +4 ;right
	.BYTE +2 ;up right
	.BYTE +2 ;down right
	.BYTE +0 ;up down right
	.BYTE +0 ;left right
	.BYTE +0 ;up left right
	.BYTE +0 ;down left right
	.BYTE +0 ;up down left right

@time_stopper:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_10
	LDX #$02
	LDA aobject_flag + 2
	BMI @skip_10
	LDY #$08
	JSR _create_weapon
	LDA #$01
	STA atime_stopper_damage_timer
	track_queue track_time_stopper

@use_heavily:
	LDA #$0F
	STA z:ztimer
	LDA #$03
	JMP @use_animation_common

@skip_10:
	SEC
	RTS

@item_1:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_10
	LDX #$04

@loop_8:
	LDA aobject_flag, X
	BPL @not_exist_5
	DEX
	CPX #$01
	BNE @loop_8
	BEQ @skip_11

@not_exist_5:
	LDY #$09
	JSR _create_weapon
	SEC
	LDA z:zweapon_energy + $08
	SBC #$02
	STA z:zweapon_energy + $08
	JMP @use_heavily

@skip_11:
	SEC
	RTS

@item_2:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_12
	LDA aobject_flag + 2
	BMI @skip_12
	LDX #$02
	LDY #$0A
	JSR _create_weapon
	LDA #$3E
	STA aobject_temp + 2
	LDA #$13
	STA aobject_hp + 2
	JMP @use_heavily

@skip_12:
	RTS

@item_3:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip_13
	LDA aobject_flag + 2
	BMI @skip_13
	LDX #$02
	LDY #$0B
	JSR _create_weapon
	LDA #$1F
	STA aobject_hp + 2
	JMP @use_heavily

@skip_13:
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
	.LOBYTES @item_1
	.LOBYTES @item_2
	.LOBYTES @item_3

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
	.HIBYTES @item_1
	.HIBYTES @item_2
	.HIBYTES @item_3
