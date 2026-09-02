title_megaman_oam_lo_pointer:
	.LOBYTES title_megaman_oam_sprites_00
	.LOBYTES title_megaman_oam_sprites_01
	.LOBYTES title_megaman_oam_sprites_02
	.LOBYTES title_megaman_oam_sprites_03
	.LOBYTES title_megaman_oam_sprites_04
	.LOBYTES title_megaman_oam_sprites_05
	.LOBYTES title_megaman_oam_sprites_06
	.LOBYTES title_megaman_oam_sprites_07
	.LOBYTES title_megaman_oam_sprites_08
	.LOBYTES title_megaman_oam_sprites_09
	.LOBYTES title_megaman_oam_sprites_0a
	.LOBYTES title_megaman_oam_sprites_0b
	.LOBYTES title_megaman_oam_sprites_0c

title_megaman_oam_hi_pointer:
	.HIBYTES title_megaman_oam_sprites_00
	.HIBYTES title_megaman_oam_sprites_01
	.HIBYTES title_megaman_oam_sprites_02
	.HIBYTES title_megaman_oam_sprites_03
	.HIBYTES title_megaman_oam_sprites_04
	.HIBYTES title_megaman_oam_sprites_05
	.HIBYTES title_megaman_oam_sprites_06
	.HIBYTES title_megaman_oam_sprites_07
	.HIBYTES title_megaman_oam_sprites_08
	.HIBYTES title_megaman_oam_sprites_09
	.HIBYTES title_megaman_oam_sprites_0a
	.HIBYTES title_megaman_oam_sprites_0b
	.HIBYTES title_megaman_oam_sprites_0c

title_megaman_oam_sprites_00:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $00, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $01, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $02, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $1F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $20, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
@end:

title_megaman_oam_sprites_01:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $09, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $0A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $0B, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $1F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $20, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
@end:

title_megaman_oam_sprites_02:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $0C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $0D, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $02, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $00, $21, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $23, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $24, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
@end:

title_megaman_oam_sprites_03:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $0C, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $0E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $02, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $00, $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $23, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $24, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
@end:

title_megaman_oam_sprites_04:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $0F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $10, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $11, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $00, $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $1F, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $20, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
@end:

title_megaman_oam_sprites_05:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $14, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $15, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $06, $27, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $CF
@end:

title_megaman_oam_sprites_06:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $16, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $06, $28, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $CF
@end:

title_megaman_oam_sprites_07:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $06, $28, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $CF
@end:

title_megaman_oam_sprites_08:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $06, $28, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $CF
@end:

title_megaman_oam_sprites_09:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $17, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $08, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $10, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $06, $28, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $CF
@end:

title_megaman_oam_sprites_0a:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $F8, $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
@end:

title_megaman_oam_sprites_0b:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $F8, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $2C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $00, $2D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $00, $2C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D8
	.BYTE $08, $2C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $08, $2D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $08, $2C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D8
	.BYTE $10, $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $2E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $2B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D8
@end:

title_megaman_oam_sprites_0c:

	.BYTE (@end - @start) >> 2

@start:
	.BYTE $08, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $10, $2E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $10, $2B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D8
@end:
