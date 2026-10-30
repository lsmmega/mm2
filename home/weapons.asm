_use_weapons:
	LDA z:zout_of_screen
	BNE @skip
	LDX z:zcurrent_weapon
	BEQ @is_buster
	LDA z:zgot_item_flag, X
	BEQ @skip

@is_buster:
	LDA use_weapons_lo_jumptable, X
	STA z:z08
	LDA use_weapons_hi_jumptable, X
	STA z:z09
	JMP (z08)

@skip:
	SEC
	RTS

_use_mega_buster:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ _use_mega_buster_skip
	LDX #$04

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @loop
	BEQ _use_mega_buster_skip

@not_exist:
	track_queue track_mega_buster
	LDY #$00
	JSR _create_weapon

_use_weapons_lightly:
	LDA #$0F
	STA z:ztimer
	LDA #$01

_use_animation_common:
	STA z:zmegaman_hit_type
	LDX z:zmegaman_status
	CLC
	ADC megaman_hit_object_table, X
	STA aobject_pointer
	CLC
	RTS

_use_mega_buster_skip:
	SEC
	RTS

_use_atomic_fire:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDX #$02
	LDY #$01
	JSR _create_weapon
	LDA #can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X

@skip:
	SEC
	RTS

_use_air_shooter:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDX #$04

@loop_1:
	LDA aobject_flag, X
	BMI @skip
	DEX
	CPX #$01
	BNE @loop_1
	LDX #$04

@loop_2:
	STX z:z01
	LDY #$02
	JSR _create_weapon
	LDX z:z01
	DEX
	CPX #$01
	BNE @loop_2
	track_queue track_air_shooter
	SEC
	LDA z:zweapon_energy + 1
	SBC #2
	STA z:zweapon_energy + 1
	JMP _use_weapons_lightly

@skip:
	SEC
	RTS

_use_leaf_shield:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDA aobject_flag + 2
	BMI @skip
	SEC
	LDA z:zweapon_energy + 2
	SBC #3
	BCC @skip
	LDX #$05

@loop:
	STX z:z02
	LDY #$03
	JSR _create_weapon
	LDX z:z02
	DEX
	CPX #$01
	BNE @loop

@skip:
	SEC
	RTS

_use_bubble_lead:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDX #$03

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @loop
	BEQ @skip

@not_exist:
	LDY #$04
	JSR _create_weapon
	track_queue track_mega_buster
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #2
	BNE @not_max
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $03

@not_max:
	JMP _use_weapons_lightly

@skip:
	SEC
	RTS

_use_quick_boomerang:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BNE @do
	LDA z:zquick_boomerang_autofire_timer
	CMP #11
	BEQ @do
	INC z:zquick_boomerang_autofire_timer
	CLC
	RTS

@do:
	LDX #$05

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @loop
	BEQ @skip

@not_exist:
	LDY #$05
	JSR _create_weapon
	track_queue track_mega_buster
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #$08
	BNE @not_max
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $04

@not_max:
	LDA #$00
	STA z:zquick_boomerang_autofire_timer
	JMP _use_weapons_lightly

@skip:
	SEC
	RTS

_use_crash_bomber:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDA aobject_flag + 2
	BMI @skip
	SEC
	LDA z:zweapon_energy + $07
	SBC #4
	BCC @skip
	STA z:zweapon_energy + $07
	LDX #$02
	LDY #$06
	JSR _create_weapon
	track_queue track_mega_buster
	JMP _use_weapons_lightly

@skip:
	SEC
	RTS

_use_metal_blade:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDX #$04

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @loop
	BEQ @skip

@not_exist:
	LDY #$07
	JSR _create_weapon
	track_queue track_metal_blade
	INC z:zweapon_consume_fraction
	LDA z:zweapon_consume_fraction
	CMP #4
	BNE @not_max
	LDA #$00
	STA z:zweapon_consume_fraction
	DEC z:zweapon_energy + $06

@not_max:
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
	JMP _use_weapons_heavily

@skip:
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

_use_time_stopper:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ _use_time_stopper_item_1_skip_common
	LDX #$02
	LDA aobject_flag + 2
	BMI _use_time_stopper_item_1_skip_common
	LDY #$08
	JSR _create_weapon
	LDA #$01
	STA atime_stopper_damage_timer
	track_queue track_time_stopper

