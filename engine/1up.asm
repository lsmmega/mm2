_get_1up:
	LDA z:z1up
	CMP #99
	BCS @max
	INC z:z1up
	track_queue track_1up

@max:
	RTS
