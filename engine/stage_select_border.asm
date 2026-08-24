_stage_select_border:
	LDA z:znmi_frame
	AND #%00001000
	BNE @hidden
	LDY z:zcurrent_stage
	LDA stage_select_border_ycoord_offset, Y
	STA z:z09
	LDA stage_select_border_xcoord_offset, Y
	STA z:z08
	LDX #$00

@loop_1:
	CLC
	LDA stage_select_border_oam, X
	ADC z:z09
	STA aoam_y + $E0, X
	INX
	LDA stage_select_border_oam, X
	STA aoam_y + $E0, X
	INX
	LDA stage_select_border_oam, X
	STA aoam_y + $E0, X
	INX
	CLC
	LDA stage_select_border_oam, X
	ADC z:z08
	STA aoam_y + $E0, X
	INX
	CPX #$10
	BNE @loop_1
	RTS

@hidden:
	LDA #$F8
	LDX #$0F

@loop_2:
	STA aoam_y + $E0, X
	DEX
	BPL @loop_2
	RTS
