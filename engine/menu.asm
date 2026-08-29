_open_menu:
	JSR _init_sprites
	LDA #$00
	JSR _weapon_palette_menu
	LDA z:zmecha_dragon_ycoord_fraction
	PHA
	LDA z:zmecha_dragon_ycoord
	PHA
	LDA z:zmecha_dragon_xcoord_fraction
	PHA
	LDA z:zmecha_dragon_xcoord
	PHA
	LDA z:zmecha_dragon_screen
	PHA
	LDA z:zscreen_id
	PHA
	LDA z:zscreen_xcoord
	PHA
	LDX #$11

@loop_1:
	LDA ano_of_palette, X
	STA amenu_palette_temp, X
	DEX
	BPL @loop_1
	LDA #$00
	STA z:zmecha_dragon_xcoord
	STA z:zmecha_dragon_xcoord_fraction
	STA z:zmecha_dragon_ycoord_fraction
	STA z:zmecha_dragon_ycoord
	LDA z:zcurrent_stage
	CMP #stage_quickman
	BNE @skip_1
	LDA z:zscroll_index
	CMP #$03
	BCC @skip_1
	CMP #$0F
	BCS @skip_1
	CMP #$07
	BEQ @skip_1
	LDX #black
	TXA

@loop_2:
	STA acurrent_background_palette, X
	DEX
	BPL @loop_2
	INC z:zscreen_id

@skip_1:
	LDA z:zboss_ai_pointer
	BEQ @skip_2
	LDA z:zcurrent_boss
	CMP #$08
	BCC @skip_2
	LDX #$00
	STX z:zscreen_xcoord
	CMP #$0A
	BEQ @skip_2
	CMP #$0B
	BEQ @skip_2
	INC z:zscreen_id

@skip_2:
	LDA #stage_wily3
	CMP z:zcurrent_stage
	BNE @skip_3
	LDA z:zboss_ai_pointer
	BEQ @skip_3
	LDA #black
	LDX #$02

@loop_3:
	STA acurrent_background_palette + $05, X
	STA abackground_palette_set + $05, X
	STA abackground_palette_set + $15, X
	STA abackground_palette_set + $25, X
	DEX
	BPL @loop_3

@skip_3:
	CLC
	LDA z:zscreen_xcoord
	ADC #$80
	AND #%11100000
	ORA #%00000100
	STA z:zmenu_screen_xcoord
	LDA z:zscreen_id
	ADC #$00
	STA z:zmenu_screen_id
	LDX #$00

@loop_5:
	STX z:zFD
	CLC
	LDA z:zmenu_screen_xcoord
	ADC draw_menu_screen_xcoord_offset_table, X
	STA z:z08
	LDA z:zmenu_screen_id
	ADC #$00
	STA z:z09
	LDA #$00
	STA z:zscreen_update_flag
	JSR _draw_menu
	LDX z:zFD
	LDA draw_menu_tiles_vertical_index_table, X
	ASL
	ASL
	ASL
	ASL
	TAX
	LDY #$00

@loop_4:
	LDA draw_menu_tiles_32x32_vertical_table, X
	STA ascreen_ppu_horizontal_data, Y
	INX
	INY
	CPY #$10
	BNE @loop_4
	LDX z:zcurrent_stage
	LDA draw_menu_attributes_stage_table, X
	STA ascreen_ppu_horizontal_attribute_data
	LDA #$01
	STA z:zscreen_update_flag
	LDY #$99
	LDX #$00
	JSR _draw_menu_object_tiles
	JSR _nmi_wait_0d
	LDX z:zFD
	INX
	CPX #$0F
	BNE @loop_5
	STX z:zFD
	LDY #$99
	LDX #$00
	JSR _draw_menu_object_tiles
	LDA #$00
	STA z:zFE
	STA z:zFF
	LDX z:zcurrent_weapon
	INX
	CPX #$07
	BCC @not_2nd_page
	TXA
	SBC #$06
	TAX
	INC z:zFE

@not_2nd_page:
	STX z:zFD

@mainloop:
	LDA z:zgot_weapon_flag
	ASL
	ORA #%01000001
	STA z:z07
	LDA z:zFE
	BEQ @1st_page_1
	LDA z:zgot_weapon_flag
	STA z:z07
	LDA z:zgot_item_flag
	ASL z:z07
	ROL
	ASL z:z07
	ROL
	ASL z:z07
	ROL
	STA z:z07

