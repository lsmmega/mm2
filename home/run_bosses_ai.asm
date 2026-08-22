_run_bosses_ai:
	LDA z:zboss_ai_pointer
	BEQ @skip
	farjsr _boss_ai_jmp
	bankswitch $0E
	LDA aregular_boss_defeated_flag
	BEQ @skip
	LDA z:zcurrent_stage
	CMP #stage_wily5
	BNE @defeated_regular
	LDA z:zrefighting_flag
	CMP #$FF
	BEQ @defeated_regular
	LDX #$0F

@loop:
	LSR aobject_flag + $10, X
	DEX
	BPL @loop
	JSR _clear_bosses_flag
	LDA #$00
	STA z:zsprites_pointer
	LDA #objects_wily5_teleport_return
	LDX #$0F
	JSR _generate_teleport
	LDA #$20
	STA aobject_xcoord + $1F
	LDA #$AB
	STA aobject_ycoord + $1F
	BNE @done

@defeated_regular:
	JMP _bosses_defeated

@skip:
@done:
	RTS
