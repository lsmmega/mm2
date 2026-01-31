_track_queue:
	LDY z:ztrack_queue_pointer
	CPY #$10
	BCS @track_queue_le10
	STA atrack_queue, Y
	INC z:ztrack_queue_pointer

@track_queue_le10:
	RTS