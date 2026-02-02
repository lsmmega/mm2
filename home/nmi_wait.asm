_nmi_wait_0e:
	LDA z:zjoy1_pressed
	STA z:zjoy1_pressed_frame
	LDA z:zjoy2_pressed
	STA z:zjoy2_pressed_frame
	JSR _background_palette
	LDA #$00
	STA z:znmi_wait

@loop:
	LDA z:znmi_wait
	BEQ @loop
	JSR _joy
	LDA z:zjoy1_pressed
	EOR z:zjoy1_pressed_frame
	AND z:zjoy1_pressed
	STA z:zjoy1_pressed_bits
	LDA z:zjoy2_pressed
	EOR z:zjoy2_pressed_frame
	AND z:zjoy2_pressed
	STA z:zjoy2_pressed_bits
	bankswitch $0E
	RTS

_nmi_wait_0d:
	LDA z:zjoy1_pressed
	STA z:zjoy1_pressed_frame
	LDA z:zjoy2_pressed
	STA z:zjoy2_pressed_frame
	JSR _background_palette
	LDA #$00
	STA z:znmi_wait

@loop:
	LDA z:znmi_wait
	BEQ @loop
	JSR _joy
	LDA z:zjoy1_pressed
	EOR z:zjoy1_pressed_frame
	AND z:zjoy1_pressed
	STA z:zjoy1_pressed_bits
	LDA z:zjoy2_pressed
	EOR z:zjoy2_pressed_frame
	AND z:zjoy2_pressed
	STA z:zjoy2_pressed_bits
	bankswitch $0D
	RTS