_use_weapons_heavily:
	LDA #$0F
	STA z:ztimer
	LDA #$03
	JMP _use_animation_common

_use_time_stopper_item_1_skip_common:
	SEC
	RTS

_use_item_1:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ _use_time_stopper_item_1_skip_common
	LDX #$04

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$01
	BNE @loop
	BEQ @skip

@not_exist:
	LDY #$09
	JSR _create_weapon
	SEC
	LDA z:zweapon_energy + $08
	SBC #2
	STA z:zweapon_energy + $08
	JMP _use_weapons_heavily

@skip:
	SEC
	RTS

_use_item_2:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDA aobject_flag + 2
	BMI @skip
	LDX #$02
	LDY #$0A
	JSR _create_weapon
	LDA #$3E
	STA aobject_temp + 2
	LDA #$13
	STA aobject_hp + 2
	JMP _use_weapons_heavily

@skip:
	RTS

_use_item_3:
	LDA z:zjoy1_pressed_bits
	AND #b_button
	BEQ @skip
	LDA aobject_flag + 2
	BMI @skip
	LDX #$02
	LDY #$0B
	JSR _create_weapon
	LDA #$1F
	STA aobject_hp + 2
	JMP _use_weapons_heavily

@skip:
	RTS

use_weapons_lo_jumptable:
	.LOBYTES _use_mega_buster
	.LOBYTES _use_atomic_fire
	.LOBYTES _use_air_shooter
	.LOBYTES _use_leaf_shield
	.LOBYTES _use_bubble_lead
	.LOBYTES _use_quick_boomerang
	.LOBYTES _use_time_stopper
	.LOBYTES _use_metal_blade
	.LOBYTES _use_crash_bomber
	.LOBYTES _use_item_1
	.LOBYTES _use_item_2
	.LOBYTES _use_item_3

use_weapons_hi_jumptable:
	.HIBYTES _use_mega_buster
	.HIBYTES _use_atomic_fire
	.HIBYTES _use_air_shooter
	.HIBYTES _use_leaf_shield
	.HIBYTES _use_bubble_lead
	.HIBYTES _use_quick_boomerang
	.HIBYTES _use_time_stopper
	.HIBYTES _use_metal_blade
	.HIBYTES _use_crash_bomber
	.HIBYTES _use_item_1
	.HIBYTES _use_item_2
	.HIBYTES _use_item_3

_run_weapons_trajectory:
	LDX #$0F

_run_weapons_trajectory_mainloop:
	STX z:zsprites_pointer
	LDA aobject_flag, X
	BPL @not_exist
	AND #can_collide_megaman_bullet
	BNE _run_weapons_trajectory_can_collide
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA aobject_collision_xcoord, X
	JSR _run_check_object_vertical_bool_oob_move

@not_exist:
_run_weapons_trajectory_return:
	LDX z:zsprites_pointer
	DEX
	CPX #$01
	BNE _run_weapons_trajectory_mainloop
	RTS

_run_weapons_trajectory_can_collide:
	LDA #>(_run_weapons_trajectory_return - 1)
	PHA
	LDA #<(_run_weapons_trajectory_return - 1)
	PHA
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA aobject_collision_xcoord, X
	SEC
	LDA aobject_pointer, X
	SBC #$2F
	TAY
	LDA @lo_jumptable, Y
	STA z:z08
	LDA @hi_jumptable, Y
	STA z:z09
	JMP (z08)

@lo_jumptable:
	.LOBYTES _mega_buster_trajectory
	.LOBYTES _atomic_fire_trajectory
	.LOBYTES _air_shooter_trajectory
	.LOBYTES _leaf_shield_trajectory
	.LOBYTES _bubble_lead_trajectory
	.LOBYTES _quick_boomerang_trajectory
	.LOBYTES _crash_bomber_trajectory
	.LOBYTES _time_stopper_trajectory
	.LOBYTES _metal_blade_trajectory
	.LOBYTES _item_1_trajectory
	.LOBYTES _item_2_trajectory
	.LOBYTES _item_3_trajectory
	.LOBYTES _unused_3e481
	.LOBYTES _check_crash_bomber_object_on_screen_flags
	.LOBYTES _check_crash_bomber_object_on_screen_flags
	.LOBYTES _weapons_no_trajectory

