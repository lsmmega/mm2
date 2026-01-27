;frameset index
	.BYTE boss_show_heatman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_airman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_woodman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_bubbleman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_quickman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_flashman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_metalman_frameset - boss_show_heatman_frameset
	.BYTE boss_show_crashman_frameset - boss_show_heatman_frameset

;frameset length
	.BYTE boss_show_airman_frameset - boss_show_heatman_frameset - 1
	.BYTE boss_show_woodman_frameset - boss_show_airman_frameset - 1
	.BYTE boss_show_bubbleman_frameset - boss_show_woodman_frameset - 1
	.BYTE boss_show_quickman_frameset - boss_show_bubbleman_frameset - 1
	.BYTE boss_show_flashman_frameset - boss_show_quickman_frameset - 1
	.BYTE boss_show_metalman_frameset - boss_show_flashman_frameset - 1
	.BYTE boss_show_crashman_frameset - boss_show_metalman_frameset - 1
	.BYTE boss_show_frameset_end - boss_show_crashman_frameset - 1

;frame(s)
	.BYTE 2 ;heatman
	.BYTE 3 ;airman
	.BYTE 8 ;woodman
	.BYTE 8 ;bubbleman
	.BYTE 5 ;quickman
	.BYTE 6 ;flashman
	.BYTE 8 ;metalman
	.BYTE 8 ;crashman

;frameset
boss_show_heatman_frameset:
	.BYTE $03, $02, $02, $01, $01, $00, $27, $28
	.BYTE $27, $28, $27, $28, $27, $28, $27, $28
	.BYTE $27, $28, $27, $28, $27, $28, $27, $00

boss_show_airman_frameset:
	.BYTE $1E, $1B, $1B, $1C, $1D, $1C, $1D, $1C
	.BYTE $1D, $1B, $1C, $1D, $1C, $1D, $1C, $1D
	.BYTE $1B

boss_show_woodman_frameset:
	.BYTE $26, $23, $24, $25, $24, $25, $24, $25
	.BYTE $23

boss_show_bubbleman_frameset:
	.BYTE $04, $04, $04, $05, $06

boss_show_quickman_frameset:
	.BYTE $0F, $07, $08, $09, $0A, $0B, $0C, $0D
	.BYTE $0E, $09

boss_show_flashman_frameset:
	.BYTE $16, $10, $11, $12, $13, $14, $15, $12

boss_show_metalman_frameset:
	.BYTE $1A, $17, $17, $17, $18, $19

boss_show_crashman_frameset:
	.BYTE $22, $1F, $1F, $20, $21
boss_show_frameset_end:
