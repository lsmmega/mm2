_draw_bosses_background:
	PHA
	LDA aboss_defeated_timer_1
	STA z:z09
	LDA aboss_defeated_timer_2
	STA z:z08
	PLA
	JSR _load_boss_tiles
	CLC
	LDA aobject_ppu_address + 1
	ADC #$20
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	CLC
	LDA aboss_defeated_timer_2
	ADC #$20
	STA aboss_defeated_timer_2
	LDA aboss_defeated_timer_1
	ADC #$00
	STA aboss_defeated_timer_1
	bankswitch $0B
	RTS
