_load_stage_scrolling:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA _stage_scrolling, Y
	TAY
	bankswitch $0E
	RTS
