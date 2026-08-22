_bosses_defeated:
	JSR _clear_bosses_flag
	INC z:zcant_collision_flag

@megaman_not_out:
	JSR _run_bosses_defeated
	LDA z:zcurrent_stage
	CMP #stage_wily1
	BNE @not_wily_1
	LDA z:zscroll_direction
	CMP #$03
	BNE @not_death
	LDA #$00
	STA z:zcant_collision_flag
	LDA #$01
	STA z:zmegaman_status
	JMP _megaman_death

@not_wily_1:
@not_death:
	LDA z:zboss_ai_pointer
	CMP #$FF
	BNE @megaman_not_out
	LDA #$00
	STA z:zcant_collision_flag
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	LDA #$00
	STA z:zcheckpoint_pointer
	LDX #$FF
	TXS
	bankswitch $0E
	LDX z:zcurrent_stage
	CPX #stage_wily1
	BCS @wily
	LDA boss_clear_flag, X
	ORA z:zgot_weapon_flag
	STA z:zgot_weapon_flag
	LDA got_item_flag, X
	ORA z:zgot_item_flag
	STA z:zgot_item_flag
	farjsr _get_weapon_jmp
	bankswitch $0E
	LDA z:zgot_weapon_flag
	CMP #$FF
	BEQ @max
	JMP _get_weapons_to_stage_select

@max:
	LDA #$07
	STA z:zcurrent_stage

@wily:
	INC z:zcurrent_stage
	LDA z:zcurrent_stage
	CMP #$0E
	BNE @not_all_clear
	farjsr _ending_jmp
	LDA #$0E
	JMP __reset

@not_all_clear:
	JMP _bosses_defeated_to_continue_stage
