;crashman checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 7

;unused checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 11

;crashman checkpoint mapset
	.BYTE (mapset_crash_00 - mapset_crash_00) / $40
	.BYTE (mapset_crash_07 - mapset_crash_00) / $40
	.BYTE (mapset_crash_12 - mapset_crash_00) / $40

;unused checkpoint mapset
	.BYTE $FF
	.BYTE $00
	.BYTE $00

;crashman checkpoint enemies index
	.BYTE $00
	.BYTE $15
	.BYTE $22

;unused checkpoint enemies index
	.BYTE $22
	.BYTE $22
	.BYTE $22

;crashman checkpoint items index
	.BYTE $00
	.BYTE $00
	.BYTE $05

;unused checkpoint items index
	.BYTE $09
	.BYTE $09
	.BYTE $09

;crashman checkpoint hileft mapset load
	hileftmapsetload $00
	hileftmapsetload $07
	hileftmapsetload $12

;unused checkpoint hileft mapset load
	hileftmapsetload $00
	hileftmapsetload $00
	hileftmapsetload $00

;crashman checkpoint loleft mapset load
	loleftmapsetload $00
	loleftmapsetload $07
	loleftmapsetload $12

;unused checkpoint loleft mapset load
	loleftmapsetload $00
	loleftmapsetload $00
	loleftmapsetload $00

;crashman checkpoint hiright mapset load
	hirightmapsetload $00
	hirightmapsetload $07
	hirightmapsetload $12

;unused checkpoint hiright mapset load
	hirightmapsetload $00
	hirightmapsetload $00
	hirightmapsetload $00

;crashman checkpoint loright mapset load
	lorightmapsetload $00
	lorightmapsetload $07
	lorightmapsetload $12

;unused checkpoint loright mapset load
	lorightmapsetload $00
	lorightmapsetload $00
	lorightmapsetload $00

;crashman checkpoint scrolling index
	.BYTE $00
	.BYTE $06
	.BYTE $0F

;unused checkpoint scrolling index
	.BYTE $00
	.BYTE $00
	.BYTE $00

;crashman checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $07
	.BYTE $12

;unused checkpoint start scrolling mapset
	.BYTE $00
	.BYTE $00
	.BYTE $00

;crashman checkpoint end scrolling mapset
	.BYTE $00
	.BYTE $08
	.BYTE $12

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
