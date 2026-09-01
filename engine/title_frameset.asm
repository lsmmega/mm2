_title_megaman_frameset:
	DEC aobject_frameset_lower_timer + $10
	BNE @skip
	LDA #$05
	STA aobject_frameset_lower_timer + $10
	INC aobject_pointer + $10
	LDA aobject_pointer + $10
	CMP #$02
	BNE @skip
	LDA #$00
	STA aobject_pointer + $10

@skip:
	RTS
