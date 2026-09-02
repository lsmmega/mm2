_password_screen_move_right:
	CLC
	LDA z:zscreen_xcoord
	ADC #$08
	STA z:zscreen_xcoord
	PHP
	LDA z:zscreen_id
	ADC #$00
	STA z:zscreen_id
	PLP
	BEQ @done
	JSR _nmi_wait_0d
	JSR _nmi_wait_0d
	JSR _nmi_wait_0d
	JMP _password_screen_move_right

@done:
	RTS

_load_password_correct_weapons:
	LDA #$00
	STA z:zscreen_update_flag
	STA z:zcurrent_handle_32x32_attribute

@loop:
	LDA z:zFD
	STA z:z08
	LDA z:zFE
	STA z:z09
	JSR _draw_screen_temp
	INC z:zFD
	INC z:zcurrent_handle_32x32_attribute
	JSR _nmi_wait_0d
	LDA z:zFD
	AND #%00111111
	BNE @loop
	RTS

_password_screen_move_left:
	SEC
	LDA z:zscreen_xcoord
	SBC #$08
	STA z:zscreen_xcoord
	BEQ @done
	LDA z:zscreen_id
	SBC #$00
	STA z:zscreen_id
	JSR _nmi_wait_0d
	JSR _nmi_wait_0d
	JSR _nmi_wait_0d
	JMP _password_screen_move_left

@done:
	RTS