@hi_jumptable:
	.HIBYTES _mega_buster_trajectory
	.HIBYTES _atomic_fire_trajectory
	.HIBYTES _air_shooter_trajectory
	.HIBYTES _leaf_shield_trajectory
	.HIBYTES _bubble_lead_trajectory
	.HIBYTES _quick_boomerang_trajectory
	.HIBYTES _crash_bomber_trajectory
	.HIBYTES _time_stopper_trajectory
	.HIBYTES _metal_blade_trajectory
	.HIBYTES _item_1_trajectory
	.HIBYTES _item_2_trajectory
	.HIBYTES _item_3_trajectory
	.HIBYTES _unused_3e481
	.HIBYTES _check_crash_bomber_object_on_screen_flags
	.HIBYTES _check_crash_bomber_object_on_screen_flags
	.HIBYTES _weapons_no_trajectory

_mega_buster_trajectory:
_atomic_fire_trajectory:
	LDA aobject_temp, X
	BEQ @uncharged
	JMP @charged

@uncharged:
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	LDA z:zweapon_consume_fraction
	CMP #$FF
	BEQ @not_max
	INC z:zweapon_consume_fraction

@not_max:
	LDY #$02
	LDA z:zweapon_consume_fraction
	CMP #$7D
	BCC @chargring_stage
	INY
	INY
	CMP #$BB
	BCC @chargring_stage
	INY
	INY

@chargring_stage:
	STY z:z00
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	LDY #$00

@4_frames:
	JSR @atomic_fire_anim_palette
	LDA aobject_ycoord
	STA aobject_ycoord, X
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA z:z00
	LSR
	TAY
	LDA @consume_table - 1, Y
	CMP z:zweapon_energy
	BCC @enough
	BEQ @enough
	LDY #$00
	STY z:zweapon_consume_fraction
	JSR @atomic_fire_anim_palette
	LSR aobject_flag, X
	RTS

@enough:
	LDA z:zjoy1_pressed
	AND #b_button
	BEQ @not_pressed
	RTS

@not_pressed:
	LDY #$00
	STY z:zweapon_consume_fraction
	JSR @atomic_fire_anim_palette
	LSR aobject_flag + $02
	LDX #$04

@loop:
	LDA aobject_flag, X
	BPL @not_exist
	DEX
	CPX #$02
	BNE @loop

@teleport_out:
	RTS

@not_exist:
	LDA z:zout_of_screen
	BNE @oob
	LDY #$01
	JSR _create_weapon
	LDA z:z00
	LSR
	STA aobject_temp, X
	STA aweapon_collision_index, X
	TAY
	LDA @frameset_timer_table, Y
	STA aobject_frameset_upper_timer, X
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA aobject_collision_xcoord, X

@oob:
	SEC
	LDA z:zweapon_energy
	SBC @consume_table - 1, Y
	STA z:zweapon_energy
	track_queue track_atomic_fire_release
	LDA #$04
	STA aobject_xcoord_speed, X
	LDA z:zmegaman_status
	BEQ @teleport_out
	JMP _use_weapons_lightly

@charged:
	CMP #$02
	BCS @check_2nd_3rd
	LDA aobject_frameset_upper_timer, X
	CMP #$03
	BNE @nz
	LDA #$01
	BNE @continue

@check_2nd_3rd:
	BNE @3rd
	LDA aobject_frameset_upper_timer, X
	CMP #$06
	BNE @nz
	LDA #$04
	BNE @continue

@3rd:
	LDA aobject_frameset_upper_timer, X
	CMP #$09
	BNE @nz
	LDA #$07

@continue:
	STA aobject_frameset_upper_timer, X

@nz:
	JSR _run_check_object_vertical_bool_oob_move
	RTS

@atomic_fire_anim_palette:
	LDA @anim_palette_table, Y
	STA acurrent_background_palette + $11
	LDA @anim_palette_table + 1, Y
	STA acurrent_background_palette + $13
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	LDA z:z00
	LSR
	TAY
	LDA @track_queue_table, Y
	JSR _track_queue

@8_frames:
	RTS

@track_queue_table:
	.BYTE track_atomic_fire_charge_1
	.BYTE track_atomic_fire_charge_1
	.BYTE track_atomic_fire_charge_2
	.BYTE track_atomic_fire_charge_3

