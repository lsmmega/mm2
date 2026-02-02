_background_palette:
	LDA z:ztime_stopper_flag
	BNE @skip
	LDA apalette_animation_frame
	BEQ @skip
	INC z:zpalette_animation_timer
	CMP z:zpalette_animation_timer
	BCS @skip
	LDA #$00
	STA z:zpalette_animation_timer
	INC z:zcurrent_palette_no
	LDA z:zcurrent_palette_no
	CMP ano_of_palette
	BCC @not_max
	LDA #$00
	STA z:zcurrent_palette_no

@not_max:
	ASL
	ASL
	ASL
	ASL
	TAX
	LDY #$00

@loop:
	LDA abackground_palette_set, X
	STA acurrent_background_palette, Y
	INX
	INY
	CPY #$10
	BNE @loop
	INC z:z3A

@skip:
	RTS
