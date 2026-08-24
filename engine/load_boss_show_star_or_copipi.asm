_load_boss_show_star_or_copipi:
	LDY #$50
	LDX #$00
	LDA #$30
	STA z:z00
	LDA #$02
	STA z:z03

@loop_1:
	STY z:z04
	STX z:z05
	LDA aobject_flag
	BEQ @star_1
	LDA #$80 ;load copipi, see `home/load_copipi_tiles.asm`
	STA z:z00
	LDA z:znmi_frame
	AND #%00000100
	BNE @4_frames
	INC z:z00

@star_1:
@4_frames:
	LDX z:z03
	LDA @coord_size_table, X
	STA z:z01
	CLC
	LDA aobject_xcoord_fraction + 1, X
	ADC @xcoord_fraction_offset, X
	STA aobject_xcoord_fraction + 1, X
	LDA aobject_xcoord  + 1, X
	ADC @xcoord_offset, X
	STA aobject_xcoord  + 1, X
	STA z:z02
	LDX z:z05
	LDY z:z04
	JSR @load_star_or_copipi_coord
	INC z:z00
	DEC z:z03
	BPL @loop_1
	RTS

@coord_size_table:
	.BYTE $07, $0D, $15

@xcoord_fraction_offset:
	.BYTE $00, $47, $41

@xcoord_offset:
	.BYTE +4, +1, +0

@load_star_or_copipi_coord:
@loop_2:
	LDA load_boss_show_star_or_copipi_coord, X
	STA aoam_y, Y
	INY
	LDA z:z00
	STA aoam_y, Y
	INY
	LDA aobject_flag
	BEQ @star_2
	LDA #$40

@star_2:
	STA aoam_y, Y
	INY
	CLC
	LDA load_boss_show_star_or_copipi_coord + 1, X
	ADC z:z02
	STA aoam_y, Y
	INY
	INX
	INX
	DEC z:z01
	BNE @loop_2
	RTS
