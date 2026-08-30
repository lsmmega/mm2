wily_plate_oam:
	.BYTE $00, $6B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $60
	.BYTE $00, $6C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $68
	.BYTE $00, $6D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $70
	.BYTE $08, $6E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $60
	.BYTE $08, $6F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $68
