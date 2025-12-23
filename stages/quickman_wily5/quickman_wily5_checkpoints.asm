;quickman checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 11
	checkpointycoord 7

;wily5 checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 9
	checkpointycoord 9

;quickman checkpoint mapset
	.BYTE (mapset_quick_wily5_00 - mapset_quick_wily5_00) / $40
	.BYTE (mapset_quick_wily5_07 - mapset_quick_wily5_00) / $40
	.BYTE (mapset_quick_wily5_16 - mapset_quick_wily5_00) / $40

;wily5 checkpoint mapset
	.BYTE (mapset_quick_wily5_18 - mapset_quick_wily5_00) / $40
	.BYTE (mapset_quick_wily5_28 - mapset_quick_wily5_00) / $40
	.BYTE (mapset_quick_wily5_28 - mapset_quick_wily5_00) / $40

;quickman checkpoint enemies index
	.BYTE $00
	.BYTE $07
	.BYTE $16

;wily5 checkpoint enemies index
	.BYTE $16
	.BYTE $16
	.BYTE $16

;quickman checkpoint items index
	.BYTE $00
	.BYTE $04
	.BYTE $0A

;wily5 checkpoint items index
	.BYTE $0E
	.BYTE $0E
	.BYTE $0E

;quickman checkpoint hileft mapset load
	hileftmapsetload $00
	hileftmapsetload $07
	hileftmapsetload $16

;wily5 checkpoint hileft mapset load
	hileftmapsetload $18
	hileftmapsetload $28
	hileftmapsetload $28

;quickman checkpoint loleft mapset load
	loleftmapsetload $00
	loleftmapsetload $07
	loleftmapsetload $16

;wily5 checkpoint loleft mapset load
	loleftmapsetload $18
	loleftmapsetload $28
	loleftmapsetload $28

;quickman checkpoint hiright mapset load
	hirightmapsetload $00
	hirightmapsetload $07
	hirightmapsetload $16

;wily5 checkpoint hiright mapset load
	hirightmapsetload $18
	hirightmapsetload $28
	hirightmapsetload $28

;quickman checkpoint loright mapset load
	lorightmapsetload $00
	lorightmapsetload $07
	lorightmapsetload $16

;wily5 checkpoint loright mapset load
	lorightmapsetload $18
	lorightmapsetload $28
	lorightmapsetload $28

;quickman checkpoint scrolling index
	.BYTE $00
	.BYTE $07
	.BYTE $10

;wily5 checkpoint scrolling index
	.BYTE $12
	.BYTE $12
	.BYTE $12

;quickman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $07
	.BYTE $16

;wily5 checkpoint start scrolling mapset
	.BYTE $18
	.BYTE $28
	.BYTE $28

;quickman checkpoint end scrolling mapset
	.BYTE $00
	.BYTE $0B
	.BYTE $16

;wily5 checkpoint end scrolling mapset
	.BYTE $18
	.BYTE $28
	.BYTE $28

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
