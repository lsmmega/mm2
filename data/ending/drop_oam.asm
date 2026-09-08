ending_object_ycoord:
	.BYTE $00, $08, $10, $20, $28, $30, $40, $48
	.BYTE $50, $58, $68, $78, $80, $88, $90, $A8
	.BYTE $B8, $C0, $D0, $D8, $E0, $E8

ending_object_xcoord:
	.BYTE $D8, $70, $18, $B0, $88, $40, $A0, $F8
	.BYTE $20, $58, $C8, $08, $88, $38, $B0, $D8
	.BYTE $70, $28, $B8, $08, $98, $48

ending_oam_tiles:
	.BYTE $0C, $0D, $0E, $0D, $1B, $1C, $1B, $1C
	.BYTE $2C, $2D, $2E, $2D, $3B, $3B, $3B, $3B

ending_fade_oam_tiles:
	.BYTE $1B, $1A, $19, $0F, $2C, $1F, $1E, $1D
	.BYTE $3C, $3A, $39, $2F, $3D, $3D, $3D, $3C

ending_drop_ycoord_speed_fraction:
	.BYTE $80, $80, $E5, $00

ending_drop_ycoord_speed:
	.BYTE $00, $00, $00, $08
