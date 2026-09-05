_game_over:
	LDA #$03
	JSR _load_cutscene_tiles
	LDA z:zcurrent_stage
	PHA
	LDA #<.BANK (mapset_flashman_wily6_24)
	STA z:zcurrent_stage
	LDA #<mapset_flashman_wily6_24
	STA z:z08
	LDA #>mapset_flashman_wily6_24
	STA z:z09
	JSR _load_password_screen
	LDA #<mapset_flashman_wily6_25
	STA z:z08
	LDA #>mapset_flashman_wily6_25
	JSR _load_password_screen
	LDA #$21
	STA PPU_ADDRESS
	LDA #$CC
	STA PPU_ADDRESS
	LDX #$00

@loop_1:
	LDA game_over_strings, X
	STA PPU_DATA
	INX
	CPX #$09
	BNE @loop_1
	track_queue track_game_over
	JSR _init_miscellaneous_ram
	LDA #$00
	JSR _init_password_screen
	LDA #$04
	STA z:zFE
	LDA #$7D
	STA z:zFD

@loop_2:
	LDX z:zFE
	CPX #$07
	BEQ @next
	JSR _load_password_game_over_strings
	INC z:zFE

@next:
	JSR _nmi_wait_0d
	DEC z:zFD
	BNE @loop_2
	JSR _password_fade_in
	JSR _password_screen_move_right
	LDA #<mapset_flashman_wily6_26
	STA z:zFD
	LDA #>mapset_flashman_wily6_26
	STA z:zFE
	JSR _load_password_correct_weapons
	track_queue track_password

@back:
	JSR _password_fade_out
	LDA #$00
	STA z:zFD

@loop_4:
	LDA z:zjoy1_pressed_bits
	AND #select_button | start_button | up_button | down_button
	BEQ @run_regular
	AND #start_button
	BNE @start_pressed
	track_queue track_select
	LDA z:zjoy1_pressed_bits
	AND #select_button | down_button
	BNE @down
	DEC z:zFD
	BPL @run_regular
	LDA #$02
	STA z:zFD
	BNE @run_regular

@down:
	INC z:zFD
	LDA z:zFD
	CMP #$03
	BNE @run_regular
	LDA #$00
	STA z:zFD

@run_regular:
	LDX #$03

@loop_3:
	LDA game_over_cursor_oam, X
	STA aoam_y, X
	DEX
	BPL @loop_3
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames
	LDX z:zFD
	LDA game_over_cursor_ycoord, X
	STA aoam_y

@8_frames:
	JSR _nmi_wait_0d
	JMP @loop_4

@start_pressed:
	LDA z:zFD
	CMP #$02
	BEQ @password
	JMP @quit

@password:
	JSR _show_password
	JMP @back

@quit:
	JSR _disable_nmi
	PLA
	STA z:zcurrent_stage
	LDA #$03
	STA z:z1up
	RTS

game_over_strings:
	.BYTE "GAME@OVER"

game_over_cursor_oam:
	.BYTE $F8, $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $48

game_over_cursor_ycoord:
	.BYTE $60, $70, $80
