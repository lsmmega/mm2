_load_stage_select:
	LDA #$00
	JSR _load_cutscene_tiles
	LDA #$20
	STA PPU_ADDRESS
	LDY #$00
	STY PPU_ADDRESS
	LDA #>stage_select_screen_set
	STA z:z09
	LDA #<.BANK (stage_select_screen_set)
	JSR _load_cutscene_screen
	LDY #$1F

@loop_1:
	LDA boss_show_screen_set, Y
	LDX #$20

@loop_2:
	STA PPU_DATA
	DEX
	BNE @loop_2
	DEY
	BPL @loop_1
	RTS
