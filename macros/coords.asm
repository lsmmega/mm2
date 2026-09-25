.MACRO checkpointycoord b
;ycoord = b << 4 | 4
	.BYTE b << 4 | 4
.ENDMACRO

.MACRO leftscreencoord b, c
	.DBYT $2000 + b + c << 5
.ENDMACRO

.MACRO hileftscreencoord b, c
	.HIBYTES $2000 + b + c << 5
.ENDMACRO

.MACRO loleftscreencoord b, c
	.LOBYTES $2000 + b + c << 5
.ENDMACRO

.MACRO rightscreencoord b, c
	.DBYT $2400 + b + c << 5
.ENDMACRO

.MACRO hirightscreencoord b, c
	.HIBYTES $2400 + b + c << 5
.ENDMACRO

.MACRO lorightscreencoord b, c
	.LOBYTES $2400 + b + c << 5
.ENDMACRO
