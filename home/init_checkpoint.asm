_init_checkpoint:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDY z:zcheckpoint_pointer
	LDA stage_checkpoint_mapset_id, Y
	STA z:zscreen_id
	STA aobject_screen
	LDA stage_checkpoint_enemies_index, Y
	STA z:zleft_checkpoint_enemies_index
	STA z:zright_checkpoint_enemies_index
	LDA stage_checkpoint_items_index, Y
	STA z:zleft_checkpoint_items_index
	STA z:zright_checkpoint_items_index
	LDA stage_checkpoint_hileft_mapset, Y
	STA z:zleft_mapset_pointer + 1
	LDA stage_checkpoint_loleft_mapset, Y
	STA z:zleft_mapset_pointer
	LDA stage_checkpoint_hiright_mapset, Y
	STA z:zright_mapset_pointer + 1
	LDA stage_checkpoint_loright_mapset, Y
	STA z:zright_mapset_pointer
	LDA stage_checkpoint_scrolling_index, Y
	STA z:zscroll_index
	LDA stage_checkpoint_start_scrolling_mapset, Y
	STA z:zstart_scrolling_mapset
	LDA stage_checkpoint_end_scrolling_mapset, Y
	STA z:zend_scrolling_mapset
	LDX z:zscroll_index
	JSR _object_palette
	TYA
	CLC
	ADC #$0B
	TAY
	LDX #$0C

@loop_1:
	LDA stage_sprites_tiles_set, Y
	PHA
	DEY
	DEX
	BNE @loop_1
	LDA #$0A
	STA PPU_ADDRESS
	LDA #$00
	STA PPU_ADDRESS
	STA z:z08
	LDA #$06
	STA z:z00

@loop_3:
	PLA
	STA z:z09
	PLA
	JSR _bankswitch
	LDY #$00

@loop_2:
	LDA (z08), Y
	STA PPU_DATA
	INY
	BNE @loop_2
	DEC z:z00
	BNE @loop_3
	bankswitch $0E
	LDA z:zcheckpoint_pointer
	CMP #$02
	BNE @skip
	JSR _scroll_right_background_palette

@skip:
	RTS
