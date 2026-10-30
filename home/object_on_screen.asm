_unused_3ede8: ;in process because include enemies ai code
	LDA #$14
	STA aobject_stand_xcoord - $10, X
	JSR _check_enemies_object_set_flags_2
	BCC @not_oob
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@not_oob:
	SEC
	LDA aobject_ycoord, X
	SBC #$04
	STA aobject_stand_ycoord - $10, X
	RTS

_unused_3ee01:
	LDA #$18
	STA aobject_stand_xcoord - $10, X
	JSR _check_enemies_object_set_flags_2
	BCC @not_oob
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@not_oob:
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_stand_ycoord - $10, X
	RTS

_unused_3ee1a:
	LDA #$18
	STA aobject_stand_xcoord - $10, X
	JSR _check_enemies_object_set_flags_2
	BCC @not_oob
	LDA #$00
	STA aobject_stand_xcoord - $10, X

@not_oob:
	SEC
	LDA aobject_ycoord, X
	SBC #$08
	STA aobject_stand_ycoord - $10, X
	RTS

_unused_3ee33:
	JSR _compare_megaman_xcoord_with_objects_xcoord
	SEC
	LDA aobject_pointer, X
	SBC #$40
	TAY
	LDA $AF79, Y
	STA z:z01
	LDA aobject_flag, X
	AND #objects_invisible
	BEQ @visible
	LDY z:z01
	LDA #light_rose
	CMP acurrent_background_palette + $02, Y
	BNE @not_light_rose
	LDA #$04
	STA aobject_xcoord_speed_fraction, X
	BNE @continue

@not_light_rose:
	LDA z:z00
	CMP #$60
	BCS @done

@continue:
	LDA #can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X

@visible:
	LDA aobject_xcoord_speed_fraction, X
	CMP #$04
	BCS @done
	LDA aobject_temp, X
	AND #%00000011
	BNE @4_frames
	STA aobject_temp, X
	LDA aobject_xcoord_speed_fraction, X
	INC aobject_xcoord_speed_fraction, X
	ASL
	ASL
	TAY
	LDX z:z01
	JSR $AF4C
	LDX z:zsprites_pointer

@4_frames:
	INC aobject_temp, X

@done:
	JSR _check_enemies_object_set_flags_2
	RTS

_unused_3ee8c:
	LDA aobject_xcoord_speed_fraction, X
	BNE @skip
	LDA #$6E
	STA aobject_temp, X
	INC aobject_xcoord_speed_fraction, X
	LDA #$00
	STA aobject_flag, X
	LDA #$01
	STA z:z01
	LDA #$23
	JSR $96CF
	LDA #can_collide_megaman | can_collide_megaman_bullet | objects_exist
	STA aobject_flag, X
	BCS @skip
	LDA #$26
	JSR _enemies_to_items

@skip:
	JSR _check_enemies_object_set_flags_2
	BCC @not_oob
	LDA #$23
	JSR _check_special_object_exist
	BCC @not_oob
	LDA #$28
	JSR _enemies_to_items

@not_oob:
	RTS
	RTS

_unused_3eec6:
	LDA #$01
	BNE _unused_3eec6_common

_check_enemies_object_set_flags_1:
	LDA #$00

_unused_3eec6_common:
	STA z:zhandle_object_type
	LDA aobject_flag, X
	AND #can_collide_megaman | can_collide_megaman_bullet
	BEQ @skip
	PHA
	AND #can_collide_megaman
	BEQ @cant_collide_megaman
	JSR _object_hit

@cant_collide_megaman:
	PLA
	AND #can_collide_megaman_bullet
	BEQ @skip
	JSR _check_weapon_enemies_collision
	BCC @skip
	JSR _enemies_killed
	LDA #$06
	STA aobject_pointer, X
	LDA #objects_exist
	STA aobject_flag, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	JMP _check_object_type_branch

@skip:
_run_check_object_vertical_bool_oob_move:
	SEC
	LDA aobject_ycoord_fraction, X
	SBC aobject_ycoord_speed_fraction, X
	STA aobject_ycoord_fraction, X
	LDA aobject_ycoord, X
	SBC aobject_ycoord_speed, X
	STA aobject_ycoord, X
	CMP #$F0
	BCC @on_screen_1
	JMP _set_object_is_oob

@on_screen_1:
	LDA aobject_flag, X
	AND #objects_with_gravity
	BEQ @without_gravity
	CLC
	LDA aobject_ycoord_speed_fraction, X
	SBC z:zobject_ycoord_speed_accelerate_fraction
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	SBC z:zobject_ycoord_speed_accelerate
	STA aobject_ycoord_speed, X

@without_gravity:
	LDA aobject_flag, X
	AND #objects_right
	BNE @on_right
	SEC
	LDA aobject_xcoord_fraction, X
	SBC aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	SBC aobject_xcoord_speed, X
	STA aobject_xcoord, X
	LDA aobject_screen, X
	SBC #$00
	STA aobject_screen, X
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:z08
	LDA aobject_screen, X
	SBC z:zscreen_id
	BNE _set_object_is_oob
	LDA z:z08
	CMP #$08
	BCC _set_object_is_oob
	BCS @on_screen_2

@on_right:
	CLC
	LDA aobject_xcoord_fraction, X
	ADC aobject_xcoord_speed_fraction, X
	STA aobject_xcoord_fraction, X
	LDA aobject_xcoord, X
	ADC aobject_xcoord_speed, X
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC #$00
	STA aobject_screen, X
	SEC
	LDA aobject_xcoord, X
	SBC z:zscreen_xcoord
	STA z:z08
	LDA aobject_screen, X
	SBC z:zscreen_id
	BNE _set_object_is_oob
	LDA z:z08
	CMP #$F8
	BCS _set_object_is_oob

@on_screen_2:
	CLC
	RTS

_set_object_is_oob:
	LSR aobject_flag, X

_check_object_type_branch:
	CPX #$10
	BCC @not_enemies_items
	LDA z:zhandle_object_type
	BNE @item
	LDA #$FF
	STA a:aenemies_index - $10, X

@not_enemies_items:
	SEC
	RTS

@item:
	LDA #$FF
	STA aitems_index - $10, X
	LDA aenemies_temp - $10, X
	TAY
	LDA aobject_hp, X
	STA aitems_respawn_flag, Y
	SEC
	RTS

_check_items_object_set_flags:
	LDA #$01
	BNE _check_items_object_set_flags_common

_check_enemies_object_set_flags_2:
	LDA #$00

_check_items_object_set_flags_common:
	STA z:zhandle_object_type
	LDA aobject_flag, X
	AND #can_collide_megaman | can_collide_megaman_bullet
	BEQ @skip
	PHA
	AND #can_collide_megaman
	BEQ @cant_collide_megaman
	JSR _object_hit

@cant_collide_megaman:
	PLA
	AND #can_collide_megaman_bullet
	BEQ @skip
	JSR _check_weapon_enemies_collision
	BCC @skip
	JSR _enemies_killed
	LDA #$06
	STA aobject_pointer, X
	LDA #objects_exist
	STA aobject_flag, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	JMP _check_object_type_branch

@skip:
	LDA z:zobject_in_process_coord_fraction
	BNE _set_object_is_oob
	CLC
	RTS

_compare_megaman_xcoord_with_objects_xcoord:
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	SEC
	LDA z:zobject_in_process_coord
	SBC z:zobject_in_process_screen
	STA z:z00
	BCS @on_right
	LDA z:z00
	EOR #%11111111
	ADC #$01
	STA z:z00
	LDA #objects_right
	ORA aobject_flag, X
	STA aobject_flag, X

@on_right:
	RTS

_check_special_object_exist:
	STA z:z00
	LDY #$0F

_check_object_exist:
	LDA z:z00

@loop:
	CMP aobject_pointer + $10, Y
	BEQ @created
	DEY
	BPL @loop
	SEC
	RTS

@created:
	LDA aobject_flag + $10, Y
	BMI @exist
	DEY
	BPL _check_object_exist
	SEC
	RTS

