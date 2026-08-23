_run_stage_wily_5:
	JSR _teleport_to_coord

@mainloop:
	LDA z:zitem
	BEQ @not_hit_item
	JSR _megaman_hit_item

@not_hit_item:
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @not_open_menu
	JSR _home_open_menu

@not_open_menu:
	JSR _appearing_block
	JSR _run_megaman
	JSR _run_weapons_ai
	JSR _run_bosses_ai
	JSR _run_enemies_ai
	JSR _sprites
	LDA z:zscroll_direction
	BEQ @not_scroll
	JSR _check_scroll

@not_scroll:
	LDA z:zwater
	BEQ @skip
	INC z:zwater_timer
	CMP z:zwater_timer
	BEQ @4_frames
	BCS @skip

@4_frames:
	JSR _nmi_wait_water
	LDA #$00
	STA z:zwater_timer

@skip:
	JSR _nmi_wait_0e
	JMP @mainloop