@1st_page_1:
	LDA z:zjoy1_pressed_bits
	AND #start_button
	BEQ @start_not_pressed
	JMP @start_pressed

@start_not_pressed:
	LDA z:zjoy1_pressed_bits
	AND #up_button | down_button
	BNE @up_or_down_pressed
	LDA z:zjoy1_pressed
	AND #up_button | down_button
	BEQ @undo
	STA z:z00
	LDA z:zjoy1_pressed_frame
	AND #up_button | down_button
	CMP z:z00
	BNE @undo
	INC z:zFF
	LDA z:zFF
	CMP #$18
	BCC @regular
	LDA #$08
	STA z:zFF

@up_or_down_pressed:
	LDX #$07
	LDA z:zFE
	BEQ @1st_page_2
	DEX

@1st_page_2:
	track_queue track_select
	LDA z:zjoy1_pressed
	AND #up_button | down_button
	AND #up_button
	BNE @up_pressed

@not_got_1:
	INC z:zFD
	CPX z:zFD
	BCS @not_max
	LDA #$00
	STA z:zFD

@not_max:
	LDY z:zFD
	BEQ @weapon_not_selected_1
	LDA draw_menu_oam_anded_table, Y
	AND z:z07
	BEQ @not_got_1
	BNE @got

@up_pressed:
@not_got_2:
	DEC z:zFD
	BPL @not_min
	STX z:zFD

@not_min:
	LDY z:zFD
	BEQ @weapon_not_selected_1
	LDA draw_menu_oam_anded_table, Y
	AND z:z07
	BEQ @not_got_2
	BNE @got

@undo:
	LDA #$00
	STA z:zFF

@regular:
@weapon_not_selected_1:
@got:
	JSR _draw_menu_object
	JSR _nmi_wait_0d
	JMP @mainloop

@start_pressed:
	LDA z:zFD
	BNE @weapon_selected
	LDA z:zFE
	EOR #%00000001
	STA z:zFE
	JMP @undo

@weapon_selected:
	CMP #$07
	BNE @e_tank_not_selected
	LDA z:ze_tank
	BEQ @undo
	DEC z:ze_tank

@refilling:
	LDA aobject_hp
	CMP #$1C
	BEQ @undo
	LDA z:znmi_frame
	AND #%00000011
	BNE @4_frames
	INC aobject_hp
	track_queue track_refill

@4_frames:
	JSR _draw_menu_object
	JSR _nmi_wait_0d
	JMP @refilling

@e_tank_not_selected:
	LDA z:zFD
	BEQ @undo
	CMP #$07
	BEQ @undo
	TAX
	DEX
	LDA z:zFE
	BEQ @weapon_not_selected_2
	CLC
	TXA
	ADC #$06
	TAX

@weapon_not_selected_2:
	STX z:zcurrent_weapon
	JSR _init_sprites
	LDA z:zcurrent_handle_32x32_attribute
	PHA
	LDX #$00

@loop_7:
	STX z:zFD
	CLC
	LDA z:zmenu_screen_xcoord
	ADC draw_menu_screen_xcoord_offset_table, X
	STA z:z08
	LDA z:zmenu_screen_id
	ADC #$00
	STA z:z09
	LDA z:z08
	LSR z:z09
	ROR
	LSR z:z09
	ROR
	STA z:z08
	AND #%00111111
	STA z:zcurrent_handle_32x32_attribute
	CLC
	LDA z:z09
	ADC #>stage_mapset_pointer
	STA z:z09
	LDA #$00
	STA z:zscreen_update_flag
	JSR _draw_screen_temp
	LDA z:zFD
	CMP #$08
	BCS @restore_2nd_stage
	LDX z:zcurrent_weapon
	LDA draw_weapon_tiles_hi_address, X
	TAY
	CPX #$09
	BCC @regular_weapons
	LDX #$00
	BEQ @continue

@regular_weapons:
	LDX #$05
	BNE @continue

@restore_2nd_stage:
	LDY #$90
	LDX #$00

@continue:
	JSR _draw_menu_object_tiles
	JSR _nmi_wait_0d
	LDX z:zFD
	INX
	CPX #$0F
	BNE @loop_7
	STX z:zFD
	LDY #$90
	LDX #$00
	JSR _draw_menu_object_tiles
	JSR _weapon_palette
	JSR _nmi_wait_0d
	PLA
	STA z:zcurrent_handle_32x32_attribute
	LDA z:zcurrent_stage
	CMP #stage_wily3
	BNE @skip_4
	LDA z:zboss_ai_pointer
	BEQ @skip_4
	LDX #$02

@loop_6:
	LDA @stage_wily3_palette_back, X
	STA acurrent_background_palette + $05, X
	STA abackground_palette_set + $05, X
	STA abackground_palette_set + $15, X
	STA abackground_palette_set + $25, X
	DEX
	BPL @loop_6

@skip_4:
	LDX #$11

@loop_8:
	LDA amenu_palette_temp, X
	STA ano_of_palette, X
	DEX
	BPL @loop_8
	PLA
	STA z:zscreen_xcoord
	PLA
	STA z:zscreen_id
	PLA
	STA z:zmecha_dragon_screen
	PLA
	STA z:zmecha_dragon_xcoord
	PLA
	STA z:zmecha_dragon_xcoord_fraction
	PLA
	STA z:zmecha_dragon_ycoord
	PLA
	STA z:zmecha_dragon_ycoord_fraction
	LDA #$00
	STA z:zweapon_consume_fraction
	STA z:zmegaman_status
	STA aobject_frameset_lower_timer
	STA aobject_frameset_upper_timer
	LDA #$1A
	STA aobject_pointer
	LDA #$03
	STA z:ztime_stopper_flag
	track_queue track_teleport_in
	RTS

@stage_wily3_palette_back:
	.BYTE white_orange, light_azure, light_red

_draw_menu_object:
	JSR _init_sprites
	LDA z:zmenu_screen_xcoord
	AND #%11100000
	SEC
	SBC z:zscreen_xcoord
	STA z:z08
	LDY #$00

@loop_1:
	LDA draw_menu_oam_arrow_and_next, Y
	STA aoam_y, Y
	INY
	CPY #$14
	BNE @loop_1
	LDA z:zgot_weapon_flag
	ASL
	ORA #%00000001
	STA z:z07
	LDA #$05
	STA z:z01
	LDX #$00
	LDA z:zFE
	BEQ @1st_page
	LDX #$06
	LDA z:zgot_weapon_flag
	STA z:z07
	LDA z:zgot_item_flag
	ASL z:z07
	ROL
	ASL z:z07
	ROL
	ASL z:z07
	ROL
	STA z:z07

@1st_page:
	LDA z:z07
	STA z:z02
	LDA #$44
	STA z:z00

@loop_2:
	STA aoam_y, Y
	LSR z:z02
	BCS @got
	LDA #$F8
	STA aoam_y, Y

@got:
	LDA draw_menu_weapon_name_tiles, X
	STA aoam_tiles, Y
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, Y
	LDA #$0C
	STA aoam_x, Y
	CLC
	LDA z:z00
	ADC #$10
	STA z:z00
	INY
	INY
	INY
	INY
	INX
	DEC z:z01
	BPL @loop_2
	LDA z:zFE
	BNE @2nd_page
	LDX #$00

@loop_3:
	LDA draw_menu_oam_e_tank_and_1up, X
	STA aoam_y, Y
	INY
	INX
	CPX #$04
	BNE @loop_3
	STY z:z00
	LDA #$44
	STA z:z02
	LDA aobject_hp
	JSR _draw_menu_megaman_hp_bar
	LDA z:z07
	LSR
	STA z:z04
	LDX #$00
	LDA #$54

@loop_4:
	STX z:z03
	STA z:z02
	LSR z:z04
	BCC @not_got_1
	JSR _draw_menu_bar

@not_got_1:
	CLC
	LDA z:z02
	ADC #$10
	LDX z:z03
	INX
	CPX #$05
	BNE @loop_4
	LDY z:z00
	LDA z:ze_tank
	BEQ @none
	STA z:z02
	LDA #$1C

@loop_5:
	STA z:z01
	LDA #$A4
	STA aoam_y, Y
	LDA #$13
	STA aoam_tiles, Y
	LDA #oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, Y
	LDA z:z01
	STA aoam_x, Y
	INY
	INY
	INY
	INY
	CLC
	LDA z:z01
	ADC #$10
	DEC z:z02
	BNE @loop_5

@none:
	JMP @continue

@2nd_page:
	LDX #$04

@loop_6:
	LDA draw_menu_oam_e_tank_and_1up, X
	STA aoam_y, Y
	INY
	INX
	CPX #$18
	BNE @loop_6
	STY z:z00
	LDA z:z07
	STA z:z04
	LDX #$05
	LDA #$44

@loop_7:
	STX z:z03
	STA z:z02
	LSR z:z04
	BCC @not_got_2
	JSR _draw_menu_bar

@not_got_2:
	CLC
	LDA z:z02
	ADC #$10
	LDX z:z03
	INX
	CPX #$0B
	BNE @loop_7
	LDA z:z1up
	STA z:z01
	DEC z:z01
	LDA #$0A
	STA z:z02
	JSR _divide_mod
	LDY z:z00
	LDA #$A5
	STA aoam_y, Y
	STA aoam_y + $04, Y
	CLC
	LDA z:z03
	ADC #$14
	STA aoam_tiles, Y
	CLC
	LDA z:z04
	ADC #$14
	STA aoam_tiles + $04, Y
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, Y
	STA aoam_attributes + $04, Y
	LDA #$38
	STA aoam_x, Y
	LDA #$40
	STA aoam_x + $04, Y

@continue:
	LDY #$00
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames
	LDY #$20

@8_frames:
	STY z:z00
	LDX z:zFD
	BNE @weapon_selected
	LDA z:z00
	BEQ @not_hidden
	LDA #$F8
	STA aoam_y
	JMP @done

@weapon_selected:
	DEX
	TXA
	ASL
	ASL
	TAY
	LDA z:z00
	BEQ @not_hidden
	LDA #$F8
	STA aoam_y + $14, Y

@not_hidden:
@done:
	LDX #$00

@loop_8:
	CLC
	LDA aoam_x, X
	ADC z:z08
	STA aoam_x, X
	INX
	INX
	INX
	INX
	BNE @loop_8
	RTS

;unused
	.BYTE $2C, $3C, $4C, $5C, $6C, $7C, $8C, $9C
	.BYTE $3C, $4C, $5C, $6C, $7C, $8C, $9C, $AC

.ENUM
	horizontal_bar_base_xcoord = $1C
	horizontal_bar_4_tile = $90
	horizontal_bar_3_tile
	horizontal_bar_2_tile
	horizontal_bar_1_tile
	horizontal_bar_0_tile
.ENDENUM

_draw_menu_bar:
	LDA z:zweapon_energy, X

_draw_menu_megaman_hp_bar:
	STA z:z01
	LDX #6

@loop:
	LDA z:z02
	STA aoam_y, Y
	SEC
	LDA z:z01
	SBC #4
	BCS @div4
	LDY z:z01
	LDA #0
	STA z:z01
	LDA @horizontal_bar_tile, Y
	LDY z:z00
	JMP @mod4

@div4:
	STA z:z01
	LDA #horizontal_bar_4_tile

@mod4:
	STA aoam_tiles, Y
	LDA #oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip
	STA aoam_attributes, Y
	LDA @horizontal_bar_xcoord_table, X
	STA aoam_x, Y
	INY
	INY
	INY
	INY
	STY z:z00
	DEX
	BPL @loop
	RTS

@horizontal_bar_xcoord_table:
	.BYTE horizontal_bar_base_xcoord + 48
	.BYTE horizontal_bar_base_xcoord + 40
	.BYTE horizontal_bar_base_xcoord + 32
	.BYTE horizontal_bar_base_xcoord + 24
	.BYTE horizontal_bar_base_xcoord + 16
	.BYTE horizontal_bar_base_xcoord + 8
	.BYTE horizontal_bar_base_xcoord + 0

@horizontal_bar_tile:
	.BYTE horizontal_bar_0_tile
	.BYTE horizontal_bar_1_tile
	.BYTE horizontal_bar_2_tile
	.BYTE horizontal_bar_3_tile

draw_menu_tiles_vertical_index_table:
	.BYTE $00, $01, $02
	.BYTE $03, $04, $05
	.BYTE $03, $04, $05
	.BYTE $03, $04, $05
	.BYTE $06, $07, $08

draw_menu_screen_xcoord_offset_table:
	.BYTE $00, $20, $40
	.BYTE $04, $24, $44
	.BYTE $08, $28, $48
	.BYTE $0C, $2C, $4C
	.BYTE $10, $30, $50

draw_menu_tiles_32x32_vertical_table:
;0
	.BYTE $40, $40, $40, $40, $40, $41, $41, $41
	.BYTE $40, $41, $41, $41, $40, $41, $41, $41

;1
	.BYTE $40, $40, $40, $40, $41, $41, $41, $41
	.BYTE $41, $41, $41, $41, $41, $41, $41, $41

;2
	.BYTE $40, $40, $40, $40, $41, $41, $41, $40
	.BYTE $41, $41, $41, $40, $41, $41, $41, $40

;3
	.BYTE $40, $41, $41, $41, $40, $41, $41, $41
	.BYTE $40, $41, $41, $41, $40, $41, $41, $41

;4
	.BYTE $41, $41, $41, $41, $41, $41, $41, $41
	.BYTE $41, $41, $41, $41, $41, $41, $41, $41

;5
	.BYTE $41, $41, $41, $40, $41, $41, $41, $40
	.BYTE $41, $41, $41, $40, $41, $41, $41, $40

;6
	.BYTE $40, $41, $41, $41, $40, $41, $41, $41
	.BYTE $40, $41, $41, $41, $40, $40, $40, $40

;7
	.BYTE $41, $41, $41, $41, $41, $41, $41, $41
	.BYTE $41, $41, $41, $41, $40, $40, $40, $40

;8
	.BYTE $41, $41, $41, $40, $41, $41, $41, $40
	.BYTE $41, $41, $41, $40, $40, $40, $40, $40

draw_menu_attributes_stage_table:
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;heatman
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;airman
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;woodman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;bubbleman
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;quickman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;flashman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;metalman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;crashman
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily1
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily2
	.BYTE topleft_palette_1 | topright_palette_1 | bottomleft_palette_1 | bottomright_palette_1 ;wily3
	.BYTE topleft_palette_2 | topright_palette_2 | bottomleft_palette_2 | bottomright_palette_2 ;wily4
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily5
	.BYTE topleft_palette_0 | topright_palette_0 | bottomleft_palette_0 | bottomright_palette_0 ;wily6

draw_menu_oam_arrow_and_next:
	.BYTE $34, $11, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $0C
	.BYTE $34, $95, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $1C
	.BYTE $34, $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $24
	.BYTE $34, $97, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $2C
	.BYTE $34, $98, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $34

draw_menu_weapon_name_tiles:
	.BYTE $1F ;mega buster
	.BYTE $9F ;atomic fire
	.BYTE $9B ;air shooter
	.BYTE $99 ;leaf shield
	.BYTE $9D ;bubble lead
	.BYTE $9C ;quick boomerang
	.BYTE $9A ;time stopper
	.BYTE $9E ;metal blade
	.BYTE $10 ;crash bomber
	.BYTE $15 ;item 1
	.BYTE $16 ;item 2
	.BYTE $17 ;item 3

draw_menu_oam_e_tank_and_1up:
	.BYTE $A4, $96, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $0C
	.BYTE $A0, $8D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $A0, $8D, oam_palette_0 | oam_priority_foreground | x_flip | no_y_flip, $20
	.BYTE $A8, $8E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $A8, $8E, oam_palette_1 | oam_priority_foreground | x_flip | no_y_flip, $20
	.BYTE $A4, $1E, oam_palette_1 | oam_priority_foreground | no_x_flip | no_y_flip, $2C

draw_weapon_tiles_hi_address:
	.BYTE $98 ;mega buster
	.BYTE $9A ;atomic fire
	.BYTE $99 ;air shooter
	.BYTE $9C ;leaf shield
	.BYTE $98 ;bubble lead
	.BYTE $98 ;quick boomerang
	.BYTE $9A ;time stopper
	.BYTE $98 ;metal blade
	.BYTE $9B ;crash bomber
	.BYTE $9B ;item 1
	.BYTE $9B ;item 2
	.BYTE $9B ;item 3

draw_menu_oam_anded_table:
	.BYTE %00000000
	.BYTE %00000001
	.BYTE %00000010
	.BYTE %00000100
	.BYTE %00001000
	.BYTE %00010000
	.BYTE %00100000
	.BYTE %01000000
