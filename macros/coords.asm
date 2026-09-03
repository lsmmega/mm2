.MACRO checkpointycoord b
;ycoord = b << 4 | 4
	.BYTE b << 4 | 4
.ENDMACRO

.MACRO leftscreencoord b, c
	.DBYT $2000 + b + c << 5
.ENDMACRO

.MACRO rightscreencoord b, c
	.DBYT $2400 + b + c << 5
.ENDMACRO
