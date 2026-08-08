_create_explosion:
	LDA aobject_screen
	STA z:z09
	LDA aobject_xcoord
	STA z:z08
	LDA aobject_ycoord
	STA z:z0A
	LDA #$25
	STA z:z0B
	LDX #$0D

_create_explosion_common:
	LDY #$0B

@loop:
	LDA #objects_exist
	ORA @object_flag_table, Y
	STA aobject_flag, X
	LDA z:z0B
	STA aobject_pointer, X
	LDA z:z09
	STA aobject_screen, X
	LDA z:z08
	STA aobject_xcoord, X
	LDA z:z0A
	STA aobject_ycoord, X
	LDA @xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @xcoord_speed_table, Y
	STA aobject_xcoord_speed, X
	LDA @ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA #$00
	STA aobject_frameset_lower_timer, X
	STA aobject_frameset_upper_timer, X
	DEX
	DEY
	BPL @loop
	RTS

@xcoord_speed_fraction_table:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $60
	.BYTE $60
	.BYTE $60
	.BYTE $60
	.BYTE $00
	.BYTE $C0
	.BYTE $00
	.BYTE $E0

@xcoord_speed_table:
	.BYTE +0
	.BYTE +2
	.BYTE +0
	.BYTE +2
	.BYTE +1
	.BYTE +1
	.BYTE +1
	.BYTE +1
	.BYTE +0
	.BYTE +0
	.BYTE +0
	.BYTE +0

@ycoord_speed_fraction_table:
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $00
	.BYTE $60
	.BYTE $A0
	.BYTE $A0
	.BYTE $60
	.BYTE $C0
	.BYTE $00
	.BYTE $40
	.BYTE $00

@ycoord_speed_table:
	.BYTE +2
	.BYTE +0
	.BYTE -2
	.BYTE +0
	.BYTE +1
	.BYTE -2
	.BYTE -2
	.BYTE +1
	.BYTE +0
	.BYTE +0
	.BYTE -1
	.BYTE +0

@object_flag_table:
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_left
	.BYTE objects_right
	.BYTE objects_left
	.BYTE objects_left
