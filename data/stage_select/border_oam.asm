stage_select_border_oam:
	.BYTE $F8, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip , $F9
	.BYTE $F8, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip , $1F
	.BYTE $1E, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip , $F9
	.BYTE $1E, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip , $1F

stage_select_border_ycoord_offset:
	.BYTE $60 ;0
	.BYTE $20 ;1
	.BYTE $20 ;2
	.BYTE $20 ;3
	.BYTE $60 ;4
	.BYTE $A0 ;5
	.BYTE $A0 ;6
	.BYTE $A0 ;7
	.BYTE $60 ;8

stage_select_border_xcoord_offset:
	.BYTE $70 ;0
	.BYTE $30 ;1
	.BYTE $70 ;2
	.BYTE $B0 ;3
	.BYTE $B0 ;4
	.BYTE $B0 ;5
	.BYTE $70 ;6
	.BYTE $30 ;7
	.BYTE $30 ;8

;unused
	.BYTE $60, $20, $60, $20, $20, $A0, $A0, $A0
	.BYTE $30, $70, $B0, $30, $B0, $70, $30, $B0
