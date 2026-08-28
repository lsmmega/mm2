stage_select_check_border_boss_clear_flag_index:
;1 2 3
;8 0 4
;7 6 5
	.BYTE $08 ;0
	.BYTE $03 ;1
	.BYTE $01 ;2
	.BYTE $04 ;3
	.BYTE $02 ;4
	.BYTE $07 ;5
	.BYTE $05 ;6
	.BYTE $06 ;7
	.BYTE $00 ;8

;unused
	.BYTE $00                  ;0
	.BYTE boss_bubbleman_clear ;1
	.BYTE boss_airman_clear    ;2
	.BYTE boss_quickman_clear  ;3
	.BYTE boss_woodman_clear   ;4
	.BYTE boss_flashman_clear  ;5
	.BYTE boss_crashman_clear  ;6
	.BYTE boss_metalman_clear  ;7
	.BYTE boss_heatman_clear   ;8
