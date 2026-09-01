_load_rockman_title_oam:
	LDX #$14

@loop:
	LDA rockman_title_oam_coord, X
	STA aoam_y + $EC, X
	DEX
	BPL @loop
	RTS