@anim_palette_table:
	.BYTE black,      light_rose
	.BYTE pale_azure, light_rose
	.BYTE pale_rose,  white_cyan
	.BYTE pale_gray,  pale_gray

@frameset_timer_table:
	.BYTE 0, 1, 4, 7

@consume_table:
	.BYTE 1, 6, 10

_air_shooter_trajectory:
	TXA
	SEC
	SBC #$02
	TAY
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @xcoord_speed_table, Y
	STA aobject_xcoord_speed, X
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC #$10
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC #$00
	STA aobject_ycoord_speed, X
	JSR _run_check_object_vertical_bool_oob_move
	RTS

@xcoord_speed_fraction_table:
	.BYTE $19, $99, $33

@xcoord_speed_table:
	.BYTE +1, +1, +2

_leaf_shield_trajectory:
	LDA aobject_temp, X
	BNE @object_done
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_hp, X
	STA z:z01
	TXA
	SEC
	SBC #$02
	STA z:z00
	AND #%00000001
	BNE @is_1_3
	SEC
	LDA aobject_xcoord
	SBC z:z01
	STA aobject_xcoord, X
	LDA aobject_screen
	SBC #$00
	JMP @next_1

@is_1_3:
	CLC
	LDA aobject_xcoord
	ADC z:z01
	STA aobject_xcoord, X
	LDA aobject_screen
	ADC #$00

@next_1:
	STA aobject_screen, X
	LDA z:z00
	AND #%00000010
	BNE @is_2_3
	SEC
	LDA aobject_ycoord
	SBC z:z01
	JMP @next_2

@is_2_3:
	CLC
	LDA aobject_ycoord
	ADC z:z01

@next_2:
	STA aobject_ycoord, X
	LDA z:z01
	CMP #$0C
	BEQ @object_process_done
	CLC
	ADC #$02
	STA aobject_hp, X
	RTS

@object_process_done:
	LSR aobject_flag + $03
	LSR aobject_flag + $04
	LSR aobject_flag + $05
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag + $02
	LDA #$01
	STA aobject_temp + $02
	LDA #$01
	STA aobject_frameset_upper_timer + $02
	RTS

@object_done:
	LDA z:zout_of_screen
	BEQ @not_oob
	LDA #$06
	BNE @oob

@not_oob:
	LDA aobject_frameset_upper_timer, X
	CMP #$05
	BCC @n5
	LDA #$01

@oob:
	STA aobject_frameset_upper_timer, X

@n5:
	LDA aobject_temp, X
	CMP #$01
	BNE @run
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	track_queue track_leaf_shield

@8_frames:
	LDA aobject_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	STA aobject_screen, X
	LDA aobject_ycoord
	STA aobject_ycoord, X
	LDA z:zout_of_screen
	BEQ @not_oob_1
	LDA #$00
	STA aobject_ycoord, X

@not_oob_1:
	LDA z:zjoy1_pressed
	AND #up_button | down_button | left_button | right_button
	BEQ @not_pressed
	LDY z:zout_of_screen
	BEQ @not_oob_2
	LSR aobject_flag, X
	RTS

@not_oob_2:
	AND #left_button | right_button
	BEQ @up_down
	LSR
	AND #objects_right
	ORA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	LDA #$04
	STA aobject_xcoord_speed, X
	BNE @done

@up_down:
	LDY #$00
	LDA z:zjoy1_pressed
	AND #up_button
	BNE @up
	INY

@up:
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X

@done:
	SEC
	LDA z:zweapon_energy + 2
	SBC #3
	STA z:zweapon_energy + 2
	INC aobject_temp, X

@not_pressed:
	RTS

@run:
	JSR _run_check_object_vertical_bool_oob_move
	RTS

@ycoord_speed_table:
	.BYTE +4, -4

_bubble_lead_trajectory:
	LDA #$07
	STA z:z01
	LDA #$07
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA aobject_temp, X
	BNE @not_throw_on_air
	LDA z:z00
	BEQ @check_oob
	INC aobject_temp, X
	LDA aobject_flag, X
	AND #~objects_with_gravity
	STA aobject_flag, X

@switch_horizontal:
	LDA #$C0
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	LDA #$02
	STA aobject_xcoord_speed, X
	BNE @check_oob

@not_throw_on_air:
	CMP #$01
	BNE @switch_vertical
	LDA z:z03
	BEQ @not_hitting
	LSR aobject_flag, X
	RTS

