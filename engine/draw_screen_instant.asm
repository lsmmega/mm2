_draw_screen_instant:
	LDX #$00
	STX z:z08
	LSR
	ROR z:z08
	LSR
	ROR z:z08
	CLC
	ADC #>stage_mapset_pointer
	STA z:z09
	LDA z:zcurrent_handle_32x32_attribute
	PHA
	LDA #$00
	STA z:zcurrent_handle_32x32_attribute

@loop:
	JSR _scrolling_horizontal
	INC z:z08
	INC z:zcurrent_handle_32x32_attribute
	JSR _scrolling_horizontal
	LDA z:z08
	PHA
	LDA z:z09
	PHA
	LDA z:zppu_ctrl
	AND #nmi_enable
	BEQ @disable
	JSR _nmi_wait_0e
	JMP @enable

@disable:
	LDA z:zscreen_update_flag
	JSR _screen_update

@enable:
	CLC
	PLA
	STA z:z09
	PLA
	STA z:z08
	INC z:z08
	INC z:zcurrent_handle_32x32_attribute
	LDA z:z08
	AND #%00111111
	BNE @loop
	PLA
	STA z:zcurrent_handle_32x32_attribute
	RTS
