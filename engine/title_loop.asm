	LDA #$03
	STA z:z1up
	LDA #$00
	STA z:ze_tank

@back:
	JSR _homeintro
	LDA z:ztitle_flag
	BNE @back
