ready_oam_coord_table:
;ycoord, tiles, attributes, xcoord
	.BYTE $60, $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $6C ;R
	.BYTE $60, $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $74 ;E
	.BYTE $60, $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $7C ;A
	.BYTE $60, $99, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $84 ;D
	.BYTE $60, $9A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $8C ;Y
