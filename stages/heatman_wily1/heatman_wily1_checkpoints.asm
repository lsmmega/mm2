;heatman checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 11
	checkpointycoord 9

;wily1 checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 11

;heatman checkpoint mapset
	.BYTE (mapset_heat_wily1_00 - mapset_heat_wily1_00) / $40
	.BYTE (mapset_heat_wily1_09 - mapset_heat_wily1_00) / $40
	.BYTE (mapset_heat_wily1_16 - mapset_heat_wily1_00) / $40

;wily1 checkpoint mapset
	.BYTE (mapset_heat_wily1_18 - mapset_heat_wily1_00) / $40
	.BYTE (mapset_heat_wily1_21 - mapset_heat_wily1_00) / $40
	.BYTE (mapset_heat_wily1_21 - mapset_heat_wily1_00) / $40

;heatman checkpoint enemies index
	.BYTE $00
	.BYTE $14
	.BYTE $3E

;wily1 checkpoint enemies index
	.BYTE $3E
	.BYTE $49
	.BYTE $49

;heatman checkpoint items index
	.BYTE $00
	.BYTE $00
	.BYTE $06

;wily1 checkpoint items index
	.BYTE $0A
	.BYTE $0C
	.BYTE $0C

;heatman checkpoint hileft mapset load
	hileftmapsetload $00
	hileftmapsetload $09
	hileftmapsetload $16

;wily1 checkpoint hileft mapset load
	hileftmapsetload $18
	hileftmapsetload $21
	hileftmapsetload $21

;heatman checkpoint loleft mapset load
	loleftmapsetload $00
	loleftmapsetload $09
	loleftmapsetload $16

;wily1 checkpoint loleft mapset load
	loleftmapsetload $18
	loleftmapsetload $21
	loleftmapsetload $21

;heatman checkpoint hiright mapset load
	hirightmapsetload $00
	hirightmapsetload $09
	hirightmapsetload $16

;wily1 checkpoint hiright mapset load
	hirightmapsetload $18
	hirightmapsetload $21
	hirightmapsetload $21

;heatman checkpoint loright mapset load
	lorightmapsetload $00
	lorightmapsetload $09
	lorightmapsetload $15

;wily1 checkpoint loright mapset load
	lorightmapsetload $18
	lorightmapsetload $21
	lorightmapsetload $21

;heatman checkpoint scrolling index
	.BYTE $00
	.BYTE $02
	.BYTE $05

;wily1 checkpoint scrolling index
	.BYTE $07
	.BYTE $08
	.BYTE $08

;heatman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $09
	.BYTE $16

;wily1 checkpoint start scrolling mapset
	.BYTE $18
	.BYTE $21
	.BYTE $21

;heatman checkpoint end scrolling mapset
	.BYTE $07
	.BYTE $13
	.BYTE $16

;wily1 checkpoint end scrolling mapset
	.BYTE $20
	.BYTE $21
	.BYTE $21

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
