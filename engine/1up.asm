_increase_1up:
	LDA z:z1up
	CMP #99
	BCS @1up_l99
	INC z:z1up
	track_queue track_1up

@1up_l99:
	RTS
