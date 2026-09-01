_run_opening_screen:
	LDA z:z08
	PHA
	LDA z:z09
	PHA
	LDA z:zscreen_update_flag
	JSR _screen_update
	CLC
	PLA
	STA z:z09
	PLA
	STA z:z08
	INC z:z08
	INC z:zcurrent_handle_32x32_attribute
	RTS
