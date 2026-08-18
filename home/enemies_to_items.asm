_enemies_to_items:
	PHA
	JSR _check_object
	BCS _enemies_to_items_exist
	PLA

_generate_teleport:
	JSR _generate_objects_common
	TXA
	TAY
	LDX z:zsprites_pointer
	LDA aobject_flag, X
	AND #objects_right
	ORA aobject_flag + $10, Y
	STA aobject_flag + $10, Y
	LDA aobject_xcoord_fraction, X
	STA aobject_xcoord_fraction + $10, Y
	LDA aobject_xcoord, X
	STA aobject_xcoord + $10, Y
	LDA aobject_screen, X
	STA aobject_screen + $10, Y
	LDA aobject_ycoord_fraction, X
	STA aobject_ycoord_fraction + $10, Y
	LDA aobject_ycoord, X
	STA aobject_ycoord + $10, Y
	CLC
	RTS

_enemies_to_items_exist:
	PLA
	LDX z:zsprites_pointer
	SEC
	RTS