@exist:
	CLC
	RTS

_check_object_vertical_move_collision:
	LDA #$00
	STA z:z0B
	LDA aobject_ycoord_speed, X
	PHP
	BPL @up_1
	CLC
	LDA aobject_ycoord, X
	ADC z:z02
	JMP @down_1

@up_1:
	SEC
	LDA aobject_ycoord, X
	SBC z:z02

@down_1:
	STA z:z0A
	CLC
	LDA aobject_xcoord, X
	ADC z:z01
	STA z:z08
	LDA aobject_screen, X
	ADC #$00
	STA z:z09
	CPX #$0F
	BCS @enemies_1
	JSR _appearing_block_collision
	JMP @not_enemies

@enemies_1:
	JSR _tsa_collision

@not_enemies:
	LDY z:z00
	LDA object_boolean_tsa_collision_table, Y
	STA z:z02
	LDX z:zsprites_pointer
	SEC
	LDA aobject_xcoord, X
	SBC z:z01
	STA z:z08
	LDA aobject_screen, X
	SBC #$00
	STA z:z09
	CPX #$0F
	BCS @enemies_2
	JSR _appearing_block_collision
	JMP @not_enemies_2

@enemies_2:
	JSR _tsa_collision

@not_enemies_2:
	LDX z:zsprites_pointer
	LDY z:z00
	LDA object_boolean_tsa_collision_table, Y
	ORA z:z02
	STA z:z00
	BEQ @air
	PLP
	BMI @down_2
	LDA z:z0A
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_ycoord, X
	JMP @up_2

@down_2:
	LDA aobject_ycoord, X
	PHA
	LDA z:z0A
	AND #%00001111
	STA z:z02
	PLA
	SEC
	SBC z:z02

@up_2:
	STA aobject_ycoord, X
	LDA #$00
	STA aobject_ycoord_fraction, X
	LDA aobject_flag, X
	AND #objects_with_gravity
	BEQ @without_gravity
	LDA #$C0
	STA aobject_ycoord_speed_fraction, X
	LDA #$FF
	STA aobject_ycoord_speed, X

@without_gravity:
	RTS

@air:
	PLP
	RTS

_check_object_horizontal_move_collision:
	LDA aobject_ycoord, X
	STA z:z0A
	LDA #$00
	STA z:z0B
	LDA aobject_flag, X
	AND #objects_right
	PHP
	BEQ @left_1
	SEC
	LDA aobject_xcoord, X
	ADC z:z01
	STA z:z08
	LDA aobject_screen, X
	ADC #$00
	JMP @right

@left_1:
	CLC
	LDA aobject_xcoord, X
	SBC z:z01
	STA z:z08
	LDA aobject_screen, X
	SBC #$00

@right:
	STA z:z09
	CPX #$0F
	BCS @enemies
	JSR _appearing_block_collision
	JMP @not_enemies

@enemies:
	JSR _tsa_collision

@not_enemies:
	LDX z:zsprites_pointer
	LDY z:z00
	LDA object_boolean_tsa_collision_table, Y
	STA z:z03
	BEQ @air
	PLP
	BEQ @left_2
	LDA z:z08
	AND #%00001111
	STA z:z00
	SEC
	LDA aobject_xcoord, X
	SBC z:z00
	STA aobject_xcoord, X
	LDA aobject_screen, X
	SBC #$00
	STA aobject_screen, X
	JMP _check_object_vertical_move_collision

@left_2:
	LDA z:z08
	AND #%00001111
	EOR #%00001111
	SEC
	ADC aobject_xcoord, X
	STA aobject_xcoord, X
	LDA aobject_screen, X
	ADC #$00
	STA aobject_screen, X
	JMP _check_object_vertical_move_collision

@air:
	PLP
	JMP _check_object_vertical_move_collision

object_boolean_tsa_collision_table:
	.BYTE 0
	.BYTE 1
	.BYTE 0
	.BYTE 1
	.BYTE 0
	.BYTE 1
	.BYTE 1
	.BYTE 1
	.BYTE 1
