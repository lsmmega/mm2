;bubbleman checkpoint ycoord
	checkpointycoord 6
	checkpointycoord 11
	checkpointycoord 7

;wily4 checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 11

;bubbleman checkpoint mapset
	.BYTE (mapset_bubble_wily4_00 - mapset_bubble_wily4_00) / $40
	.BYTE (mapset_bubble_wily4_08 - mapset_bubble_wily4_00) / $40
	.BYTE (mapset_bubble_wily4_14 - mapset_bubble_wily4_00) / $40

;wily4 checkpoint mapset
	.BYTE (mapset_bubble_wily4_16 - mapset_bubble_wily4_00) / $40
	.BYTE (mapset_bubble_wily4_1c - mapset_bubble_wily4_00) / $40
	.BYTE (mapset_bubble_wily4_1c - mapset_bubble_wily4_00) / $40

;bubbleman checkpoint enemies index
	.BYTE $00
	.BYTE $0E
	.BYTE $1E

;wily4 checkpoint enemies index
	.BYTE $1E
	.BYTE $22
	.BYTE $22

;bubbleman checkpoint items index
	.BYTE $00
	.BYTE $00
	.BYTE $0C

;wily4 checkpoint items index
	.BYTE $10
	.BYTE $14
	.BYTE $14

;bubbleman checkpoint hileft mapset load
	.HIBYTES mapset_bubble_wily4_00 - $20
	.HIBYTES mapset_bubble_wily4_08 - $20
	.HIBYTES mapset_bubble_wily4_14 - $20

;wily4 checkpoint hileft mapset load
	.HIBYTES mapset_bubble_wily4_16 - $20
	.HIBYTES mapset_bubble_wily4_1c - $20
	.HIBYTES mapset_bubble_wily4_1c - $20

;bubbleman checkpoint loleft mapset load
	.LOBYTES mapset_bubble_wily4_00 - $20
	.LOBYTES mapset_bubble_wily4_08 - $20
	.LOBYTES mapset_bubble_wily4_14 - $20

;wily4 checkpoint loleft mapset load
	.LOBYTES mapset_bubble_wily4_16 - $20
	.LOBYTES mapset_bubble_wily4_1c - $20
	.LOBYTES mapset_bubble_wily4_1c - $20

;bubbleman checkpoint hiright mapset load
	.HIBYTES mapset_bubble_wily4_01 + $20
	.HIBYTES mapset_bubble_wily4_09 + $20
	.HIBYTES mapset_bubble_wily4_15 + $20

;wily4 checkpoint hiright mapset load
	.HIBYTES mapset_bubble_wily4_17 + $20
	.HIBYTES mapset_bubble_wily4_1d + $20
	.HIBYTES mapset_bubble_wily4_1d + $20

;bubbleman checkpoint loright mapset load
	.LOBYTES mapset_bubble_wily4_01 + $20
	.LOBYTES mapset_bubble_wily4_09 + $20
	.LOBYTES mapset_bubble_wily4_15 + $20

;wily4 checkpoint loright mapset load
	.LOBYTES mapset_bubble_wily4_17 + $20
	.LOBYTES mapset_bubble_wily4_1d + $20
	.LOBYTES mapset_bubble_wily4_1d + $20

;bubbleman checkpoint scrolling index
	.BYTE $00
	.BYTE $04
	.BYTE $06

;wily4 checkpoint scrolling index
	.BYTE $08
	.BYTE $0E
	.BYTE $0E

;bubbleman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $08
	.BYTE $14

;wily4 checkpoint start scrolling mapset
	.BYTE $16
	.BYTE $1C
	.BYTE $1C

;bubbleman checkpoint end scrolling mapset
	.BYTE $04
	.BYTE $0E
	.BYTE $14

;wily4 checkpoint end scrolling mapset
	.BYTE $16
	.BYTE $1D
	.BYTE $1D

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
