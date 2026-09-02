_draw_intro_oam:
	JSR _init_miscellaneous_sprites
	LDA #$00
	STA z:z00
	LDX #$02

@mainloop:
	STX z:zsprites_pointer
	LDA aobject_pointer, X
	BEQ @skip
	LDY aobject_ycoord, X
	STY z:z08
	LDY aobject_screen, X
	STY z:z09
	LDX #$00
	LDY #$0C
	CMP #$01
	BEQ @window
	LDY #$04
	LDX #$30

@window:
	STY z:z02
	LDY z:z00

@loop:
	CLC
	LDA z:z08
	ADC intro_oam, X
	STA aoam_y, Y
	LDA z:z09
	ADC #$00
	BEQ @not_hidden
	LDA #$F8
	STA aoam_y, Y
	BNE @hidden

@not_hidden:
	LDA intro_oam + 1, X
	STA aoam_tiles, Y
	LDA intro_oam + 2, X
	STA aoam_attributes, Y
	LDA intro_oam + 3, X
	STA aoam_x, Y
	INY
	INY
	INY
	INY

@hidden:
	INX
	INX
	INX
	INX
	DEC z:z02
	BNE @loop
	STY z:z00

@skip:
	LDX z:zsprites_pointer
	INX
	CPX #$0F
	BNE @mainloop
	RTS
