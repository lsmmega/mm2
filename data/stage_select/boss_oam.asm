;ycoord, tiles, attributes, xcoord
stage_select_boss_oam:
stage_select_bubbleman_oam:
	.BYTE $29, $0A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $31
	.BYTE $28, $0B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3D
	.BYTE $28, $0C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $45
stage_select_bubbleman_oam_end:

stage_select_airman_oam:
	.BYTE $26, $27, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $78
	.BYTE $2E, $25, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $76
	.BYTE $2E, $26, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $7E
	.BYTE $36, $23, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $70
	.BYTE $36, $24, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $83
stage_select_airman_oam_end:

stage_select_quickman_oam:
	.BYTE $17, $2E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $26, $28, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $2E, $29, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B0
	.BYTE $2E, $2A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $2E, $2B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $36, $2C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $36, $2D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
stage_select_quickman_oam_end:

stage_select_heatman_oam:
	.BYTE $6C, $06, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3B
	.BYTE $6C, $07, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $43
	.BYTE $74, $08, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3B
	.BYTE $74, $09, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $43
stage_select_heatman_oam_end:

stage_select_woodman_oam:
	.BYTE $5F, $0D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B0
	.BYTE $5F, $0E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $5F, $0F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $67, $10, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B0
	.BYTE $67, $11, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $67, $12, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $6F, $13, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B7
	.BYTE $6F, $14, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
	.BYTE $77, $15, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B7
	.BYTE $77, $16, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BF
stage_select_woodman_oam_end:

stage_select_metalman_oam:
	.BYTE $9F, $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $A7, $20, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $38
	.BYTE $AF, $21, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $3B
	.BYTE $AF, $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $43
stage_select_metalman_oam_end:

stage_select_flashman_oam:
	.BYTE $A7, $17, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $71
	.BYTE $A7, $18, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $79
	.BYTE $A7, $19, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $81
	.BYTE $AF, $1A, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $71
	.BYTE $AF, $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $79
	.BYTE $AF, $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $81
	.BYTE $B7, $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $79
	.BYTE $B7, $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $81
stage_select_flashman_oam_end:

stage_select_crashman_oam:
	.BYTE $9D, $04, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $A5, $05, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $AD, $00, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B6
	.BYTE $AD, $01, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BE
	.BYTE $B5, $02, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $B6
	.BYTE $B5, $03, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $BE
stage_select_crashman_oam_end:

stage_select_boss_oam_index:
	.BYTE stage_select_heatman_oam - stage_select_boss_oam
	.BYTE stage_select_airman_oam - stage_select_boss_oam
	.BYTE stage_select_woodman_oam - stage_select_boss_oam
	.BYTE stage_select_bubbleman_oam - stage_select_boss_oam
	.BYTE stage_select_quickman_oam - stage_select_boss_oam
	.BYTE stage_select_flashman_oam - stage_select_boss_oam
	.BYTE stage_select_metalman_oam - stage_select_boss_oam
	.BYTE stage_select_crashman_oam - stage_select_boss_oam

stage_select_boss_oam_length:
	.BYTE stage_select_heatman_oam_end - stage_select_heatman_oam
	.BYTE stage_select_airman_oam_end - stage_select_airman_oam
	.BYTE stage_select_woodman_oam_end - stage_select_woodman_oam
	.BYTE stage_select_bubbleman_oam_end - stage_select_bubbleman_oam
	.BYTE stage_select_quickman_oam_end - stage_select_quickman_oam
	.BYTE stage_select_flashman_oam_end - stage_select_flashman_oam
	.BYTE stage_select_metalman_oam_end - stage_select_metalman_oam
	.BYTE stage_select_crashman_oam_end - stage_select_crashman_oam
