_object_palette:
	LDY stage_object_index, X
	LDA stage_object_palette, Y
	STA acurrent_background_palette + $19
	LDA stage_object_palette + 1, Y
	STA acurrent_background_palette + $1A
	LDA stage_object_palette + 2, Y
	STA acurrent_background_palette + $1B
	LDA stage_object_palette + 3, Y
	STA acurrent_background_palette + $1D
	LDA stage_object_palette + 4, Y
	STA acurrent_background_palette + $1E
	LDA stage_object_palette + 5, Y
	STA acurrent_background_palette + $1F
	RTS
