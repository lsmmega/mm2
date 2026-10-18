_unused_3c2ae:
	LDA #$00
	STA z:zFD
	LDA #$02
	STA ano_of_palette
	LDA #$04
	STA apalette_animation_frame
	LDA #$BB
	STA z:zFD

@loop_1:
	JSR _unused_3c396
	DEC z:zFD
	BNE @loop_1
	LDA #$00
	STA apalette_animation_frame
	STA ano_of_palette
	LDX #$02

@loop_2:
	LDA unused_3c331_palette_table, X
	STA acurrent_background_palette + 1, X
	DEX
	BPL @loop_2
	LDA #$86
	STA z:zFF
	LDA #$00
	STA z:zFE

@loop_4:
	bankswitch $09
	LDA z:zFD
	LSR
	TAX
	LDA unused_3c334_hi_ppu_address, X
	STA aobject_ppu_address
	LDA unused_3c34b_lo_ppu_address, X
	STA aobject_ppu_address + 1
	LDA z:zFD
	AND #%00000001
	BEQ @even
	LDA aobject_ppu_address + 1
	ORA #$20
	STA aobject_ppu_address + 1

@even:
	LDY #$20

@loop_3:
	LDA (zFE), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop_3
	LDA #$20
	STA z:zobject_tiles_update_size
	CLC
	LDA z:zFE
	ADC #$20
	STA z:zFE
	LDA z:zFF
	ADC #$00
	STA z:zFF
	JSR _unused_3c396
	INC z:zFD
	LDA z:zFD
	CMP #$2E
	BNE @loop_4
	bankswitch $0E
	RTS

unused_3c331_palette_table:
	.BYTE white_yellow, light_yellow, white_cyan

unused_3c334_hi_ppu_address:
	.BYTE $10, $1A, $1A, $1B, $1B, $1B, $1B, $1C
	.BYTE $1C, $1C, $1C, $1D, $1D, $1D, $1D, $1E
	.BYTE $1E, $1E, $1E, $1F, $1F, $1F, $1F

unused_3c34b_lo_ppu_address:
	.BYTE $00, $80, $C0, $00, $40, $80, $C0, $00
	.BYTE $40, $80, $C0, $00, $40, $80, $C0, $00
	.BYTE $40, $80, $C0, $00, $40, $80, $C0
