_load_cutscene_tile:
	STA z:z00
	TAX
	LDA @tile_table_mainloop_length, X
	STA z:z01
	LDA @load_tile_table_pointer, X
	STA z:z02
	LDA #$00
	STA z:z08
	STA PPU_ADDRESS
	STA PPU_ADDRESS

@loop_2:
	LDX z:z02
	LDA @tile_hiaddress_table, X
	STA z:z09
	LDA @tile_table_loop_length, X
	STA z:z03
	LDA @tile_bankswitch_table, X
	JSR _bankswitch
	LDY #$00

@loop_1:
	LDA (z08), Y
	STA PPU_DATA
	INY
	BNE @loop_1
	INC z:z09
	DEC z:z03
	BNE @loop_1
	INC z:z02
	DEC z:z01
	BNE @loop_2
	bankswitch $0D
	RTS

@tile_table_mainloop_length:
	.BYTE @tile_table_length_01 - @tile_table_length_00
	.BYTE @tile_table_length_02 - @tile_table_length_01
	.BYTE @tile_table_length_03 - @tile_table_length_02
	.BYTE @tile_table_length_04 - @tile_table_length_03
	.BYTE @tile_table_length_05 - @tile_table_length_04
	.BYTE @tile_table_length_06 - @tile_table_length_05
	.BYTE @tile_table_length_end - @tile_table_length_06

@load_tile_table_pointer:
	.BYTE @tile_table_length_00 - @tile_table_length_00
	.BYTE @tile_table_length_01 - @tile_table_length_00
	.BYTE @tile_table_length_02 - @tile_table_length_00
	.BYTE @tile_table_length_03 - @tile_table_length_00
	.BYTE @tile_table_length_04 - @tile_table_length_00
	.BYTE @tile_table_length_05 - @tile_table_length_00
	.BYTE @tile_table_length_06 - @tile_table_length_00

@tile_bankswitch_table:
;00
	.BYTE bank_05
	.BYTE bank_08

;01
	.BYTE bank_06
	.BYTE bank_09

;02
	.BYTE bank_06
	.BYTE bank_00
	.BYTE bank_09

;03
	.BYTE bank_00
	.BYTE bank_09
	.BYTE bank_08
	.BYTE bank_09
	.BYTE bank_08
	.BYTE bank_09

;04
	.BYTE bank_03
	.BYTE bank_03
	.BYTE bank_04
	.BYTE bank_04
	.BYTE bank_06
	.BYTE bank_04
	.BYTE bank_05
	.BYTE bank_05
	.BYTE bank_05
	.BYTE bank_07
	.BYTE bank_07
	.BYTE bank_02
	.BYTE bank_08
	.BYTE bank_07

;05
	.BYTE bank_05
	.BYTE bank_08
	.BYTE bank_09
	.BYTE bank_08

;06
	.BYTE bank_00
	.BYTE bank_06
	.BYTE bank_07
	.BYTE bank_07
	.BYTE bank_07
	.BYTE bank_02
	.BYTE bank_02
	.BYTE bank_09

@tile_hiaddress_table:
;00
	.BYTE bank_internal_hiaddress_10
	.BYTE bank_internal_hiaddress_08

;01
	.BYTE bank_internal_hiaddress_10
	.BYTE bank_internal_hiaddress_10

;02
	.BYTE bank_internal_hiaddress_10
	.BYTE bank_internal_hiaddress_18
	.BYTE bank_internal_hiaddress_20

;03
	.BYTE bank_internal_hiaddress_18
	.BYTE bank_internal_hiaddress_2c
	.BYTE bank_internal_hiaddress_00
	.BYTE bank_internal_hiaddress_2c
	.BYTE bank_internal_hiaddress_04
	.BYTE bank_internal_hiaddress_1f

;04
	.BYTE bank_internal_hiaddress_19
	.BYTE bank_internal_hiaddress_1c
	.BYTE bank_internal_hiaddress_1d
	.BYTE bank_internal_hiaddress_1b
	.BYTE bank_internal_hiaddress_32
	.BYTE bank_internal_hiaddress_17
	.BYTE bank_internal_hiaddress_13
	.BYTE bank_internal_hiaddress_16
	.BYTE bank_internal_hiaddress_1c
	.BYTE bank_internal_hiaddress_1d
	.BYTE bank_internal_hiaddress_1f
	.BYTE bank_internal_hiaddress_15
	.BYTE bank_internal_hiaddress_24
	.BYTE bank_internal_hiaddress_32

;05
	.BYTE bank_internal_hiaddress_10
	.BYTE bank_internal_hiaddress_08
	.BYTE bank_internal_hiaddress_1f
	.BYTE bank_internal_hiaddress_0c

;06
	.BYTE bank_internal_hiaddress_18
	.BYTE bank_internal_hiaddress_32
	.BYTE bank_internal_hiaddress_1d
	.BYTE bank_internal_hiaddress_1f
	.BYTE bank_internal_hiaddress_2e
	.BYTE bank_internal_hiaddress_16
	.BYTE bank_internal_hiaddress_14
	.BYTE bank_internal_hiaddress_2c

@tile_table_loop_length:
@tile_table_length_00:
	.BYTE $10, $10

@tile_table_length_01:
	.BYTE $10, $10

@tile_table_length_02:
	.BYTE $08, $08, $10

@tile_table_length_03:
	.BYTE $0E, $02, $04, $02, $04, $06

@tile_table_length_04:
	.BYTE $02, $01, $01, $01, $02, $01, $01, $02
	.BYTE $01, $01, $01, $02, $0C, $02

@tile_table_length_05:
	.BYTE $10, $03, $01, $0C

@tile_table_length_06:
	.BYTE $08, $01, $01, $01, $01, $01, $01, $02
@tile_table_length_end:
