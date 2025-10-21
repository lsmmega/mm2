.MACRO checkpointycoord b
;ycoord = b << 4 | 4
	.BYTE b << 4 | 4
.ENDMACRO
