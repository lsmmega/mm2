oam_ending_00:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $80, $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $80, $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $80, $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $88, $53, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $88, $54, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $55, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $88, $56, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $90, $57, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $90, $58, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $59, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $90, $5A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $98, $5B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $98, $5C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $98, $5D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $98, $5E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $A0, $5F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A0, $60, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A0, $61, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $A0, $62, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $A8, $63, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A8, $64, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A8, $65, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $A8, $66, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $B0, $67, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B0, $68, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B0, $69, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B0, $6A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $B8, $6B, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $6C, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $6D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B8, $6E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $89, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C1
	.BYTE $89, $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $C9
	.BYTE $91, $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C1
	.BYTE $91, $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C9
@end:

oam_ending_01:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $80, $77, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $80, $78, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $88, $79, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $88, $7A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $7A, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $88, $79, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $90, $7B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $90, $7C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $7C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $90, $7B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $98, $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $98, $7E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $98, $7F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $98, $7D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A0, $83, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A0, $84, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A0, $85, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $A0, $83, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A8, $86, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A8, $87, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A8, $88, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $A8, $89, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $B0, $8A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B0, $8B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B0, $8C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B0, $8D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $B8, $8E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $8F, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $9D, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B8, $9E, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $88, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $90, $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
@end:

oam_ending_02:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $80, $50, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BE
	.BYTE $80, $51, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C6
	.BYTE $80, $52, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $CE
	.BYTE $88, $53, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B6
	.BYTE $88, $54, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BE
	.BYTE $88, $55, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C6
	.BYTE $88, $56, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $CE
	.BYTE $90, $5A, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $90, $59, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $90, $58, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $90, $57, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $98, $5E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $98, $5D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $98, $5C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $98, $5B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A0, $62, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $A0, $61, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $A0, $60, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A0, $5F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A8, $66, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $A8, $65, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $A8, $64, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A8, $63, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B0, $6A, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $B0, $69, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $B0, $68, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $B0, $67, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B8, $A3, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $A4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $A5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B8, $A6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $89, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
	.BYTE $89, $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $C7
	.BYTE $91, $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
	.BYTE $91, $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C7
@end:

oam_ending_03:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $80, $77, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $80, $78, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $88, $79, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $88, $7A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $7A, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $88, $79, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $90, $7B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $90, $7C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $7C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $90, $7B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $98, $7D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $98, $7F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $98, $7E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $98, $7D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A0, $83, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A0, $85, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $A0, $84, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A0, $83, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A8, $89, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $A8, $88, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $A8, $87, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A8, $86, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B0, $8D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $B8
	.BYTE $B0, $8C, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C0
	.BYTE $B0, $8B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $B0, $8A, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B8, $A7, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $A8, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $A9, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B8, $AA, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $88, $A0, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $A0, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $90, $A1, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $A2, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
@end:

oam_ending_04:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $80, $B5, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $80, $B6, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $80, $B7, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $88, $B8, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $88, $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $88, $BA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $88, $BB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $90, $BE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $90, $BF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $90, $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $90, $BD, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $98, $CB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $98, $CC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $98, $CC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $98, $CB, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A0, $CD, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A0, $CE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A0, $CE, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A0, $CD, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $A8, $CF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A8, $D9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A8, $D9, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $A8, $CF, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B0, $DA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B0, $DB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B0, $DB, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $B0, $DA, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $B8, $DC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $DD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $DD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $C8
	.BYTE $B8, $DC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $D0
	.BYTE $88, $AB, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
	.BYTE $88, $AC, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C7
	.BYTE $90, $AD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
	.BYTE $90, $AE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C7
@end:

oam_ending_05:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $A8, $DE, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A8, $DF, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A8, $E0, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B0, $E1, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B0, $E2, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B0, $E3, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $B8, $E4, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $E5, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $B8, $E6, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
@end:

oam_ending_06:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $34, $80, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3F
	.BYTE $34, $81, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $47
	.BYTE $34, $82, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $4F
	.BYTE $3C, $83, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $37
	.BYTE $3C, $84, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3F
	.BYTE $3C, $85, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $47
	.BYTE $3C, $86, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $4F
	.BYTE $44, $B9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $37
	.BYTE $44, $BA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3F
	.BYTE $44, $89, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $47
	.BYTE $44, $BB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $4F
	.BYTE $4C, $9B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $4C, $BC, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $4C, $BC, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $4C, $9B, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $54, $9D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $54, $9E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $54, $9E, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $54, $9D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $5C, $9F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $5C, $A9, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $5C, $A9, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $5C, $9F, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $64, $AA, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $64, $AB, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $64, $AB, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $64, $AA, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $6C, $AC, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $6C, $AD, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $6C, $AD, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $6C, $AC, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $3D, $BD, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $3D, $BD, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $45, $BE, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $45, $BF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $48
@end:

oam_ending_07:
	.BYTE (@end - @start) >> 2

@start:
	.BYTE $40, $C0, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $3B
	.BYTE $40, $C1, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $43
	.BYTE $40, $C2, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $4B
	.BYTE $48, $C3, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $48, $C4, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $48, $C5, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $48
	.BYTE $48, $C6, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $50
	.BYTE $50, $C7, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $50, $C8, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $50, $C9, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $48
	.BYTE $50, $CA, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $50
	.BYTE $58, $CB, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $58, $CC, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $58, $CD, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $48
	.BYTE $58, $CE, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $50
	.BYTE $41, $CF, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $48
	.BYTE $49, $D8, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $49, $D9, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $48
	.BYTE $49, $DA, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $50
@end:
