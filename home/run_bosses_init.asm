_run_bosses_init:
	LDA z:zcurrent_stage
	STA z:zcurrent_boss

_run_bosses_init_common:
	farjsr _boss_init_jmp
	bankswitch $0E

@ready:
	LDA #$00
	STA z:zjoy1_pressed
	STA z:zjoy1_pressed_bits
	JSR _run_megaman
	JSR _run_weapons_ai
	JSR _find_objects
	JSR _run_bosses_ai
	JSR _run_enemies_ai
	JSR _sprites
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
	LDA z:zboss_ai_pointer
	CMP #$02
	BCC @ready
	RTS
