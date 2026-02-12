_screen_update:
	BPL @scroll_horizontal
	JMP @scroll_vertical

@scroll_horizontal:
	LDY #$00

@loop_1:
	STY z:z00
	TYA
	ASL
	ASL
	ASL
	ASL
	TAX
	LDA #4
	STA z:z01
	LDA ascreen_ppu_horizontal_address, Y
	STA z:z0B
	LDA ascreen_ppu_horizontal_address + 4, Y
	STA z:z0A
	CMP #$80
	BCC @not_bottom_bottom_left
	LDA z:z0B
	AND #%00000011
	CMP #%00000011
	BNE @not_bottom_bottom_left
	LDA #2
	STA z:z01

@not_bottom_bottom_left:
	LDA ascreen_ppu_horizontal_attribute_address, Y
	STA PPU_ADDRESS
	LDA ascreen_ppu_horizontal_attribute_address + 4, Y
	STA PPU_ADDRESS
	LDA ascreen_ppu_horizontal_attribute_data, Y
	STA PPU_DATA

@loop_2:
	LDA z:z0B
	STA PPU_ADDRESS
	CLC
	LDA z:z0A
	STA PPU_ADDRESS
	ADC #$20
	STA z:z0A
	LDY #$04

@loop_3:
	LDA ascreen_ppu_horizontal_data, X
	STA PPU_DATA
	INX
	DEY
	BNE @loop_3
	DEC z:z01
	BNE @loop_2
	LDY z:z00
	INY
	DEC z:zscreen_update_flag
	BNE @loop_1
	RTS

@scroll_vertical:
	LDX #$00
	STX z:zscreen_update_flag

@loop_4:
	LDA ascreen_ppu_vertical_address
	STA PPU_ADDRESS
	LDA ascreen_ppu_vertical_address + 1
	STA PPU_ADDRESS

@loop_5:
	LDA ascreen_ppu_vertical_data, X
	STA PPU_DATA
	INX
	TXA
	AND #%00000111
	BNE @loop_5
	CLC
	LDA ascreen_ppu_vertical_address + 1
	ADC #$20
	STA ascreen_ppu_vertical_address + 1
	LDA ascreen_ppu_vertical_attribute_address
	STA PPU_ADDRESS
	LDA ascreen_ppu_vertical_attribute_address + 1
	STA PPU_ADDRESS
	LDA PPU_DATA
	LDA PPU_DATA
	LDY z:zscreen_update_flag
	AND ascreen_ppu_vertical_attribute_data
	ORA ascreen_ppu_vertical_attribute_data + 1, Y
	PHA
	LDA ascreen_ppu_vertical_attribute_address
	STA PPU_ADDRESS
	LDA ascreen_ppu_vertical_attribute_address + 1
	STA PPU_ADDRESS
	PLA
	STA PPU_DATA
	INC z:zscreen_update_flag
	INC ascreen_ppu_vertical_attribute_address + 1
	CPX #$10
	BNE @loop_4
	LDA #$00
	STA z:zscreen_update_flag
	RTS
