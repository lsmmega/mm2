show_password_cursor_oam:
	.BYTE $98, $22, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $28

show_password_weapons_oam:
	.BYTE $68, $2F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;mega buster
	.BYTE $88, $1F, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;atomic fire
	.BYTE $78, $1B, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;air shooter
	.BYTE $88, $19, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;leaf shield
	.BYTE $68, $1D, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;bubble lead
	.BYTE $78, $1C, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;quick boomerang
	.BYTE $98, $1A, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;time stopper
	.BYTE $98, $1E, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;metal blade
	.BYTE $A8, $20, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;crash bomber
	.BYTE $A8, $25, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;item 1
	.BYTE $B8, $26, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $C8 ;item 2
	.BYTE $B8, $27, oam_palette_0 | oam_priority_foreground | no_x_flip | no_y_flip, $D8 ;item 3

_show_password:
	JSR _password_fade_in
	JSR _init_miscellaneous_sprites
	JSR _password_screen_move_right
	LDA #$00
	LDX #$18

@loop_1:
	STA aobject_flag, X
	DEX
	BPL @loop_1
	LDA z:zgot_weapon_flag
	STA z:z00
	EOR #%11111111
	STA z:z01
	CLC
	LDA z:ze_tank
	TAX
	ADC #$05
	STA z:z03
	INC aobject_flag, X
	LDX #$00

@loop_2:
	LDY password_boolean, X
	LDA a:z00, Y
	LDY z:z03
	AND password_boss_clear_set, X
	BEQ @not_clear
	LDA #$01

@not_clear:
	STA aobject_flag, Y
	INY
	CPY #$19
	BNE @next_1
	LDY #$05

@next_1:
	STY z:z03
	INX
	CPX #$14
	BNE @loop_2
	JSR _init_password_oam
	JSR _load_password_oam
	LDA #$F8
	STA aoam_y + $30
	STA aoam_y + $34
	STA aoam_y + $38
	STA aoam_y + $3C
	LDX #$27

@loop_3:
	LDA password_oam, X
	STA aoam_y, X
	DEX
	BPL @loop_3
	LDX #$03

@loop_4:
	LDA show_password_cursor_oam, X
	STA aoam_y + $28, X
	DEX
	BPL @loop_4
	LDA z:zgot_weapon_flag
	ASL
	ORA #%00000001
	STA z:z00
	LDA z:zgot_item_flag
	ROL
	STA z:z01
	LDX #$00
	LDA #$0C
	STA z:z02

@loop_6:
	LSR z:z01
	ROR z:z00
	BCC @not_get
	LDY #$04

@loop_5:
	LDA show_password_weapons_oam, X
	STA aoam_y + $A4, X
	INX
	DEY
	BNE @loop_5
	BEQ @next_2

@not_get:
	INX
	INX
	INX
	INX

@next_2:
	DEC z:z02
	BNE @loop_6
	LDX #$07
	JSR _load_password_game_over_strings
	JSR _password_fade_out

@not_pressed:
	LDX #$F8
	LDA z:znmi_frame
	AND #%00001000
	BNE @8_frames
	LDX #$98

@8_frames:
	STX aoam_y + $28
	JSR _nmi_wait_0d
	LDA z:zjoy1_pressed_bits
	AND #a_button
	BEQ @not_pressed
	track_queue track_1up
	JSR _password_fade_in
	JSR _init_miscellaneous_sprites
	JSR _password_screen_move_left
	RTS
