;airman checkpoint ycoord
	checkpointycoord 7
	checkpointycoord 11
	checkpointycoord 7

;wily2 checkpoint ycoord
	checkpointycoord 4
	checkpointycoord 9
	checkpointycoord 9

;airman checkpoint mapset
	.BYTE (mapset_airman_wily2_00 - mapset_airman_wily2_00) / $40
	.BYTE (mapset_airman_wily2_0a - mapset_airman_wily2_00) / $40
	.BYTE (mapset_airman_wily2_14 - mapset_airman_wily2_00) / $40

;wily2 checkpoint mapset
	.BYTE (mapset_airman_wily2_16 - mapset_airman_wily2_00) / $40
	.BYTE (mapset_airman_wily2_1f - mapset_airman_wily2_00) / $40
	.BYTE (mapset_airman_wily2_1f - mapset_airman_wily2_00) / $40

;airman checkpoint enemies index
	.BYTE $00
	.BYTE $0C
	.BYTE $17

;wily2 checkpoint enemies index
	.BYTE $17
	.BYTE $1C
	.BYTE $1C

;airman checkpoint items index
	.BYTE $00
	.BYTE $03
	.BYTE $07

;wily2 checkpoint items index
	.BYTE $0B
	.BYTE $1F
	.BYTE $1F

;airman checkpoint hileft mapset load
	.HIBYTES mapset_airman_wily2_00 - $20
	.HIBYTES mapset_airman_wily2_0a - $20
	.HIBYTES mapset_airman_wily2_14 - $20

;wily2 checkpoint hileft mapset load
	.HIBYTES mapset_airman_wily2_16 - $20
	.HIBYTES mapset_airman_wily2_1f - $20
	.HIBYTES mapset_airman_wily2_1f - $20

;airman checkpoint loleft mapset load
	.LOBYTES mapset_airman_wily2_00 - $20
	.LOBYTES mapset_airman_wily2_0a - $20
	.LOBYTES mapset_airman_wily2_14 - $20

;wily2 checkpoint loleft mapset load
	.LOBYTES mapset_airman_wily2_16 - $20
	.LOBYTES mapset_airman_wily2_1f - $20
	.LOBYTES mapset_airman_wily2_1f - $20

;airman checkpoint hiright mapset load
	.HIBYTES mapset_airman_wily2_01 + $20
	.HIBYTES mapset_airman_wily2_0b + $20
	.HIBYTES mapset_airman_wily2_15 + $20

;wily2 checkpoint hiright mapset load
	.HIBYTES mapset_airman_wily2_17 + $20
	.HIBYTES mapset_airman_wily2_20 + $20
	.HIBYTES mapset_airman_wily2_20 + $20

;airman checkpoint loright mapset load
	.LOBYTES mapset_airman_wily2_01 + $20
	.LOBYTES mapset_airman_wily2_0b + $20
	.LOBYTES mapset_airman_wily2_15 + $20

;wily2 checkpoint loright mapset load
	.LOBYTES mapset_airman_wily2_17 + $20
	.LOBYTES mapset_airman_wily2_20 + $20
	.LOBYTES mapset_airman_wily2_20 + $20

;airman checkpoint scrolling index
	.BYTE scrolling_airman_wily2_00 - scrolling_airman_wily2_00
	.BYTE scrolling_airman_wily2_01 - scrolling_airman_wily2_00
	.BYTE scrolling_airman_wily2_02 - scrolling_airman_wily2_00

;wily2 checkpoint scrolling index
	.BYTE scrolling_airman_wily2_03 - scrolling_airman_wily2_00
	.BYTE scrolling_airman_wily2_04 - scrolling_airman_wily2_00
	.BYTE scrolling_airman_wily2_05 - scrolling_airman_wily2_00

;airman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $0A
	.BYTE $14

;wily2 checkpoint start scrolling mapset
	.BYTE $16
	.BYTE $1F
	.BYTE $1F

;airman checkpoint end scrolling mapset
	.BYTE $09
	.BYTE $0A
	.BYTE $14

;wily2 checkpoint end scrolling mapset
	.BYTE $1B
	.BYTE $24
	.BYTE $24

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
