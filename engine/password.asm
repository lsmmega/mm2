_password:
	LDA #$03
	JSR _load_cutscene_tiles
	LDA #<.BANK (mapset_flashman_wily6_21)
	STA z:zcurrent_stage
	LDA #<mapset_flashman_wily6_21
	STA z:z08
	LDA #>mapset_flashman_wily6_21
	STA z:z09
	JSR _load_password_screen
	LDA #<mapset_flashman_wily6_22
	STA z:z08
	LDA #>mapset_flashman_wily6_22
	STA z:z09
	JSR _load_password_screen
	LDX #$00

@loop_2:
	LDA password_game_over_strings, X
	STA PPU_ADDRESS
	LDA password_game_over_strings + 1, X
	STA PPU_ADDRESS
	INX
	INX
	LDY password_game_over_strings, X
	INX

@loop_1:
	LDA password_game_over_strings, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_1
	CPX #$19
	BNE @loop_2
	track_queue track_password
	LDA #$01
	JSR _init_password_screen

@back:
	LDA #$00
	STA z:zFD
	STA z:zgot_weapon_flag
	STA z:zgot_item_flag

@choose_loop:
	LDX #$03

@loop_3:
	LDA password_cursor_hidden, X
	STA aoam_y, X
	DEX
	BPL @loop_3
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames
	LDX #$60
	LDA z:zFD
	BEQ @up_option
	LDX #$70

@up_option:
	STX aoam_y

@8_frames:
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button | up_button | down_button 
	BEQ @not_pressed
	AND #start_button
	BNE @start_pressed
	track_queue track_select
	LDA z:zFD
	EOR #%00000001
	STA z:zFD

@not_pressed:
	JSR _nmi_wait_0d
	JMP @choose_loop

@start_pressed:
	LDA z:zFD
	BNE @password
	JMP @quit

@password:
	JSR _password_fade_in
	JSR _init_miscellaneous_sprites
	JSR _password_screen_move_right
	LDX #$2F

@loop_4:
	LDA password_oam, X
	STA aoam_y, X
	DEX
	BPL @loop_4
	LDA #$00
	LDX #$18

@loop_5:
	STA aobject_flag, X
	DEX
	BPL @loop_5
	JSR _init_password_oam
	JSR _password_fade_out
	LDA #$00
	STA aobject_frameset_upper_timer
	LDA #$09
	STA aobject_frameset_lower_timer
	LDA #$00
	STA z:zFE

@ball_set_loop:
	LDA z:zjoy1_pressed_bits
	AND #up_button | down_button | left_button | right_button
	BNE @moved
	LDA z:zjoy1_pressed
	AND #up_button | down_button | left_button | right_button
	BEQ @no_moved
	LDA z:zjoy1_pressed_frame
	CMP z:zjoy1_pressed
	BNE @no_moved
	INC z:zFE
	LDA z:zFE
	CMP #$18
	BCC @check_a_b
	LDA #$08
	STA z:zFE

@moved:
	track_queue track_select
	LDX aobject_frameset_upper_timer
	LDA z:zjoy1_pressed
	AND #left_button | right_button
	BEQ @check_up_down
	AND #right_button
	BEQ @move_left
	LDA password_row_move_right, X
	JMP @move_correct_coord

@move_left:
	LDA password_row_move_left, X
	JMP @move_correct_coord

@check_up_down:
	LDA z:zjoy1_pressed
	AND #up_button
	BEQ @move_down
	LDA password_row_move_up, X
	JMP @move_correct_coord

@move_down:
	LDA password_row_move_down, X

@move_correct_coord:
	STA aobject_frameset_upper_timer
	JMP @check_a_b

@no_moved:
	LDA #$00
	STA z:zFE

@check_a_b:
	LDA z:zjoy1_pressed_bits
	AND #a_button | b_button
	BEQ @skip
	LDA z:zjoy1_pressed_bits
	LDX aobject_frameset_upper_timer
	AND #a_button
	BEQ @b_pressed
	LDA aobject_flag, X
	BNE @skip
	track_queue track_1up
	INC aobject_flag, X
	DEC aobject_frameset_lower_timer
	BEQ @all_ball_set
	BNE @skip

@b_pressed:
	LDA aobject_flag, X
	BEQ @skip
	DEC aobject_flag, X
	INC aobject_frameset_lower_timer

@skip:
	JSR _load_password_oam
	JSR _nmi_wait_0d
	JMP @ball_set_loop

@all_ball_set:
	JSR _load_password_oam
	LDA #black
	STA acurrent_background_palette + $16
	LDX #$00

@loop_6:
	LDA aobject_flag, X
	BNE @get_e_tank
	INX
	CPX #$04
	BNE @loop_6

@get_e_tank:
	STX z:z04
	TXA
	CLC
	ADC #$05
	TAX
	LDA #$00
	STA z:z01
	STA z:z02
	STA z:z03

@loop_7:
	LDA aobject_flag, X
	BEQ @ball_not_set
	LDY z:z01
	LDA password_boss_clear_set, Y
	PHA
	LDA password_boolean, Y
	TAY
	PLA
	ORA a:z02, Y
	STA a:z02, Y

@ball_not_set:
	INX
	CPX #$19
	BNE @check_continue
	LDX #$05

@check_continue:
	INC z:z01
	LDA z:z01
	CMP #$14
	BNE @loop_7
	LDA z:z02
	ORA z:z03
	CMP #$FF
	BNE @incorrect
	JMP @correct

@incorrect:
	LDX #$02
	JSR _load_password_game_over_strings
	LDA #$7D
	STA z:zFD

@loop_8:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_8
	LDX #$03
	JSR _load_password_game_over_strings
	JSR _password_fade_in
	JSR _init_miscellaneous_sprites
	JSR _password_screen_move_left
	JSR _password_fade_out
	LDA #$7D
	STA z:zFD

@loop_9:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_9
	JSR _password_fade_in
	LDX #$00
	JSR _load_password_game_over_strings
	JSR _nmi_wait_0d
	LDX #$01
	JSR _load_password_game_over_strings
	JSR _nmi_wait_0d
	JSR _password_fade_out
	JMP @back

@correct:
	LDA z:z02
	STA z:zgot_weapon_flag
	AND #%00000011
	STA z:zgot_item_flag
	LDA z:zgot_weapon_flag
	AND #%00100000
	LSR
	LSR
	LSR
	ORA z:zgot_item_flag
	STA z:zgot_item_flag
	LDA z:z04
	STA z:ze_tank
	LDA #<mapset_flashman_wily6_23
	STA z:zFD
	LDA #>mapset_flashman_wily6_23
	STA z:zFE
	JSR _load_password_correct_weapons
	LDA #$3C
	STA z:zFD

@loop_10:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_10
	JSR _password_fade_in
	JSR _init_miscellaneous_sprites
	JSR _password_screen_move_right
	LDA z:zgot_weapon_flag
	STA z:z01
	LDA z:zgot_item_flag
	STA z:z02
	LDX #$00
	BEQ @run

@correct_weapons_oam_loop:
	LSR z:z02
	ROR z:z01
	BCS @true
	INX
	INX
	INX
	INX
	BNE @next

@run:
@true:
	LDY #$04

@loop_11:
	LDA password_correct_weapons_oam, X
	STA aoam_y, X
	INX
	DEY
	BNE @loop_11

@next:
	CPX #$30
	BNE @correct_weapons_oam_loop
	JSR _password_fade_out
	LDA #$7D
	STA z:zFD

@loop_13:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_13

@quit:
	JSR _disable_nmi
	RTS
