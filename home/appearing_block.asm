_appearing_block:
	LDX #$0F
	LDY #$00

@loop:
	LDA aobject_flag + $10, X
	BPL @skip
	AND #objects_appearing_block
	BEQ @skip
	STX z:zappearing_block_index, Y
	INY

@skip:
	DEX
	BPL @loop
	STY z:zno_of_appearing_block
	RTS

_appearing_block_collision:
	LDY z:zno_of_appearing_block

@loop:
	DEY
	BMI _tsa_collision
	LDX z:zappearing_block_index, Y
	LDA z:z08
	AND aobject_xcoord_speed + $10, X
	CMP aobject_ycoord_speed + $10, X
	BNE @loop
	LDA z:z0A
	AND aobject_xcoord_speed_fraction + $10, X
	CMP aobject_ycoord_speed_fraction + $10, X
	BNE @loop
	LDA aobject_temp + $10, X
	STA z:z00
	RTS
