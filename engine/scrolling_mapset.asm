_start_scrolling_mapset:
	JSR _clean_object_in_teleporting
	LDX z:zstart_scrolling_mapset
	DEX
	STX z:zend_scrolling_mapset
	DEC z:zscroll_index
	LDY z:zscroll_index
	JSR _load_stage_scrolling
	TYA
	AND #%00011111
	STA z:zstart_scrolling_mapset
	TXA
	SEC
	SBC z:zstart_scrolling_mapset
	STA z:zstart_scrolling_mapset
	LDA z:zend_scrolling_mapset
	JSR _draw_screen_instant
	DEC aobject_screen
	LDA z:zscroll_index
	STA z:zFE
	JSR _handle_scrolling_object
	DEC z:zscreen_id
	SEC
	LDA z:zleft_mapset_pointer
	SBC #$40
	STA z:zleft_mapset_pointer
	LDA z:zleft_mapset_pointer + 1
	SBC #$00
	STA z:zleft_mapset_pointer + 1
	SEC
	LDA z:zright_mapset_pointer
	SBC #$40
	STA z:zright_mapset_pointer
	LDA z:zright_mapset_pointer + 1
	SBC #$00
	STA z:zright_mapset_pointer + 1
	JSR _nmi_wait_0e
	SEC
	LDA z:zend_scrolling_mapset
	SBC #$01
	JSR _draw_screen_instant
	LDA #$00
	STA z:zout_of_screen
	LDA #objects_left
	STA z:ztoward
	JSR _find_objects
	RTS

_end_scrolling_mapset:
	JSR _clean_object_in_teleporting
	LDX z:zend_scrolling_mapset
	INX
	TXA
	PHA
	JSR _draw_screen_instant
	INC aobject_screen
	LDA z:zscroll_direction
	AND #%00000001
	BNE @vertical_1
	LDA #$18
	STA z:zFD
	LDA #$00
	STA z:zFE

@loop_1:
	LDX z:zcurrent_stage
	LDA z:zscreen_id
	CMP @draw_first_door_screen_id, X
	BCC @not_arrived_1
	LDA z:zFD
	AND #%00000111
	BNE @8_frames_1
	track_queue track_door
	LDA z:zscreen_id
	STA z:z09
	LDA #$F0
	STA z:z08
	LDA z:zFD
	ASL
	ADC @draw_door_ycoord, X
	STA z:z0A
	JSR _draw_other_on_screen
	JSR _draw_other_on_screen_attributes
	LDA #$80
	STA z:zdraw_door
	INC z:zdraw_other_flag

@8_frames_1:
	JSR _nmi_wait_0e
	DEC z:zFD
	BPL @loop_1
	track_queue mute_sfx

@vertical_1:
@not_arrived_1:
	LDA z:zscroll_index
	STA z:zFE
	INC z:zFE
	JSR _handle_scrolling_object
	INC z:zscreen_id
	JSR _nmi_wait_0e
	CLC
	LDA z:zend_scrolling_mapset
	ADC #$02
	JSR _draw_screen_instant
	INC z:zscroll_index
	LDY z:zscroll_index
	JSR _load_stage_scrolling
	TYA
	AND #%00011111
	STA z:zstart_scrolling_mapset
	PLA
	TAX
	CLC
	ADC z:zstart_scrolling_mapset
	STA z:zend_scrolling_mapset
	STX z:zstart_scrolling_mapset
	CLC
	LDA z:zright_mapset_pointer
	ADC #$40
	STA z:zright_mapset_pointer
	LDA z:zright_mapset_pointer + 1
	ADC #$00
	STA z:zright_mapset_pointer + 1
	CLC
	LDA z:zleft_mapset_pointer
	ADC #$40
	STA z:zleft_mapset_pointer
	LDA z:zleft_mapset_pointer + 1
	ADC #$00
	STA z:zleft_mapset_pointer + 1
	LDA #$00
	STA z:zout_of_screen
	LDA z:zscroll_direction
	AND #%00000001
	BNE @vertical_2
	LDA #$00
	STA z:zFD
	STA z:zFE

@loop_2:
	LDX z:zcurrent_stage
	LDA z:zscreen_id
	CMP @draw_first_door_screen_id, X
	BCC @not_arrived_2
	CMP draw_last_door_screen_id, X
	BNE @draw_door_closing
	track_queue track_boss_fighting
	LDA z:zcurrent_stage
	CMP #stage_wily4
	BEQ @draw_door_closing
	CMP #stage_wily1
	BCS @is_wily

@draw_door_closing:
	LDA z:zFD
	AND #%00000111
	BNE @8_frames_2
	track_queue track_door
	LDA z:zscreen_id
	STA z:z09
	LDA #$00
	STA z:z08
	LDA z:zFD
	ASL
	ADC @draw_door_ycoord, X
	STA z:z0A
	JSR _draw_other_on_screen
	LDX z:zcurrent_stage
	LDA @draw_door_attributes, X
	JSR _draw_other_on_screen_attributes
	INC z:zdraw_door
	INC z:zdraw_other_flag

@8_frames_2:
	JSR _nmi_wait_0e
	INC z:zFD
	LDA z:zFD
	CMP #$19
	BNE @loop_2
	track_queue mute_sfx

@vertical_2:
@not_arrived_2:
@is_wily:
	LDA #objects_right
	STA z:ztoward
	JSR _find_objects
	RTS

@draw_door_ycoord:
	.BYTE 6 << 4 ;heatman
	.BYTE 4 << 4 ;airman
	.BYTE 4 << 4 ;woodman
	.BYTE 4 << 4 ;bubbleman
	.BYTE 4 << 4 ;quickman
	.BYTE 4 << 4 ;flashman
	.BYTE 4 << 4 ;metalman
	.BYTE 4 << 4 ;crashman
	.BYTE 0 << 4 ;wily 1
	.BYTE 0 << 4 ;wily 2
	.BYTE 8 << 4 ;wily 3
	.BYTE 8 << 4 ;wily 4
	.BYTE 0 << 4 ;wily 5
	.BYTE 8 << 4 ;wily 6

@draw_door_attributes:
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;heatman
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;airman
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;woodman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;bubbleman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;quickman
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;flashman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;metalman
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;crashman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 2
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 3
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 4
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 5
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily 6

@draw_first_door_screen_id:
	.BYTE $15 ;heatman
	.BYTE $13 ;airman
	.BYTE $15 ;woodman
	.BYTE $13 ;bubbleman
	.BYTE $15 ;quickman
	.BYTE $11 ;flashman
	.BYTE $13 ;metalman
	.BYTE $11 ;crashman
	.BYTE $00 ;wily 1
	.BYTE $00 ;wily 2
	.BYTE $26 ;wily 3
	.BYTE $25 ;wily 4
	.BYTE $00 ;wily 5
	.BYTE $1E ;wily 6

draw_last_door_screen_id:
	.BYTE $17 ;heatman
	.BYTE $15 ;airman
	.BYTE $17 ;woodman
	.BYTE $15 ;bubbleman
	.BYTE $17 ;quickman
	.BYTE $13 ;flashman
	.BYTE $15 ;metalman
	.BYTE $13 ;crashman
	.BYTE $00 ;wily 1
	.BYTE $27 ;wily 2
	.BYTE $27 ;wily 3
	.BYTE $26 ;wily 4
	.BYTE $00 ;wily 5
	.BYTE $1F ;wily 6
