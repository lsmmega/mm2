.INCLUDE "includes.asm"

.SEGMENT "INES"
	.BYTE "NES", $1A
	prg_size  = 256
	chr_size  = 0
	mapper    = 1
	mirroring = horizontal
	battery   = false
	trainer   = false
	system    = normal
	.BYTE prg_size >> 4
	.BYTE chr_size >> 3
	.BYTE mapper &%00001111 << 4 | mirroring | battery << 1 | trainer << 2
	.BYTE mapper &%11110000 | system