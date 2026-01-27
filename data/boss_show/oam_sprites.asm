boss_show_oam_sprites_00:
	.FEATURE FORCE_RANGE
	.BYTE (@end - @start) / 4

@start:
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE  -8, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_01:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE -32, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -17, $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_02:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $B9, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,     +8
	.BYTE  -8, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_03:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $DC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $DD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $DE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $E0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $E1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -23, $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE -16, $E2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $E3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $E4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $E5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -9
	.BYTE  -8, $E6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_04:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -9
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -1
	.BYTE -16, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_05:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -14
	.BYTE -32, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_06:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -13
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -24, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +3
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_07:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -20, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_08:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -20, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_09:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0a:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $C0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0b:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $C2, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0c:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $C5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $C4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0d:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $C6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $C7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0e:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $C8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -18, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_0f:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -13
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +3
	.BYTE -24, $F5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -14
	.BYTE -24, $F6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE -24, $F7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +2
	.BYTE -20, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $F8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $F9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $FA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $FB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $FC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  +0, $FD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
@end:

boss_show_oam_sprites_10:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -24, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE -21, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
	.BYTE -16, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_11:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -15
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -21, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_12:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_13:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_14:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BE, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_15:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $BA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $BB, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $BC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BF, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $C0, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $C8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_16:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -15
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -21, $F4, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $D6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $D7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $D8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $D9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $DA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  +0, $DB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  +0, $DC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
@end:

boss_show_oam_sprites_17:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -23, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -7
	.BYTE -16, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_18:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -22, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -16, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -15
	.BYTE -16, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -7
	.BYTE -16, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +1
	.BYTE  -8, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -20
	.BYTE  -8, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_19:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -24, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -24, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE -23, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -7
	.BYTE -16, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +1
	.BYTE  -8, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
@end:

boss_show_oam_sprites_1a:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -23, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -7
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE -16, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -12
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
	.BYTE  -8, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +4
	.BYTE  +0, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
@end:

boss_show_oam_sprites_1b:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -30, $DE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
@end:

boss_show_oam_sprites_1c:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -32, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -32, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE -32, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +14
	.BYTE -24, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +16
	.BYTE -16, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -28, $DE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
@end:

boss_show_oam_sprites_1d:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -32, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -32, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE -32, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +14
	.BYTE -24, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +16
	.BYTE -16, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -28, $DE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
@end:

boss_show_oam_sprites_1e:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -32, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -32, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE -32, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +10
	.BYTE -24, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, +16
	.BYTE -16, $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -11
	.BYTE  -8, $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE  -8, $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +5
	.BYTE  +0, $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -11
	.BYTE  +0, $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +5
	.BYTE -28, $DE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
@end:

boss_show_oam_sprites_1f:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
@end:

boss_show_oam_sprites_20:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -32, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -7
@end:

boss_show_oam_sprites_21:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -19, $F3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -4
@end:

boss_show_oam_sprites_22:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -24, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -18
	.BYTE -24, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -24, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -24, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE -16, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -18
	.BYTE -16, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -10
	.BYTE -16, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -2
	.BYTE -16, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +6
	.BYTE  -8, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  +0, $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  +0, $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -19, $F3, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -5
@end:

boss_show_oam_sprites_23:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $A3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $A4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $AA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $AB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $AC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $AC, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,     +0
	.BYTE  -8, $AD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -25, $F4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
@end:

boss_show_oam_sprites_24:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $B1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $B2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $B3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $B4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $B5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -11
	.BYTE -16, $B6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -3
	.BYTE -16, $B7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +5
	.BYTE  -8, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $F4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
@end:

boss_show_oam_sprites_25:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $AE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $AF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $B0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $BC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $BD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $BE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $BF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $B8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $B9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $BA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $BB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $F4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
@end:

boss_show_oam_sprites_26:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $A0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $A1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $A5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $D0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $D1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $D2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $D3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE  -8, $D4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $D5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $D5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $D6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -25, $F4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE -32, $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
@end:

boss_show_oam_sprites_27:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -32, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE  -8, $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:

boss_show_oam_sprites_28:
	.BYTE (@end - @start) / 4

@start:                         
	.BYTE -32, $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -32, $CF, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -32, $D0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -32, $D1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -24, $D2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -24, $A2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -24, $D3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -24, $D4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $D5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE -16, $A6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE -16, $A7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE -16, $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
	.BYTE -16, $C0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip,  -6
	.BYTE  -8, $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, -16
	.BYTE  -8, $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  -8
	.BYTE  -8, $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +0
	.BYTE  -8, $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip,  +8
@end:
