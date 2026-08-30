draw_wily_ufo_oam_lo_pointers:
	.LOBYTES draw_wily_ufo_oam_00
	.LOBYTES draw_wily_ufo_oam_01
	.LOBYTES draw_wily_ufo_oam_02
	.LOBYTES draw_wily_ufo_oam_03
	.LOBYTES draw_wily_ufo_oam_04
	.LOBYTES draw_wily_ufo_oam_05
	.LOBYTES draw_wily_ufo_oam_06
	.LOBYTES draw_wily_ufo_oam_07
	.LOBYTES draw_wily_ufo_oam_08
	.LOBYTES draw_wily_ufo_oam_09
	.LOBYTES draw_wily_ufo_oam_0a

draw_wily_ufo_oam_hi_pointers:
	.HIBYTES draw_wily_ufo_oam_00
	.HIBYTES draw_wily_ufo_oam_01
	.HIBYTES draw_wily_ufo_oam_02
	.HIBYTES draw_wily_ufo_oam_03
	.HIBYTES draw_wily_ufo_oam_04
	.HIBYTES draw_wily_ufo_oam_05
	.HIBYTES draw_wily_ufo_oam_06
	.HIBYTES draw_wily_ufo_oam_07
	.HIBYTES draw_wily_ufo_oam_08
	.HIBYTES draw_wily_ufo_oam_09
	.HIBYTES draw_wily_ufo_oam_0a

draw_wily_ufo_oam_00:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $48, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $00, $49, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $00, $49, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $00, $48, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $4A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $4B, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $4C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $4C, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $08, $4B, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $4A, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $28
	.BYTE $10, $4D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $10, $4E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $10, $4F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $10, $4F, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $10, $4E, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $10, $4D, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $28
@end:
draw_wily_ufo_oam_01:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $50, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $00, $51, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $00, $52, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $00, $52, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $00, $51, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $00, $50, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $28
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $28
@end:
draw_wily_ufo_oam_02:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $56, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $00, $57, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $00, $58, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $00, $59, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $00, $5A, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $00, $5B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $28
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $28
@end:
draw_wily_ufo_oam_03:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $5B, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $00
	.BYTE $00, $5A, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $08
	.BYTE $00, $59, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $10
	.BYTE $00, $58, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $00, $57, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $00, $56, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $28
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $55, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $08, $54, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $53, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $28
@end:
draw_wily_ufo_oam_04:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $69, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $00, $40, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $00, $41, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $00, $42, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $00, $69, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $6A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $43, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $44, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $45, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $08, $6A, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
@end:
draw_wily_ufo_oam_05:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $00, $69, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $00, $46, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $00, $47, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $00, $42, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $00, $69, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $08, $6A, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $00
	.BYTE $08, $43, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $44, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $45, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $08, $6A, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
@end:
draw_wily_ufo_oam_06:
draw_wily_ufo_oam_07:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $08, $5C, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $08, $5D, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $08, $5D, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $08, $5C, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $10, $5E, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $10, $5F, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $10, $5F, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $10, $5E, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $18, $60, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $18, $61, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $18, $61, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $18, $60, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
	.BYTE $20, $62, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $08
	.BYTE $20, $63, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $20, $63, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $20, $62, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $20
@end:
draw_wily_ufo_oam_08:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $10, $64, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $10, $64, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $18
	.BYTE $18, $65, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $18, $65, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $18
@end:
draw_wily_ufo_oam_09:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $10, $66, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $14
	.BYTE $18, $67, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $14
@end:
draw_wily_ufo_oam_0a:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $14, $68, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $14
@end:
