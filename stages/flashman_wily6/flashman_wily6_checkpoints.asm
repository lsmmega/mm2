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
	.HIBYTES mapset_flash_wily6_00 - $20
	.HIBYTES mapset_flash_wily6_08 - $20
	.HIBYTES mapset_flash_wily6_12 - $20

;wily6 checkpoint hileft mapset load
	.HIBYTES mapset_flash_wily6_16 - $20
	.HIBYTES mapset_flash_wily6_16 - $20
	.HIBYTES mapset_flash_wily6_16 - $20

;flashman checkpoint loleft mapset load
	.LOBYTES mapset_flash_wily6_00 - $20
	.LOBYTES mapset_flash_wily6_08 - $20
	.LOBYTES mapset_flash_wily6_12 - $20

;wily6 checkpoint loleft mapset load
	.LOBYTES mapset_flash_wily6_16 - $20
	.LOBYTES mapset_flash_wily6_16 - $20
	.LOBYTES mapset_flash_wily6_16 - $20

;flashman checkpoint hiright mapset load
	.HIBYTES mapset_flash_wily6_01 + $20
	.HIBYTES mapset_flash_wily6_09 + $20
	.HIBYTES mapset_flash_wily6_13 + $20

;wily6 checkpoint hiright mapset load
	.HIBYTES mapset_flash_wily6_17 + $20
	.HIBYTES mapset_flash_wily6_17 + $20
	.HIBYTES mapset_flash_wily6_17 + $20

;flashman checkpoint loright mapset load
	.LOBYTES mapset_flash_wily6_01 + $20
	.LOBYTES mapset_flash_wily6_09 + $20
	.LOBYTES mapset_flash_wily6_13 + $20

;wily6 checkpoint loright mapset load
	.LOBYTES mapset_flash_wily6_17 + $20
	.LOBYTES mapset_flash_wily6_17 + $20
	.LOBYTES mapset_flash_wily6_17 + $20

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
