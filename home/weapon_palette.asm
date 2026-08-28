_weapon_palette:
	LDA z:zcurrent_weapon

_weapon_palette_menu:
	ASL
	ASL
	TAX
	INX
	LDY #$01

@loop:
	LDA weapon_palette_table, X
	STA acurrent_background_palette + $10, Y
	INY
	INX
	CPY #$04
	BNE @loop
	RTS

weapon_palette_table:
	.BYTE black, black, white_cyan,   light_azure      ;mega buster
	.BYTE black, black, white_yellow, light_rose       ;atomic fire
	.BYTE black, black, pale_gray,    light_azure      ;air shooter
	.BYTE black, black, pale_gray,    light_chartreuse ;leaf shield
	.BYTE black, black, pale_gray,    dark_gray        ;bubble lead
	.BYTE black, black, pale_magenta, white_rose       ;quick boomerang
	.BYTE black, black, pale_magenta, light_magenta    ;time stopper
	.BYTE black, black, pale_orange,  light_yellow     ;metal blade
	.BYTE black, black, pale_gray,    white_red        ;crash bomber
	.BYTE black, black, pale_gray,    light_red        ;item 1
	.BYTE black, black, pale_gray,    light_red        ;item 2
	.BYTE black, black, pale_gray,    light_red        ;item 3
