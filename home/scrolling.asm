_scrolling_horizontal:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA #$20
	STA z:z0B
	LDY #$00
	LDA (z08), Y
	TAX
	TAY
	LDA stage_32x32_attributes, Y
	PHA
	TXA
	ASL
	ROL z:z0B
	ASL
	ROL z:z0B
	STA z:z0A
	LDA z:zscreen_update_flag
	ASL
	ASL
	ASL
	ASL
	TAX
	PHA
	LDY #$00

@loop:
	CLC
	PLA
	PHA
	ADC @draw_horizontal_offset_table, Y
	TAX
	LDA (z0A), Y
	ASL
	ASL
	CLC
	STA ascreen_ppu_horizontal_data, X
	ADC #$01
	STA ascreen_ppu_horizontal_data + 4, X
	ADC #$01
	STA ascreen_ppu_horizontal_data + 1, X
	ADC #$01
	STA ascreen_ppu_horizontal_data + 5, X
	INY
	CPY #$04
	BNE @loop
	PLA
	LDY #$20
	LDA z:z08
	AND #%01000000
	BEQ @left
	LDY #$24

@left:
	STY z:z0D
	LDA z:zcurrent_handle_32x32_attribute
	STA z:z0C
	LSR
	ROR z:z0C
	LDA z:z0C
	PHA
	AND #topleft_palette_3
	ORA z:z0D
	STA z:z0D
	PLA
	AND #~topleft_palette_3
	LDX z:zscreen_update_flag
	STA ascreen_ppu_horizontal_address + 4, X
	LDA z:z0D
	STA ascreen_ppu_horizontal_address, X
	LDA z:z0D
	ORA #$03
	STA ascreen_ppu_horizontal_attribute_address, X
	LDA z:zcurrent_handle_32x32_attribute
	STA z:z0C
	LSR
	LSR
	LSR
	ASL z:z0C
	ASL z:z0C
	ASL z:z0C
	ORA #$C0
	ORA z:z0C
	STA ascreen_ppu_horizontal_attribute_address + 4, X
	PLA
	STA ascreen_ppu_horizontal_attribute_data, X
	INC z:zscreen_update_flag
	bankswitch $0E
	RTS

@draw_horizontal_offset_table:
	.BYTE $00, $08, $02, $0A

_draw_screen_temp:
	LDA z:zcurrent_bankswitch
	PHA
	JSR _scrolling_horizontal
	PLA
	JSR _bankswitch
	RTS

_scrolling_vertical:
	LDA z:zcurrent_stage
	AND #%00000111
	JSR _bankswitch
	LDA z:zscroll_down_process
	LSR
	LSR
	LSR
	LSR
	STA ascreen_ppu_vertical_address
	LDA z:zscroll_down_process
	ASL
	ASL
	ASL
	PHA
	AND #%00011000
	STA ascreen_ppu_vertical_address + 1
	PLA
	ASL
	AND #%11000000
	ORA ascreen_ppu_vertical_address + 1
	STA ascreen_ppu_vertical_address + 1
	LDA z:zscroll_down_process
	AND #%11111000
	ORA #$C0
	STA ascreen_ppu_vertical_attribute_address + 1
	LDA z:zscroll_down_process
	AND #%00000011
	ASL
	ORA ascreen_ppu_vertical_attribute_address + 1
	STA ascreen_ppu_vertical_attribute_address + 1
	LDX #$20
	LDA z:zscreen_id
	AND #%00000001
	BEQ @even
	LDX #$24

@even:
	TXA
	ORA ascreen_ppu_vertical_address
	STA ascreen_ppu_vertical_address
	TXA
	ORA #$03
	STA ascreen_ppu_vertical_attribute_address
	LDA #$00
	STA z:z00
	LDA z:zscroll_down_process
	AND #%00111011
	LSR
	ROR z:z00
	LSR
	ROR z:z00
	LSR
	ROR z:z00
	LSR z:z00
	ORA z:z00
	STA z:z00
	LDA aobject_screen
	LDX #<stage_mapset_pointer
	STX z:z08
	LSR
	ROR z:z08
	LSR
	ROR z:z08
	CLC
	ADC #>stage_mapset_pointer
	STA z:z09
	STX z:z01

@mainloop:
	LDY z:z00
	LDA (z08), Y
	STA z:z03
	STA z:z0A
	LDA #$20
	ASL z:z0A
	ROL
	ASL z:z0A
	ROL
	STA z:z0B
	LDY #$00
	LDA z:zscroll_down_process
	AND #%00000100
	BEQ @top_1
	INY

@top_1:
	LDA #$02
	STA z:z02

@innerloop:
	LDA (z0A), Y
	ASL
	ASL
	CLC
	STA ascreen_ppu_vertical_data, X
	ADC #$01
	STA ascreen_ppu_vertical_data + 8, X
	ADC #$01
	STA ascreen_ppu_vertical_data + 1, X
	ADC #$01
	STA ascreen_ppu_vertical_data + 9, X
	INX
	INX
	INY
	INY
	DEC z:z02
	BNE @innerloop
	LDA z:zscroll_down_process
	LDY #topleft_palette_3 | topright_palette_3
	AND #%00000100
	BEQ @top_2
	LDY #bottomleft_palette_3 | bottomright_palette_3

@top_2:
	STY ascreen_ppu_vertical_attribute_data
	LDY z:z03
	LDA stage_32x32_attributes, Y
	AND ascreen_ppu_vertical_attribute_data
	LDY z:z01
	STA ascreen_ppu_vertical_attribute_data + 1, Y
	LDA z:z00
	ORA #$08
	STA z:z00
	INC z:z01
	LDA z:z01
	CMP #$02
	BEQ @done
	JMP @mainloop

@done:
	LDA #$80
	STA z:zscreen_update_flag
	LDA #$FF
	EOR ascreen_ppu_vertical_attribute_data
	STA ascreen_ppu_vertical_attribute_data
	bankswitch $0E
	RTS
