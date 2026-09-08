_ending_flash_palette:
	LDX aobject_frameset_upper_timer
	LDA z:zFF
	AND #%00000001
	BNE @odd
	INX

@odd:
	TXA
	ASL
	TAX
	LDY #$00

@loop:
	LDA ending_flash_palettes, X
	STA acurrent_background_palette + $12, Y
	STA acurrent_background_palette + $1A, Y
	INX
	INY
	CPY #$02
	BNE @loop
	RTS
