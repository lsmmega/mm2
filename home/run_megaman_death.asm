_run_megaman_death:
	bankswitch $0E
	LDA #$00
	STA aobject_frameset_lower_timer
	LDA #$01
	STA z:zmegaman_invincibility_time
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
	RTS
