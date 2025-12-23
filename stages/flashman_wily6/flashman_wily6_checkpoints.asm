;flashman checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 8
	checkpointycoord 7

;wily6 checkpoint ycoord
	checkpointycoord 8
	checkpointycoord 8
	checkpointycoord 8

;flashman checkpoint mapset
	.BYTE (mapset_flash_wily6_00 - mapset_flash_wily6_00) / $40
	.BYTE (mapset_flash_wily6_08 - mapset_flash_wily6_00) / $40
	.BYTE (mapset_flash_wily6_12 - mapset_flash_wily6_00) / $40

;wily6 checkpoint mapset
	.BYTE (mapset_flash_wily6_16 - mapset_flash_wily6_00) / $40
	.BYTE (mapset_flash_wily6_16 - mapset_flash_wily6_00) / $40
	.BYTE (mapset_flash_wily6_16 - mapset_flash_wily6_00) / $40

;flashman checkpoint enemies index
	.BYTE $00
	.BYTE $07
	.BYTE $0F

;wily6 checkpoint enemies index
	.BYTE $0F
	.BYTE $0F
	.BYTE $0F

;flashman checkpoint items index
	.BYTE $00
	.BYTE $06
	.BYTE $0E

;wily6 checkpoint items index
	.BYTE $12
	.BYTE $12
	.BYTE $12

;flashman checkpoint hileft mapset load
	hileftmapsetload $00
	hileftmapsetload $08
	hileftmapsetload $12

;wily6 checkpoint hileft mapset load
	hileftmapsetload $16
	hileftmapsetload $16
	hileftmapsetload $16

;flashman checkpoint loleft mapset load
	loleftmapsetload $00
	loleftmapsetload $08
	loleftmapsetload $12

;wily6 checkpoint loleft mapset load
	loleftmapsetload $16
	loleftmapsetload $16
	loleftmapsetload $16

;flashman checkpoint hiright mapset load
	hirightmapsetload $00
	hirightmapsetload $08
	hirightmapsetload $12

;wily6 checkpoint hiright mapset load
	hirightmapsetload $16
	hirightmapsetload $16
	hirightmapsetload $16

;flashman checkpoint loright mapset load
	lorightmapsetload $00
	lorightmapsetload $08
	lorightmapsetload $12

;wily6 checkpoint loright mapset load
	lorightmapsetload $16
	lorightmapsetload $16
	lorightmapsetload $16

;flashman checkpoint scrolling index
	.BYTE $00
	.BYTE $02
	.BYTE $08

;wily6 checkpoint scrolling index
	.BYTE $0A
	.BYTE $0A
	.BYTE $0A

;flashman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $08
	.BYTE $12

;wily6 checkpoint start scrolling mapset
	.BYTE $16
	.BYTE $16
	.BYTE $16

;flashman checkpoint end scrolling mapset
	.BYTE $06
	.BYTE $08
	.BYTE $12

;wily6 checkpoint end scrolling mapset
	.BYTE $16
	.BYTE $16
	.BYTE $16

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF
