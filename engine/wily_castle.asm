_wily_castle:
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	LDA #nametable_vertical | fix_last_bank
	JSR _mmc1_control
	JSR _init_miscellaneous_ram
	LDA #$01
	JSR _load_cutscene_tiles
	LDA #$20
	STA PPU_ADDRESS
	LDY #$00
	STY PPU_ADDRESS

@loop_2:
	LDA wily_castle_upper_screen_set, Y
	LDX #$40

@loop_1:
	STA PPU_DATA
	DEX
	BNE @loop_1
	INY
	CPY #$10
	BNE @loop_2
	LDA #$28
	STA PPU_ADDRESS
	LDY #$00
	STY PPU_ADDRESS
	LDA #>wily_castle_screen_set
	STA z:z09
	LDA #<.BANK (wily_castle_screen_set)
	JSR _load_cutscene_screen
	LDX #$1F

@loop_3:
	LDA wily_castle_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_3
	JSR _init_miscellaneous_sprites
	LDA z:zcurrent_stage
	CMP #stage_wily2
	BCC @run_cutscene
	JSR _wily_castle_fade_out
	JMP @skip_cutscene

@run_cutscene:
	track_queue track_wily_ufo
	JSR _enable_nmi
	LDA #$FF
	STA aobject_screen
	STA aobject_screen + $01
	LDA #$D0
	STA aobject_xcoord
	STA aobject_xcoord + $01
	LDA #$68
	STA aobject_ycoord
	LDA #$80
	STA aobject_ycoord + $01
	LDA #$00
	STA aobject_pointer
	STA aobject_frameset_lower_timer + $01
	STA aobject_xcoord_fraction
	STA aobject_xcoord_fraction + $01
	STA aobject_ycoord_fraction
	STA aobject_ycoord_fraction + $01
	LDA #$01
	STA aobject_pointer + $01

@loop_4:
	CLC
	LDA aobject_xcoord_fraction
	ADC #$40
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC #$01
	STA aobject_xcoord
	STA aobject_xcoord + $01
	LDA aobject_screen
	ADC #$00
	STA aobject_screen
	STA aobject_screen + $01
	BNE @not_full
	LDA aobject_xcoord
	CMP #$68
	BCS @on_right_1

@not_full:
	JSR _ufo_frameset
	JSR _init_miscellaneous_sprites
	LDX #$00
	STX z:z00
	JSR _draw_ufo_oam
	LDX #$01
	JSR _draw_ufo_oam
	JSR _nmi_wait_0d
	JMP @loop_4

@on_right_1:
	JSR _init_miscellaneous_sprites
	LDX #$00
	STX z:z00
	JSR _draw_ufo_oam
	LDX #$01
	JSR _draw_ufo_oam
	LDA #$3E
	STA z:zFD

@loop_5:
	JSR _ufo_frameset
	LDX #$00
	STX z:z00
	JSR _draw_ufo_oam
	LDX #$01
	JSR _draw_ufo_oam
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_5
	LDA #$04
	STA aobject_pointer + $02
	LDA #$6C
	STA aobject_xcoord + $02
	LDA #$70
	STA aobject_ycoord + $02
	LDA #$00
	STA aobject_screen + $02
	LDA #$50
	STA z:zFD

@loop_6:
	SEC
	LDA aobject_ycoord_fraction
	SBC #$80
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	SBC #$00
	STA aobject_ycoord
	JSR _ufo_frameset
	JSR _run_draw_ufo
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_6
	LDA #$FA
	STA z:zFD

@loop_7:
	INC aobject_frameset_lower_timer + $02
	LDA aobject_frameset_lower_timer + $02
	CMP #$08
	BCC @skip
	LDA #$00
	STA aobject_frameset_lower_timer + $02
	INC aobject_pointer + $02
	LDA aobject_pointer + $02
	CMP #$06
	BCC @skip
	LDA #$04
	STA aobject_pointer + $02

@skip:
	JSR _ufo_frameset
	JSR _run_draw_ufo
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_7
	LDA #$50
	STA z:zFD

@loop_8:
	CLC
	LDA aobject_ycoord_fraction
	ADC #$80
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	ADC #$00
	STA aobject_ycoord
	JSR _ufo_frameset
	JSR _run_draw_ufo
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_8
	track_queue music_fade_in_out
	LDA #$06
	STA aobject_pointer
	LDA #$01
	STA aobject_frameset_upper_timer
	LDA #$00
	STA z:zFD
	STA aobject_xcoord_speed_fraction
	LDA #$04
	STA aobject_xcoord_speed

@loop_9:
	LDA aobject_frameset_upper_timer
	BNE @nz
	LDX #$00
	LDA aobject_xcoord
	CMP #$68
	BCS @on_right_2
	INX

@on_right_2:
	CLC
	LDA aobject_xcoord_speed_fraction
	ADC wily_castle_ufo_xcoord_speed_fraction, X
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	ADC wily_castle_ufo_xcoord_speed, X
	STA aobject_xcoord_speed
	SEC
	LDA aobject_xcoord_fraction
	SBC aobject_xcoord_speed_fraction
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	SBC aobject_xcoord_speed
	STA aobject_xcoord
	CMP #$18
	BCS @run_ufo_oam_frameset
	BCC @switch_direction

@nz:
	LDX #$00
	LDA aobject_xcoord
	CMP #$68
	BCC @on_left_1
	INX

@on_left_1:
	CLC
	LDA aobject_xcoord_speed_fraction
	ADC wily_castle_ufo_xcoord_speed_fraction, X
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	ADC wily_castle_ufo_xcoord_speed, X
	STA aobject_xcoord_speed
	CLC
	LDA aobject_xcoord_fraction
	ADC aobject_xcoord_speed_fraction
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	ADC aobject_xcoord_speed
	STA aobject_xcoord
	CMP #$68
	BCC @run_ufo_oam_frameset
	LDX z:zFD
	LDA wily_castle_ufo_oam_index_pointer, X
	STA aobject_pointer
	LDA aobject_xcoord
	CMP #$B8
	BCC @run_ufo_oam_frameset

@switch_direction:
	LDA #$00
	STA aobject_xcoord_speed
	STA aobject_xcoord_speed_fraction
	LDA aobject_frameset_upper_timer
	PHP
	EOR #%00000001
	STA aobject_frameset_upper_timer
	PLP
	BEQ @run_ufo_oam_frameset
	INC z:zFD
	LDA z:zFD
	CMP #$03
	BNE @run_ufo_oam_frameset
	track_queue track_wily_castle

@run_ufo_oam_frameset:
	JSR _init_miscellaneous_sprites
	LDX #$00
	STX z:z00
	JSR _draw_ufo_oam
	LDA aobject_pointer
	BNE @run_ufo_no_oam_frameset
	LDA aobject_xcoord
	STA aobject_xcoord + $01
	JSR _ufo_frameset
	LDX #$01
	JSR _draw_ufo_oam

@run_ufo_no_oam_frameset:
	JSR _wily_castle_screen_movement
	JSR _draw_wily_plate_oam
	JSR _nmi_wait_0d
	LDA z:zFD
	CMP #$05
	BEQ @max
	JMP @loop_9

@max:
	LDA #$0A
	STA aobject_pointer

@loop_10:
	CLC
	LDA aobject_xcoord_speed_fraction
	ADC #$18
	STA aobject_xcoord_speed_fraction
	LDA aobject_xcoord_speed
	ADC #$00
	STA aobject_xcoord_speed
	SEC
	LDA aobject_xcoord_fraction
	SBC aobject_xcoord_speed_fraction
	STA aobject_xcoord_fraction
	LDA aobject_xcoord
	SBC aobject_xcoord_speed
	STA aobject_xcoord
	CMP #$68
	BCC @on_left_2
	JSR _init_miscellaneous_sprites
	LDX #$00
	STX z:z00
	JSR _draw_ufo_oam
	JSR _wily_castle_screen_movement
	JSR _draw_wily_plate_oam
	JSR _nmi_wait_0d
	JMP @loop_10

@on_left_2:
	JSR _init_miscellaneous_sprites
	JSR _draw_wily_plate_oam
	LDA #$3E
	STA z:zFD

@loop_11:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_11
	JSR _init_miscellaneous_sprites

@skip_cutscene:
	LDX #$1F

@loop_12:
	LDA wily_castle_routing_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_12
	LDA #$37
	STA z:zFD

@loop_13:
	LDX #$0F
	LDA z:zFD
	AND #%00001000
	BEQ @8_frames
	LDX #$30

@8_frames:
	STX acurrent_background_palette + $10
	JSR _nmi_wait_0d
	DEC z:zFD
	BPL @loop_13
	LDX z:zcurrent_stage
	LDA wily_castle_map_routing_length - 8, X
	STA z:zFD
	LDA #$3E
	STA z:zFE

@loop_14:
	LDA z:zFD
	STA z:z00
	JSR _draw_wily_castle_map
	JSR _nmi_wait_0d
	DEC z:zFE
	BNE @loop_14

@loop_15:
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	track_queue track_refill
	CLC
	LDA z:zFD
	ADC #$04
	STA z:zFD
	LDX z:zcurrent_stage
	CMP wily_castle_map_routing_length - 7, X
	BEQ @equal

@4_frames:
	LDA z:zFD
	STA z:z00
	JSR _draw_wily_castle_map
	JSR _nmi_wait_0d
	JMP @loop_15

@equal:
	LDA #$7D
	STA z:zFE

@loop_16:
	LDA z:zFD
	STA z:z00
	JSR _draw_wily_castle_map
	JSR _nmi_wait_0d
	DEC z:zFE
	BNE @loop_16
	JSR _disable_nmi
	LDA #nametable_top_left
	STA z:zopening_nametable
	LDA #nametable_horizontal | fix_last_bank
	JSR _mmc1_control
	RTS

_ufo_frameset:
	INC aobject_frameset_lower_timer + $01
	LDA aobject_frameset_lower_timer + $01
	CMP #$06
	BCC @skip
	LDA #$00
	STA aobject_frameset_lower_timer + $01
	INC aobject_pointer + $01
	LDA aobject_pointer + $01
	CMP #$04
	BCC @skip
	LDA #$01
	STA aobject_pointer + $01

@skip:
	RTS

_run_draw_ufo:
	JSR _init_miscellaneous_sprites
	LDX #$00
	STX z:z00

@loop:
	STX z:zsprites_pointer
	JSR _draw_ufo_oam
	LDX z:zsprites_pointer
	INX
	CPX #$03
	BNE @loop
	RTS

_wily_castle_screen_movement:
	LDA z:zscreen_ycoord
	BNE @nz
	LDA z:zopening_nametable
	BNE @bottom

@nz:
	CLC
	LDA z:zscreen_ycoord_fraction
	ADC #$80
	STA z:zscreen_ycoord_fraction
	LDA z:zscreen_ycoord
	ADC #$00
	CMP #$F0
	BNE @not_bottom
	LDA #nametable_bottom_left
	STA z:zopening_nametable
	LDA #$00

@not_bottom:
	STA z:zscreen_ycoord
	LDA z:zscreen_ycoord
	BNE @bottom

@bottom:
	RTS

_draw_wily_plate_oam:
	LDA z:zopening_nametable
	BNE @bottom
	SEC
	LDA #$5F
	SBC z:zscreen_ycoord
	STA z:z01
	LDA #$01
	SBC #$00
	BEQ @continue
	RTS

@bottom:
	LDA #$6F
	STA z:z01

@continue:
	LDA #$05
	STA z:z02
	LDX #$00

