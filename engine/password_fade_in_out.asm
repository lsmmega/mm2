_password_fade_in:
	LDA #$04
	STA z:zFD

@loop:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	JSR _password_fade_in_set
	DEC z:zFD
	BMI @done

@4_frames:
	JSR _nmi_wait_0d
	JMP @loop

@done:
	RTS

_password_fade_in_set:
	LDX #$07
	LDA #$04
	JSR _password_fade_in_run
	LDX #$1F
	LDA #$0F
	JSR _password_fade_in_run
	RTS

_password_fade_in_run:
	STA z:z00

@loop:
	SEC
	LDA acurrent_background_palette, X
	SBC #$10
	BPL @process
	LDA #black

@process:
	STA acurrent_background_palette, X
	DEX
	CPX z:z00
	BNE @loop
	RTS

_password_fade_out:
	LDA #$04
	STA z:zFD

@loop:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	JSR _password_fade_out_set
	DEC z:zFD
	BMI @done

@4_frames:
	JSR _nmi_wait_0d
	JMP @loop

@done:
	RTS

_password_fade_out_set:
	LDX #$07
	LDY #$07
	LDA #$04
	JSR _password_fade_out_run
	LDX #$1F
	LDY #$1F
	LDA #$0F
	JSR _password_fade_out_run
	RTS

_password_fade_out_run:
	STA z:z01

@loop:
	LDA acurrent_background_palette, X
	CMP #black
	BNE @process
	LDA password_ending_palettes, Y
	AND #%00001111
	JMP @continue

@process:
	CLC
	LDA acurrent_background_palette, X
	ADC #$10
	CMP password_ending_palettes, Y
	BEQ @continue
	BCS @skip

@continue:
	STA acurrent_background_palette, X

@skip:
	DEY
	DEX
	CPX z:z01
	BNE @loop
	RTS
