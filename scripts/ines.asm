db "NES", $1a, prg_rom_units, chr_rom_units

;rom_mirroring
	horizontal = 0
	vertical = 1
	four_screen = 8

;general
	yes = 1
	no = 0

;battery_backed
	IF battery_backed
		battery_backed = 2
	ENDIF

;trained
	IF trained
		trained = 8
	ENDIF

;flags_6, mapper_lsb, rom_mirroring_bits, battery_backed_bits, trained_bits
	db (mapper%16<<4)+rom_mirroring+battery_backed+trained

;flags_7, mapper_msb, version = ines
	db mapper&240

;rarely_used
	db $00, $00, $00, $00, $00, $00, $00, $00