@not_hitting:
	LDA z:z00
	BNE @check_oob
	LDA #$00
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$FE
	STA aobject_ycoord_speed, X
	INC aobject_temp, X
	BNE @check_oob

@switch_vertical:
	LDA z:z00
	BEQ @check_oob
	DEC aobject_temp, X
	BNE @switch_horizontal

@check_oob:
	JSR _run_check_object_vertical_bool_oob_move
	RTS

_quick_boomerang_trajectory:
	LDA aobject_temp, X
	CMP #$12
	BCS @check_return
	SEC
	LDA aobject_ycoord_speed_fraction, X
	SBC #$4B
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC #$00
	STA aobject_ycoord_speed, X
	JMP @shooting

@check_return:
	BNE @return_is_set
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X

@return_is_set:
	LDA aobject_temp, X
	CMP #$23
	BNE @returning
	LSR aobject_flag, X
	RTS

@returning:
	CLC
	LDA aobject_ycoord_speed_fraction, X
	ADC #$4B
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	ADC #$00
	STA aobject_ycoord_speed, X

@shooting:
	INC aobject_temp, X
	JSR _run_check_object_vertical_bool_oob_move
	RTS

_crash_bomber_trajectory:
	LDA aobject_temp, X
	BNE @grab
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA z:z0A
	LDA #$00
	STA z:z0B
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right
	SEC
	LDA aobject_xcoord, X
	SBC #$06
	STA z:z08
	LDA aobject_screen, X
	SBC #$00
	JMP @on_left

@on_right:
	CLC
	LDA aobject_xcoord, X
	ADC #$06
	STA z:z08
	LDA aobject_screen, X
	ADC #$00

@on_left:
	STA z:z09
	JSR _appearing_block_collision
	LDY z:z00
	LDX z:zsprites_pointer
	LDA weapons_tsa_collision_bool, Y
	BNE @can_collide
	CLC
	LDA z:z0A
	ADC #$10
	STA z:z0A
	JSR _appearing_block_collision
	LDY z:z00
	LDX z:zsprites_pointer
	LDA weapons_tsa_collision_bool, Y
	BNE @can_collide
	JSR _run_check_object_vertical_bool_oob_move
	RTS

@can_collide:
	track_queue track_crash_bomber_grab
	LDA aobject_flag, X
	AND #~can_collide_megaman
	STA aobject_flag, X
	INC aobject_frameset_upper_timer, X
	INC aobject_temp, X
	LDA #$7E
	STA aobject_hp, X
	BNE @done

@grab:
	CMP #$01
	BNE @explosion
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE @nz
	LDA #$02
	STA aobject_frameset_upper_timer, X

@nz:
	DEC aobject_hp, X
	BNE @done
	LDA #$05
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA #$38
	STA aobject_hp, X
	INC aobject_temp, X

@done:
	JSR _check_crash_bomber_object
	RTS

@explosion:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_hp, X
	AND #%00000111
	BNE @animating
	track_queue track_enemy_hit
	LDA aobject_hp, X
	LSR
	AND #%00001100
	STA z:z02
	LDA #$06
	STA z:z01

@loop:
	LDA z:z01
	CMP #$02
	BEQ @animating
	STA z:z00
	LDY #$0C
	JSR _set_crash_bomber_explosion
	LDY z:z00
	LDX z:z02
	CLC
	LDA aobject_ycoord, Y
	ADC @ycoord_offset, X
	STA aobject_ycoord, Y
	CLC
	LDA aobject_xcoord, Y
	ADC @xcoord_offset, X
	STA aobject_xcoord, Y
	LDA aobject_screen, Y
	ADC @screen_offset, X
	STA aobject_screen, Y
	LDX z:zsprites_pointer
	INC z:z02
	DEC z:z01
	BNE @loop

@animating:
	LDX z:zsprites_pointer
	DEC aobject_hp, X
	BPL @exploding
	LSR aobject_flag, X
	RTS

@exploding:
	JSR _check_crash_bomber_object
	RTS

@ycoord_offset:
	.BYTE  -8, -16,  +8,  +0
	.BYTE  -8,  -8,  +8,  +0
	.BYTE -16,  +0, +16, +16
	.BYTE -16,  -8,  +8,  +8

