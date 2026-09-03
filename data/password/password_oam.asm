password_cursor_hidden:
	.BYTE $F8, $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $58

password_oam:
	.BYTE $30, $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $44
	.BYTE $30, $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $54
	.BYTE $30, $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $64
	.BYTE $30, $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $74
	.BYTE $30, $29, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $84
	.BYTE $44, $E1, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $54, $E2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $64, $E3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $74, $E4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $84, $E5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $A0, $3F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $B4, $2D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0

password_oamycoord:
	.BYTE $40, $40, $40, $40, $40
	.BYTE $50, $50, $50, $50, $50
	.BYTE $60, $60, $60, $60, $60
	.BYTE $70, $70, $70, $70, $70
	.BYTE $80, $80, $80, $80, $80

password_oamxcoord:
	.BYTE $41, $51, $61, $71, $81
	.BYTE $41, $51, $61, $71, $81
	.BYTE $41, $51, $61, $71, $81
	.BYTE $41, $51, $61, $71, $81
	.BYTE $41, $51, $61, $71, $81
