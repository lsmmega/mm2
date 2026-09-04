_load_password_screen:
	LDA #$00
	STA z:zcurrent_handle_32x32_attribute
	STA z:zscreen_update_flag

@loop:
	JSR _draw_screen_temp
	INC z:z08
	INC z:zcurrent_handle_32x32_attribute
	JSR _draw_screen_temp
	JSR _run_opening_screen
	LDA z:z08
	AND #%00111111
	BNE @loop
	RTS
