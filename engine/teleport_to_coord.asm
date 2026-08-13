_teleport_to_coord:
	LDA z:zrefighting_flag
	CMP #$FF
	BNE @not_all_clear
	LDX #$00
	STX z:zsprites_pointer
	LDA #$7E
	LDX #$0E
	JSR _generate_teleport
	LDA #$3B
	STA aobject_ycoord + $1E
	LDA #$80
	STA aobject_xcoord + $1E

@not_all_clear:
	LDA #$00
	STA z:zsprites_pointer
	STA z:z02
	LDA z:zrefighting_flag
	STA z:z03

@loop:
	LSR z:z03
	BCS @skip
	LDA #$7C
	LDX z:z02
	JSR _generate_teleport
	LDA teleport_ycoord_table, Y
	STA aobject_ycoord + $10, Y
	LDA teleport_xcoord_table, Y
	STA aobject_xcoord + $10, Y

@skip:
	INC z:z02
	LDA z:z02
	CMP #$08
	BNE @loop
	RTS
