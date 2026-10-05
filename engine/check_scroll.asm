_check_scroll:
	LDX z:zscreen_xcoord
	BNE @check_vertical
	LDX z:zscreen_id
	BEQ @check_end_mapset
	CPX z:zstart_scrolling_mapset
	BNE @check_end_mapset
	LDY z:zscroll_index
	DEY
	JSR _load_stage_scrolling
	TYA
	LDY z:zscroll_direction
	AND @anded_start_mapset_scroll_table - 1, Y
	BEQ @check_end_mapset
	JSR _start_scrolling_mapset
	JMP @continue

@check_end_mapset:
	CPX z:zend_scrolling_mapset
	BNE @check_vertical
	LDY z:zscroll_index
	JSR _load_stage_scrolling
	TYA
	LDY z:zscroll_direction
	AND @anded_end_mapset_scroll_table - 1, Y
	BEQ @check_vertical
	JSR _end_scrolling_mapset
	LDX z:zcurrent_stage
	LDA z:zscreen_id
	CMP draw_last_door_screen_id, X
	BNE @not_bosses
	JSR _run_bosses_init

@not_bosses:
	JMP @continue

@check_vertical:
	LDA z:zscroll_direction
	CMP #$03
	BNE @continue
	LDA #$01
	STA z:zmegaman_status
	JMP _megaman_death

@continue:
	LDA #$00
	STA z:zscroll_direction
	RTS

@anded_start_mapset_scroll_table:
	.BYTE scroll_down
	.BYTE scroll_end
	.BYTE scroll_up
	.BYTE scroll_right

@anded_end_mapset_scroll_table:
	.BYTE scroll_up
	.BYTE scroll_right
	.BYTE scroll_down
	.BYTE scroll_end
