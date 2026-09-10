get_weapon_cursor_ycoord:
	.BYTE $B0, $C0

get_weapon_cursor_oam:
	.BYTE $B0, $22, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $40
