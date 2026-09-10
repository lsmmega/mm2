_get_weapon_8_frames:
@8_frames:
	JSR _nmi_wait_0d
	LDA z:znmi_frame
	AND #%00000111
	BNE @8_frames
	RTS
