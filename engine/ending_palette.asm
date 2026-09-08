_ending_palette:
	LDX aobject_frameset_upper_timer
	BEQ @z
	LDA z:zFF
	AND #%00000001
	BEQ @even
	DEX

@even:
	TXA
	ASL
	ASL
	STA z:z00
	CLC
	ASL
	ADC z:z00
	TAX
	LDY #$00

@loop:
	LDA ending_palettes, X
	STA acurrent_background_palette, Y
	INX
	INY
	CPY #$0C
	BNE @loop

@z:
	RTS