@loop:
	CLC
	LDA wily_plate_oam, X
	ADC z:z01
	BCS @hidden
	CMP #$F0
	BCS @hidden
	STA aoam_y + $EC, X
	LDA wily_plate_oam + 1, X
	STA aoam_tiles + $EC, X
	LDA wily_plate_oam + 2, X
	STA aoam_attributes + $EC, X
	LDA wily_plate_oam + 3, X
	STA aoam_x + $EC, X

@hidden:
	INX
	INX
	INX
	INX
	DEC z:z02
	BNE @loop
	RTS

_draw_wily_castle_map:
	JSR _init_miscellaneous_sprites
	LDX #$23

@loop_1:
	LDA wily_castle_map_oam, X
	STA aoam_y, X
	DEX
	BPL @loop_1
	LDA z:z00
	BEQ @skip
	LDY #$00

@loop_2:
	LDA wily_castle_map_routing, Y
	STA aoam_y + $24, Y
	INY
	INX
	DEC z:z00
	BNE @loop_2
	LDA z:znmi_frame
	AND #%00001000
	BNE @skip
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BCS @skull_eye
	SEC
	LDA z:zcurrent_stage
	SBC #$07
	ASL
	ASL
	TAX
	LDA #$73
	STA aoam_tiles, X
	LDA #oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, X

@skull_eye:
	LDA #$77
	STA aoam_tiles + $14
	STA aoam_tiles + $18
	LDA #$78
	STA aoam_tiles + $1C
	STA aoam_tiles + $20
	LDA z:zcurrent_stage
	CMP #stage_wily6
	BNE @skip
	LDA #$77
	STA aoam_tiles + $F4
	STA aoam_tiles + $E8
	LDA #$78
	STA aoam_tiles + $EC
	STA aoam_tiles + $F0

@skip:
	RTS

_draw_ufo_oam:
	LDY aobject_pointer, X
	LDA draw_wily_ufo_oam_lo_pointers, Y
	STA z:z08
	LDA draw_wily_ufo_oam_hi_pointers, Y
	STA z:z09
	LDA aobject_xcoord, X
	STA z:z0A
	LDA aobject_screen, X
	STA z:z0B
	LDA aobject_ycoord, X
	STA z:z0C
	LDY #$00
	LDA (z08), Y
	INY
	STA z:z0D
	LDX z:z00

@loop:
	CLC
	LDA (z08), Y
	ADC z:z0C
	STA aoam_y, X
	INY
	LDA (z08), Y
	STA aoam_tiles, X
	INY
	LDA (z08), Y
	STA aoam_attributes, X
	INY
	CLC
	LDA (z08), Y
	ADC z:z0A
	STA z:z01
	LDA z:z0B
	ADC #$00
	BEQ @not_hidden
	LDA #$F8
	STA aoam_y, X
	BNE @hidden

@not_hidden:
	LDA z:z01
	STA aoam_x, X
	INX
	INX
	INX
	INX

@hidden:
	INY
	DEC z:z0D
	BNE @loop
	STX z:z00
	RTS

_wily_castle_fade_out:
	LDX #$1F
	LDA #black

@loop_1:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_1
	LDA #nametable_bottom_left
	STA z:zopening_nametable
	JSR _enable_nmi
	JSR _draw_wily_plate_oam
	LDX #$00
	STX z:zFD
	LDA #$08
	STA z:zFE

@loop_3:
	DEC z:zFE
	BNE @fade_out_wait
	LDA #$08
	STA z:zFE
	LDX z:zFD
	LDY #$00

@loop_2:
	LDA wily_castle_fade_out, X
	STA acurrent_background_palette, Y
	INX
	INY
	CPY #$20
	BNE @loop_2
	CPX #$60
	BEQ @max
	STX z:zFD

@fade_out_wait:
	JSR _nmi_wait_0d
	JMP @loop_3

@max:
	track_queue track_wily_castle
	LDA #$02
	STA z:zFE

@loop_5:
	LDA #$A0
	STA z:zFD

@loop_4:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_4
	DEC z:zFE
	BNE @loop_5
	JSR _init_miscellaneous_sprites
	RTS
