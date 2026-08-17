_find_objects:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	CLC
	LDA z:zscreen_xcoord
	STA z:z0A
	ADC #$FF
	STA z:z08
	LDA z:zscreen_id
	STA z:z0B
	ADC #$00
	STA z:z09
	LDA z:ztoward
	AND #objects_right
	BNE @on_right

@loop_1:
	LDY z:zleft_checkpoint_enemies_index
	BEQ @check_right_1
	LDA enemy_objects_set_screen - 1, Y
	CMP z:z0B
	BCC @check_right_1
	BNE @arrived_1
	LDA enemy_objects_set_xcoord - 1, Y
	CMP z:z0A
	BCC @check_right_1

@arrived_1:
	DEY
	JSR _generate_enemies
	DEC z:zleft_checkpoint_enemies_index
	BNE @loop_1

@check_right_1:
	LDY z:zright_checkpoint_enemies_index
	BEQ @save_1

@loop_2:
	LDA enemy_objects_set_screen - 1, Y
	CMP z:z09
	BCC @save_1
	BNE @not_arrived_1
	LDA enemy_objects_set_xcoord - 1, Y
	CMP z:z08
	BCC @save_1

@not_arrived_1:
	DEY
	BNE @loop_2

@save_1:
	STY z:zright_checkpoint_enemies_index

@loop_3:
	LDY z:zleft_checkpoint_items_index
	BEQ @check_right_2
	LDA item_objects_set_screen - 1, Y
	CMP z:z0B
	BCC @check_right_2
	BNE @arrived_2
	LDA item_objects_set_xcoord - 1, Y
	CMP z:z0A
	BCC @check_right_2

@arrived_2:
	LDA aitems_index + $0F, Y
	BEQ @had_got_1
	DEY
	JSR _generate_items

@had_got_1:
	DEC z:zleft_checkpoint_items_index
	BNE @loop_3

@check_right_2:
	LDY z:zright_checkpoint_items_index
	BEQ @save_2

@loop_4:
	LDA item_objects_set_screen - 1, Y
	CMP z:z09
	BCC @save_2
	BNE @not_arrived_2
	LDA item_objects_set_xcoord - 1, Y
	CMP z:z08
	BCC @save_2

@not_arrived_2:
	DEY
	BNE @loop_4

@save_2:
	STY z:zright_checkpoint_items_index
	JMP @done

@on_right:
@loop_5:
	LDY z:zright_checkpoint_enemies_index
	LDA z:z09
	CMP enemy_objects_set_screen, Y
	BCC @check_left_1
	BNE @arrived_3
	LDA z:z08
	CMP enemy_objects_set_xcoord, Y
	BCC @check_left_1

@arrived_3:
	JSR _generate_enemies
	INC z:zright_checkpoint_enemies_index
	BNE @loop_5

@check_left_1:
	LDY z:zleft_checkpoint_enemies_index

@loop_6:
	LDA z:z0B
	CMP enemy_objects_set_screen, Y
	BCC @save_3
	BNE @not_arrived_3
	LDA z:z0A
	CMP enemy_objects_set_xcoord, Y
	BCC @save_3

@not_arrived_3:
	INY
	BNE @loop_6

@save_3:
	STY z:zleft_checkpoint_enemies_index

@loop_7:
	LDY z:zright_checkpoint_items_index
	LDA z:z09
	CMP item_objects_set_screen, Y
	BCC @check_left_2
	BNE @arrived_4
	LDA z:z08
	CMP item_objects_set_xcoord, Y
	BCC @check_left_2

@arrived_4:
	LDA aitems_respawn_flag, Y
	BEQ @had_got_2
	JSR _generate_items

@had_got_2:
	INC z:zright_checkpoint_items_index
	BNE @loop_7

@check_left_2:
	LDY z:zleft_checkpoint_items_index

@loop_8:
	LDA z:z0B
	CMP item_objects_set_screen, Y
	BCC @save_4
	BNE @not_arrived_4
	LDA z:z0A
	CMP item_objects_set_xcoord, Y
	BCC @save_4

@not_arrived_4:
	INY
	BNE @loop_8

@save_4:
	STY z:zleft_checkpoint_items_index

@done:
	bankswitch $0E
	RTS

_generate_enemies:
	TYA
	LDX #$0F

@loop:
	CMP aenemies_index, X
	BEQ _generate_objects_exist_common
	DEX
	BPL @loop
	JSR _check_object
	BCS _generate_objects_exist_common
	TYA
	STA aenemies_index, X
	LDA enemy_objects_set_screen, Y
	STA aobject_screen + $10, X
	LDA enemy_objects_set_xcoord, Y
	STA aobject_xcoord + $10, X
	LDA enemy_objects_set_ycoord, Y
	STA aobject_ycoord + $10, X
	LDA enemy_objects_set, Y

_generate_objects_common:
	STA aobject_pointer + $10, X
	TAY
	PHA
	LDA objects_default_flags_table, Y
	STA aobject_flag + $10, X
	LDA objects_collision_xcoord, Y
	STA aobject_collision_xcoord + $10, X
	LDA #$14
	STA aobject_hp + $10, X
	LDA objects_xcoord_speed_index, Y
	TAY
	LDA objects_xcoord_speed_init_table, Y
	STA aobject_xcoord_speed + $10, X
	LDA objects_xcoord_speed_init_table + 1, Y
	STA aobject_xcoord_speed_fraction + $10, X
	PLA
	TAY
	LDA objects_ycoord_speed_index, Y
	TAY
	LDA objects_ycoord_speed_init_table, Y
	STA aobject_ycoord_speed + $10, X
	LDA objects_ycoord_speed_init_table + 1, Y
	STA aobject_ycoord_speed_fraction + $10, X
	LDA #$00
	STA aobject_frameset_upper_timer + $10, X
	STA aobject_frameset_lower_timer + $10, X
	STA aobject_temp + $10, X
	STA aenemies_temp, X
	STA aobject_xcoord_fraction + $10, X
	STA aobject_ycoord_fraction + $10, X
	STA aenemies_hit_flag, X

_generate_objects_exist_common:
	RTS

_generate_items:
	TYA
	LDX #$0F

@loop:
	CMP aitems_index, X
	BEQ _generate_objects_exist_common
	DEX
	BPL @loop
	JSR _check_object
	BCS _generate_objects_exist_common
	TYA
	PHA
	STA aitems_index, X
	LDA item_objects_set_screen, Y
	STA aobject_screen + $10, X
	LDA item_objects_set_xcoord, Y
	STA aobject_xcoord + $10, X
	LDA item_objects_set_ycoord, Y
	STA aobject_ycoord + $10, X
	LDA item_objects_set, Y
	JSR _generate_objects_common
	PLA
	STA aenemies_temp, X
	TAY
	LDA aitems_respawn_flag, Y
	STA aobject_hp + $10, X
	RTS