@xcoord_offset:
	.BYTE  -8,  +8,  +0, +16
	.BYTE  -8, +16, -16,  +8
	.BYTE  +0,  +0,  -8, +16
	.BYTE -16, +16, -16,  +8

@screen_offset:
	.BYTE -1, +0, +0, +0
	.BYTE -1, +0, -1, +0
	.BYTE +0, +0, -1, +0
	.BYTE -1, +0, -1, +0

weapons_tsa_collision_bool:
	.BYTE 0
	.BYTE 1
	.BYTE 0
	.BYTE 0
	.BYTE 0
	.BYTE 1
	.BYTE 1
	.BYTE 1
	.BYTE 1

_time_stopper_trajectory:
_metal_blade_trajectory:
	DEC aobject_xcoord_speed_fraction, X
	BNE @nz
	LDA #$0F
	STA aobject_xcoord_speed_fraction, X
	DEC z:zweapon_energy + 5
	BNE @nz
	LSR aobject_flag, X
	LDA #$00
	STA z:ztime_stopper_flag
	LDA #$01
	STA z:zwind_conveyor_speed
	RTS

@nz:
	LDA #$01
	STA z:ztime_stopper_flag
	LDA #$00
	STA z:zwind_conveyor_speed
	STA z:zwind_conveyor_speed_fraction
	LDA #$80
	STA aobject_ycoord, X
	CLC
	ADC z:zscreen_xcoord
	STA aobject_xcoord, X
	LDA aobject_screen
	ADC #$00
	STA aobject_screen, X
	RTS

_item_1_trajectory:
	LDA aobject_temp, X
	BNE @check_flash
	INC aobject_hp, X
	LDA aobject_hp, X
	CMP #$BB
	BEQ @ready_flash
	LDA aobject_frameset_upper_timer, X
	CMP #$02
	BNE @2_frames
	LDA #$00
	STA aobject_frameset_upper_timer, X

@2_frames:
	JMP @continue

@ready_flash:
	LDA #$3E
	STA aobject_hp, X
	INC aobject_temp, X
	BNE @continue

@check_flash:
	CMP #$01
	BNE @check_oob
	LDA aobject_frameset_upper_timer, X
	CMP #$07
	BNE @7_frames
	LDA #$03
	STA aobject_frameset_upper_timer, X

@7_frames:
	DEC aobject_hp, X
	BEQ @2nd

@continue:
	SEC
	LDA aobject_ycoord, X
	SBC #$04
	STA aweapon_stand_xcoord + 1, X
	LDA #$14
	STA aweapon_collision_index + $0E, X
	LDA #$0B
	STA z:z01
	LDA #$1D
	STA z:z02
	LDA #$04
	STA z:z03
	JSR _check_item_horizontal_collision
	LDA z:z00
	BEQ @check_oob
	LDA #$00
	STA aobject_ycoord_speed_fraction, X

@2nd:
	LDA #$02
	STA aobject_temp, X
	LDA #$08
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aweapon_collision_index + $0E, X

@check_oob:
	JSR _run_check_object_vertical_bool_oob_move
	BCC @not_oob
	LDA #$00
	STA aweapon_collision_index + $0E, X

@not_oob:
	RTS

_item_2_trajectory:
	LDA aobject_temp, X
	BEQ @ready_launch
	DEC aobject_temp, X
	BNE @run_regular

@ready_launch:
	DEC aobject_hp, X
	BNE @continue
	LDA #$13
	STA aobject_hp, X
	DEC z:zweapon_energy + 9
	BNE @continue

@mainloop:
	LDA #$05
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aweapon_stand_xcoord
	STA aobject_xcoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_frameset_lower_timer, X
	LDA #objects_exist
	STA aobject_flag, X
	BEQ @continue
	JMP @check_oob

@continue:
	LDA aobject_xcoord_speed, X
	CMP #$02
	BEQ @run_regular
	CLC
	LDA aobject_xcoord_speed_fraction, X
	ADC #$08
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed, X
	ADC #$00
	STA aobject_xcoord_speed, X
	CMP #$02
	BNE @run_regular
	LDA #$00
	STA aobject_xcoord_speed_fraction, X

