_load_title_screen_direct:
	JSR _disable_nmi
	LDA #$50
	STA z:zFD
	LDA #$00
	STA aobject_ppu_address + 1
	STA z:zFE
	LDA #$10
	STA aobject_ppu_address
	LDA #$B0
	STA z:zFF

@loop_1:
	JSR _load_title_tiles
	JSR _object_tiles_update
	CLC
	LDA aobject_ppu_address + 1
	ADC #$20
	STA aobject_ppu_address + 1
	LDA aobject_ppu_address
	ADC #$00
	STA aobject_ppu_address
	CLC
	LDA z:zFE
	ADC #$20
	STA z:zFE
	LDA z:zFF
	ADC #$00
	STA z:zFF
	DEC z:zFD
	BNE @loop_1
	LDA #<load_title_screen_set_direct
	STA z:z08
	LDA #>load_title_screen_set_direct
	STA z:z09
	LDA #$20
	STA PPU_ADDRESS
	LDY #$00
	STY PPU_ADDRESS
	LDX #$1E

@loop_3:
	LDY #$00

@loop_2:
	LDA (z08), Y
	STA PPU_DATA
	INY
	CPY #$20
	BNE @loop_2
	SEC
	LDA z:z08
	SBC #$20
	STA z:z08
	LDA z:z09
	SBC #$00
	STA z:z09
	DEX
	BNE @loop_3
	LDY #$3F

@loop_4:
	LDA title_screen_set, Y
	STA PPU_DATA
	DEY
	BPL @loop_4
	LDX #$1F

@loop_5:
	LDA intro_fade_out_final_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_5
	LDX #$0F

@loop_6:
	LDA title_fade_out_palettes, X
	STA acurrent_background_palette, X
	DEX
	BPL @loop_6
	LDX #$1F
	LDA #$00

@loop_7:
	STA aobject_screen, X
	STA aobject_pointer, X
	DEX
	BPL @loop_7
	LDA #$77
	STA aobject_ycoord + $10
	LDA #$00
	STA aobject_pointer + $10
	LDA #$08
	STA aobject_frameset_lower_timer + $10
	LDA #$01
	STA aobject_pointer + $02
	LDA #$CC
	STA aobject_ycoord + $02
	LDA #$02
	STA aobject_pointer + $03
	LDA #$A4
	STA aobject_ycoord + $03
	JSR _enable_nmi
	LDA #$00
	STA z:zjoy1_pressed_bits
	STA z:zscreen_ycoord
	STA z:zopening_nametable
	JMP _title
