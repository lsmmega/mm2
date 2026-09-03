password_correct_weapons_oam:
	.BYTE $60, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $60 ;mega buster
	.BYTE $70, $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $60 ;atomic fire
	.BYTE $60, $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $80 ;air shooter
	.BYTE $70, $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $70 ;leaf shield
	.BYTE $60, $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $70 ;bubble lead
	.BYTE $60, $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $90 ;quick boomerang
	.BYTE $70, $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $90 ;time stopper
	.BYTE $70, $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $80 ;metal blade
	.BYTE $80, $20, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $60 ;crash bomber
	.BYTE $80, $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $70 ;item 1
	.BYTE $80, $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $80 ;item 2
	.BYTE $80, $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $90 ;item 3