@run_regular:
	LDA #$0F
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA z:z03
	BNE @mainloop
	SEC
	LDA aobject_ycoord, X
	SBC #$20
	STA z:z0A
	LDA #$00
	STA z:z0B
	SEC
	LDA aobject_xcoord, X
	SBC #$10
	STA z:z08
	LDA aobject_screen, X
	SBC #$00
	STA z:z09
	JSR _appearing_block_collision
	LDX z:zsprites_pointer
	LDY z:z00
	LDA weapons_tsa_collision_bool, Y
	BNE @hit
	CLC
	LDA z:z08
	ADC #$20
	STA z:z08
	LDA z:z09
	ADC #$00
	STA z:z09
	JSR _appearing_block_collision
	LDX z:zsprites_pointer
	LDY z:z00
	LDA weapons_tsa_collision_bool, Y
	BEQ @not_hit

@hit:
	JMP @mainloop

@not_hit:
	SEC
	LDA aobject_ycoord, X
	SBC #$04
	STA aweapon_stand_xcoord + 1, X
	LDA #$18
	STA aweapon_collision_index + $0E, X
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE @check_oob
	LDA #$00
	STA aobject_frameset_upper_timer, X

@check_oob:
	JSR _run_check_object_vertical_bool_oob_move
	BCC @not_oob
	LDA #$00
	STA aweapon_collision_index + $0E, X

@not_oob:
	RTS

_item_3_trajectory:
	LDA aobject_temp, X
	BNE @climbing
	LDA aobject_ycoord_speed, X
	STA z:z04
	LDA #$0A
	STA z:z01
	LDA #$08
	STA z:z02
	JSR _check_object_horizontal_move_collision
	LDA z:z03
	BEQ @not_hit_horizontal_block
	LDA #$62
	STA aobject_ycoord_speed_fraction, X
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	LDA aobject_flag, X
	AND #~objects_with_gravity
	STA aobject_flag, X
	INC aobject_temp, X
	BNE @continue

@not_hit_horizontal_block:
	LDA z:z04
	BPL @continue
	LDA z:z00
	BEQ @continue
	LDA #$03
	STA aobject_ycoord_speed, X
	LDA #$76
	STA aobject_ycoord_speed_fraction, X

@continue:
	LDA #$00
	STA aweapon_collision_index, X
	LDA aobject_frameset_upper_timer, X
	CMP #$04
	BNE @run_regular
	LDA #$00
	STA aobject_frameset_upper_timer, X

@run_regular:
	DEC aobject_hp, X
	BNE @nz_1
	LDA #$1F
	STA aobject_hp, X
	DEC z:zweapon_energy + 10
	BEQ @delete

@nz_1:
	JMP @check_oob

@climbing:
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aweapon_stand_xcoord + 1, X
	LDA #$14
	STA aweapon_collision_index + $0E, X
	LDA #$0C
	STA z:z01
	LDA #$21
	STA z:z02
	LDA #$08
	STA z:z03
	JSR _check_item_horizontal_collision
	LDA aobject_temp, X
	AND #%00001111
	CMP #$02
	BCS @megaman_standing
	LDA aobject_temp, X
	BPL @mainloop
	INC aobject_temp, X
	BNE @mainloop

@mainloop:
	LDA z:z00
	BNE @delete
	LDA z:z03
	BNE @continue
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_frameset_upper_timer, X
	CMP #$09
	BNE @nz_2
	LDA #$05
	STA aobject_frameset_upper_timer, X

@nz_2:
	INC aweapon_collision_index, X
	LDA aweapon_collision_index, X
	CMP #$3E
	BCC @run_regular

@delete:
	LDA #$0A
	STA aobject_frameset_upper_timer, X
	LDA #$00
	STA aobject_ycoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_frameset_lower_timer, X
	STA aweapon_collision_index + $0E, X
	LDA #objects_exist
	STA aobject_flag, X
	RTS

@megaman_standing:
	LDA aobject_temp, X
	BPL @megaman_not_standing
	AND #%00001111
	STA aobject_temp, X
	LDA #$62
	STA aobject_ycoord_speed_fraction, X
	LDA #$00
	STA aobject_ycoord_speed, X
	BEQ @mainloop

@megaman_not_standing:
	LDA aobject_ycoord_speed, X
	BPL @up
	LDA z:z00
	BNE @delete

@up:
	LDA #$9E
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X
	JMP @mainloop

@check_oob:
	JSR _run_check_object_vertical_bool_oob_move
	BCC @not_oob
	LDA #$00
	STA aweapon_collision_index + $0E, X

