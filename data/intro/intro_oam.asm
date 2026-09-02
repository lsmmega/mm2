intro_oam:
	.BYTE $00, $30, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $00, $31, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $32, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $08, $33, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $34, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $10, $35, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $30, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E0
	.BYTE $00, $31, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E8
	.BYTE $08, $32, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E0
	.BYTE $08, $33, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E8
	.BYTE $10, $34, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E0
	.BYTE $10, $35, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $E8
	.BYTE $00, $36, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $98
	.BYTE $08, $37, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $98
	.BYTE $10, $37, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $98
	.BYTE $18, $38, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $98
