_increase_e_tank:
	LDA z:ze_tank
	CMP #4
	BCS @e_tank_l4
	INC z:ze_tank

@e_tank_l4:
	track_queue track_1up
	RTS