@not_oob:
	RTS

_check_item_horizontal_collision:
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right
	SEC
	LDA aobject_xcoord, X
	SBC z:z01
	STA z:z08
	LDA aobject_screen, X
	SBC #$00
	JMP @on_left

@on_right:
	CLC
	LDA aobject_xcoord, X
	ADC z:z01
	STA z:z08
	LDA aobject_screen, X
	ADC #$00

@on_left:
	STA z:z09
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA z:z0A
	LDA #$00
	SBC #$00
	STA z:z0B
	JSR _appearing_block_collision
	LDX z:zsprites_pointer
	LDY z:z00
	LDA item_tsa_collision_bool, Y
	PHA
	LDA aobject_ycoord_speed, X
	BPL @up
	CLC
	LDA aobject_ycoord, X
	ADC z:z03
	STA z:z0A
	LDA #$00
	ADC #$00
	JMP @down

@up:
	SEC
	LDA aobject_ycoord, X
	SBC z:z02
	STA z:z0A
	LDA #$00
	SBC #$00

@down:
	STA z:z0B
	LDA aobject_xcoord, X
	STA z:z08
	LDA aobject_screen, X
	STA z:z09
	JSR _appearing_block_collision
	LDX z:zsprites_pointer
	LDY z:z00
	LDA item_tsa_collision_bool, Y
	STA z:z00
	PLA
	STA z:z03
	RTS

item_tsa_collision_bool:
	.BYTE 0
	.BYTE 1
	.BYTE 0
	.BYTE 1
	.BYTE 0
	.BYTE 1
	.BYTE 1
	.BYTE 1
	.BYTE 1

_unused_3e481:
	LDA #$00
	STA aobject_frameset_lower_timer, X
	LDA aobject_temp, X
	BNE @nz_1
	LDA aobject_hp, X
	BNE @nz_2
	LDA aobject_flag, X
	EOR #objects_right
	STA aobject_flag, X
	INC aobject_frameset_upper_timer, X
	AND #objects_right
	BEQ @on_left
	INC aobject_frameset_upper_timer, X

@on_left:
	LDA #$00
	STA aobject_xcoord_speed_fraction, X
	STA aobject_ycoord_speed_fraction, X
	LDA #$FE
	STA aobject_ycoord_speed, X
	LDA #$01
	STA aobject_xcoord_speed, X
	LDA #$10
	STA aobject_hp, X
	INC aobject_temp, X
	BNE @nz_2

@nz_1:
	CLC
	LDA aobject_xcoord_speed_fraction, X
	ADC #$40
	STA aobject_xcoord_speed_fraction, X
	LDA aobject_xcoord_speed, X
	ADC #$00
	STA aobject_xcoord_speed, X
	LDA aobject_hp, X
	BNE @nz_2
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_speed, X
	STA aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_speed, X
	LDA #$02
	STA aobject_hp, X
	DEC aobject_temp, X

@nz_2:
	DEC aobject_hp, X
	JSR _run_check_object_vertical_bool_oob_move
	RTS

_check_crash_bomber_object_on_screen_flags:
	JSR _check_crash_bomber_object
	RTS

_weapons_no_trajectory:
	RTS

_check_crash_bomber_object:
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	LDA aobject_screen, X
	SBC z:zscreen_id
	BCC @hidden
	BNE @hidden
	CLC
	RTS

@hidden:
	LSR aobject_flag, X
	SEC
	RTS

_set_crash_bomber_explosion:
	LDA aobject_xcoord, X
	STA z:z08
	LDA aobject_screen, X
	STA z:z09
	LDA aobject_ycoord, X
	STA z:z0A
	LDX z:z00
	LDA weapons_object_id_table, Y
	STA aobject_pointer, X
	LDA weapons_object_flag_table, Y
	STA aobject_flag, X
	LDA z:z08
	STA aobject_xcoord, X
	LDA z:z09
	STA aobject_screen, X
	LDA z:z0A
	STA aobject_ycoord, X
	LDA weapons_object_xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA weapons_object_xcoord_speed_table, Y
	STA aobject_xcoord_speed, X
	LDA weapons_object_ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA weapons_object_ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	STA aobject_temp, X
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA aobject_collision_xcoord, X
	LDX z:zsprites_pointer
	RTS
