_scroll_right_background_palette:
	LDX z:zcurrent_stage
	CPX #$03
	BNE @not_bubble
	LDY z:zscroll_index
	CPY #$04
	BEQ @skip

@not_bubble:
	LDY scroll_right_background_palette_offset, X
	BEQ @skip
	LDA scroll_right_background_palette_set_length, X
	STA z:zFD
	LDA scroll_right_background_palette_table_offset, X
	TAX

@loop:
	LDA scroll_right_background_palette_set, X
	STA acurrent_background_palette, Y
	STA abackground_palette_set, Y
	STA abackground_palette_set + $10, Y
	STA abackground_palette_set + $20, Y
	STA abackground_palette_set + $30, Y
	DEX
	DEY
	DEC z:zFD
	BNE @loop

@skip:
	RTS

scroll_right_background_palette_offset:
	.BYTE $00 ;heatman
	.BYTE $0B ;airman
	.BYTE $00 ;woodman
	.BYTE $0B ;bubbleman
	.BYTE $00 ;quickman
	.BYTE $00 ;flashman
	.BYTE $00 ;metalman
	.BYTE $0F ;crashman
	.BYTE $00 ;wily 1
	.BYTE $00 ;wily 2
	.BYTE $03 ;wily 3
	.BYTE $00 ;wily 4
	.BYTE $00 ;wily 5
	.BYTE $0B ;wily 6

scroll_right_background_palette_table_offset:
	.BYTE 0
	.BYTE scroll_right_airman_palette_set_end - scroll_right_background_palette_set - 1
	.BYTE 0
	.BYTE scroll_right_bubbleman_palette_set_end - scroll_right_background_palette_set - 1
	.BYTE 0
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_crashman_palette_set_end - scroll_right_background_palette_set - 1
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_wily_3_palette_set_end - scroll_right_background_palette_set - 1
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_wily_6_palette_set_end - scroll_right_background_palette_set - 1

scroll_right_background_palette_set_length:
	.BYTE 0
	.BYTE scroll_right_airman_palette_set_end - scroll_right_airman_palette_set
	.BYTE 0
	.BYTE scroll_right_bubbleman_palette_set_end - scroll_right_bubbleman_palette_set
	.BYTE 0
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_crashman_palette_set_end - scroll_right_crashman_palette_set
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_wily_3_palette_set_end - scroll_right_wily_3_palette_set
	.BYTE 0
	.BYTE 0
	.BYTE scroll_right_wily_6_palette_set_end - scroll_right_wily_6_palette_set

scroll_right_background_palette_set:
scroll_right_airman_palette_set:
	.BYTE white_spring, light_spring, dark_spring
scroll_right_airman_palette_set_end:

scroll_right_bubbleman_palette_set:
	.BYTE white_azure, dark_azure, black
scroll_right_bubbleman_palette_set_end:

scroll_right_crashman_palette_set:
	.BYTE        pale_chartreuse, light_yellow, dark_azure
	.BYTE black, pale_chartreuse, light_yellow, black
scroll_right_crashman_palette_set_end:

scroll_right_wily_3_palette_set:
	.BYTE white_orange, pale_orange, pale_gray
scroll_right_wily_3_palette_set_end:

scroll_right_wily_6_palette_set:
	.BYTE black, black, black
scroll_right_wily_6_palette_set_end:
