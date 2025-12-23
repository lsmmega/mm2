;metalman checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 10
	checkpointycoord 7

;unused checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 10
	checkpointycoord 10

;metalman checkpoint mapset
	.BYTE (mapset_metalman_00 - mapset_metalman_00) / $40
	.BYTE (mapset_metalman_0b - mapset_metalman_00) / $40
	.BYTE (mapset_metalman_14 - mapset_metalman_00) / $40

;unused checkpoint mapset
	.BYTE $FF
	.BYTE $00
	.BYTE $00

;metalman checkpoint enemies index
	.BYTE $00
	.BYTE $09
	.BYTE $16

;unused checkpoint enemies index
	.BYTE $16
	.BYTE $16
	.BYTE $16

;metalman checkpoint items index
	.BYTE $00
	.BYTE $02
	.BYTE $05

;unused checkpoint items index
	.BYTE $09
	.BYTE $09
	.BYTE $09

;metalman checkpoint hileft mapset load
	.HIBYTES mapset_metalman_00 - $20
	.HIBYTES mapset_metalman_0b - $20
	.HIBYTES mapset_metalman_14 - $20

;unused checkpoint hileft mapset load
	.HIBYTES mapset_metalman_00 - $20
	.HIBYTES mapset_metalman_00 - $20
	.HIBYTES mapset_metalman_00 - $20

;metalman checkpoint loleft mapset load
	.LOBYTES mapset_metalman_00 - $20
	.LOBYTES mapset_metalman_0b - $20
	.LOBYTES mapset_metalman_14 - $20

;unused checkpoint loleft mapset load
	.LOBYTES mapset_metalman_00 - $20
	.LOBYTES mapset_metalman_00 - $20
	.LOBYTES mapset_metalman_00 - $20

;metalman checkpoint hiright mapset load
	.HIBYTES mapset_metalman_01 + $20
	.HIBYTES mapset_metalman_0c + $20
	.HIBYTES mapset_metalman_15 + $20

;unused checkpoint hiright mapset load
	.HIBYTES mapset_metalman_01 + $20
	.HIBYTES mapset_metalman_01 + $20
	.HIBYTES mapset_metalman_01 + $20

;metalman checkpoint loright mapset load
	.LOBYTES mapset_metalman_01 + $20
	.LOBYTES mapset_metalman_0c + $20
	.LOBYTES mapset_metalman_15 + $20

;unused checkpoint loright mapset load
	.LOBYTES mapset_metalman_01 + $20
	.LOBYTES mapset_metalman_01 + $20
	.LOBYTES mapset_metalman_01 + $20

;metalman checkpoint scrolling index
	.BYTE scrolling_metalman_00 - scrolling_metalman_00
	.BYTE scrolling_metalman_01 - scrolling_metalman_00
	.BYTE scrolling_metalman_02 - scrolling_metalman_00

;unused checkpoint scrolling index
	.BYTE scrolling_metalman_03 - scrolling_metalman_00
	.BYTE scrolling_metalman_04 - scrolling_metalman_00
	.BYTE scrolling_metalman_05 - scrolling_metalman_00

;metalman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $0B
	.BYTE $14

;unused checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $00
	.BYTE $00

;metalman checkpoint end scrolling mapset
	.BYTE $09
	.BYTE $13
	.BYTE $14

;unused checkpoint end scrolling mapset
	.BYTE $00
	.BYTE $00
	.BYTE $00

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
