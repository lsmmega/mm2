_get_e_tank:
	LDA z:ze_tank
	CMP #4
	BCS @max
	INC z:ze_tank

@max:
	track_queue track_1up
	RTS
