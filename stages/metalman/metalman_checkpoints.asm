;metalman checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 10
	checkpointycoord 7

;unused checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 10
	checkpointycoord 10

;metalman checkpoint mapset
	.BYTE (mapset_metal_00 - mapset_metal_00) / $40
	.BYTE (mapset_metal_0b - mapset_metal_00) / $40
	.BYTE (mapset_metal_14 - mapset_metal_00) / $40

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
	.HIBYTES mapset_metal_00 - $20
	.HIBYTES mapset_metal_0b - $20
	.HIBYTES mapset_metal_14 - $20

;unused checkpoint hileft mapset load
	.HIBYTES mapset_metal_00 - $20
	.HIBYTES mapset_metal_00 - $20
	.HIBYTES mapset_metal_00 - $20

;metalman checkpoint loleft mapset load
	.LOBYTES mapset_metal_00 - $20
	.LOBYTES mapset_metal_0b - $20
	.LOBYTES mapset_metal_14 - $20

;unused checkpoint loleft mapset load
	.LOBYTES mapset_metal_00 - $20
	.LOBYTES mapset_metal_00 - $20
	.LOBYTES mapset_metal_00 - $20

;metalman checkpoint hiright mapset load
	.HIBYTES mapset_metal_01 + $20
	.HIBYTES mapset_metal_0c + $20
	.HIBYTES mapset_metal_15 + $20

;unused checkpoint hiright mapset load
	.HIBYTES mapset_metal_01 + $20
	.HIBYTES mapset_metal_01 + $20
	.HIBYTES mapset_metal_01 + $20

;metalman checkpoint loright mapset load
	.LOBYTES mapset_metal_01 + $20
	.LOBYTES mapset_metal_0c + $20
	.LOBYTES mapset_metal_15 + $20

;unused checkpoint loright mapset load
	.LOBYTES mapset_metal_01 + $20
	.LOBYTES mapset_metal_01 + $20
	.LOBYTES mapset_metal_01 + $20

;metalman checkpoint scrolling index
	.BYTE $00
	.BYTE $02
	.BYTE $03

;unused checkpoint scrolling index
	.BYTE $00
	.BYTE $00
	.BYTE $00

;metalman checkpoint start scrolling mapset
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
