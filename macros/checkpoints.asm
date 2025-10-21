.MACRO hileftmapsetload b
	.HIBYTES b * $40 + $8500 - $20
.ENDMACRO

.MACRO loleftmapsetload b
	.LOBYTES b * $40 + $8500 - $20
.ENDMACRO

.MACRO hirightmapsetload b
	.HIBYTES (b + 1) * $40 + $8500 + $20
.ENDMACRO

.MACRO lorightmapsetload b
	.LOBYTES (b + 1) * $40 + $8500 + $20
.ENDMACRO
