password_cursor_oam:
	.BYTE $00, $3E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $00, $3E, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $08
	.BYTE $08, $3E, oam_palette_1 | oam_priority_foreground | no_x_flip | y_flip,    $00
	.BYTE $08, $3E, oam_palette_1 | oam_priority_foreground | x_flip | y_flip,       $08
