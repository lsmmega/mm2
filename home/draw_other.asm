_draw_other:
	LDA z:zppu_ctrl
	ORA #draw_vertical
	STA PPU_CTRL
	LDA z:zdraw_door
	BNE @is_door
	LDY z:zdraw_other_flag
	BMI @is_picopico

@laser_loop:
	LDA adraw_other_ppu_address, Y
	STA PPU_ADDRESS
	LDA adraw_other_ppu_address + 6, Y
	STA PPU_ADDRESS
	LDA adraw_other_ppu_data, Y
	STA PPU_DATA
	CLC
	ADC #1
	STA PPU_DATA
	DEY
	BNE @laser_loop

@done:
	STY z:zdraw_other_flag
	LDA z:zppu_ctrl
	AND #~draw_vertical
	STA PPU_CTRL
	RTS

@is_picopico:
	TYA
	AND #%01111111
	TAY

@picopico_mainloop:
	LDA #2
	STA z:z00
	LDA #$E4
	STA z:z01

@picopico_horizontal_loop:
	LDA adraw_other_ppu_address, Y
	STA PPU_ADDRESS
	LDA adraw_other_ppu_address + 6, Y
	STA PPU_ADDRESS
	LDA #2
	STA z:z02

@picopico_vertical_loop:
	LDA z:z01
	STA PPU_DATA
	INC z:z01
	DEC z:z02
	BNE @picopico_vertical_loop
	DEC z:z00
	BEQ @picopico_inner_loop_done
	CLC
	LDA adraw_other_ppu_address + 6, Y
	ADC #$01
	STA adraw_other_ppu_address + 6, Y
	JMP @picopico_horizontal_loop

@picopico_inner_loop_done:
	DEY
	BNE @picopico_mainloop
	BEQ @done

@is_door:
	BPL @draw_close_tile
	LDA adraw_other_ppu_address + 1
	STA PPU_ADDRESS
	LDX adraw_other_ppu_address + 7
	DEX
	DEX
	STX PPU_ADDRESS
	LDA PPU_DATA
	LDA PPU_DATA
	TAX
	JMP @read_tile_done

@draw_close_tile:
	LDX #$20

@read_tile_done:
	LDY #$02

@door_loop:
	LDA adraw_other_ppu_address + 1
	STA PPU_ADDRESS
	LDA adraw_other_ppu_address + 7
	STA PPU_ADDRESS
	STX PPU_DATA
	INX
	STX PPU_DATA
	INX
	INC adraw_other_ppu_address + 7
	DEY
	BNE @door_loop
	LDA adraw_other_ppu_address + 13
	STA PPU_ADDRESS
	LDA adraw_other_ppu_address + 19
	STA PPU_ADDRESS
	LDA z:zdraw_door
	BPL @update_close_attribute
	LDA PPU_DATA
	LDA PPU_DATA
	STA z:z00
	LDA adoor_attribute_bitwise
	EOR #%11111111
	LSR
	LSR
	AND z:z00
	ASL
	ASL
	STA adoor_attribute
	LDA z:z00
	JMP @open_attribute

@update_close_attribute:
	LDA PPU_DATA
	LDA PPU_DATA

@open_attribute:
	AND adoor_attribute_bitwise
	ORA adoor_attribute
	TAX
	LDA adraw_other_ppu_address + 13
	STA PPU_ADDRESS
	LDA adraw_other_ppu_address + 19
	STA PPU_ADDRESS
	STX PPU_DATA
	STY z:zdraw_door
	JMP @done
