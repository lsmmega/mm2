_handle_scrolling_object:
	LDA z:zscroll_direction
	AND #%00000001
	BEQ @horizontal
	JMP _handle_vertical_scrolling_object

@horizontal:
	JSR _scroll_right_background_palette
	LDA #$00
	STA z:zslip_speed_fraction
	STA z:zslip_speed
	STA z:zFD
	LDY #$3F

@loop:
	TYA
	PHA
	LDA #$01
	CLC
	LDA z:zscreen_xcoord
	ADC #$04
	STA z:zscreen_xcoord
	CLC
	LDA aobject_xcoord_fraction
	ADC #$C0
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC #$00
	STA aobject_xcoord
	LDA z:zcurrent_weapon
	CMP #$01
	BNE @not_atomic_fire
	JSR $91FA

@not_atomic_fire:
	JSR _sprites
	JSR _scrolling_object_tiles
	JSR _nmi_wait_0e
	PLA
	TAY
	DEY
	BNE @loop
	STY z:zscreen_xcoord
	RTS

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

_handle_vertical_scrolling_object:
	LDA z:zscroll_direction
	LSR
	BNE @scroll_down
	LDX #$09
	STX z:zmegaman_status
	PHA
	JSR _check_megaman_hit_status
	PLA

@scroll_down:
	TAX
	LDA @scroll_down_process_index, X
	STA z:zscroll_down_process
	LDA @screen_ycoord_table, X
	STA z:zscreen_ycoord
	LDA #$00
	STA z:zFD

@loop:
	TXA
	PHA
	JSR _sprites
	JSR _scrolling_vertical
	JSR _scrolling_object_tiles
	JSR _nmi_wait_0e
	PLA
	TAX
	LDA z:zcurrent_weapon
	CMP #$01
	BNE @not_atomic_fire
	JSR @handle_atomic_fire

@not_atomic_fire:
	CLC
	LDA aobject_ycoord_fraction
	ADC @object_ycoord_speed_fraction_table, X
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	ADC @object_ycoord_speed_table, X
	STA aobject_ycoord
	LDA z:zout_of_screen
	ADC @out_of_screen_offset, X
	STA z:zout_of_screen
	CLC
	LDA z:zscreen_ycoord
	ADC @screen_ycoord_speed_table, X
	STA z:zscreen_ycoord
	CLC
	LDA z:zscroll_down_process
	ADC @scroll_down_process_rate, X
	STA z:zscroll_down_process
	BMI @done
	CMP #$3C
	BEQ @done
	BNE @loop

@done:
	LDA #$00
	STA z:zscreen_ycoord_fraction
	STA z:zscreen_ycoord
	STA aobject_ycoord_fraction
	JSR _sprites
	RTS

@handle_atomic_fire:
	LDA aobject_xcoord
	STA aobject_xcoord + $02
	LDA aobject_screen
	STA aobject_screen + $02
	LDA aobject_ycoord
	STA aobject_ycoord + $02
	LDA #$00
	STA aobject_frameset_lower_timer + $02
	RTS

@scroll_down_process_index:
	.BYTE $3B, $00

@scroll_down_process_rate:
	.BYTE -1, +1

@object_ycoord_speed_fraction_table:
	.BYTE $BF, $41

@object_ycoord_speed_table:
	.BYTE +3, -4

@screen_ycoord_speed_table:
	.BYTE -4, +4

@screen_ycoord_table:
	.BYTE $EF, $00

@out_of_screen_offset:
	.BYTE +0, -1
