;screen sprites index
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 0 * $12
	.BYTE 0 * $12
	.BYTE 2 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 0 * $12
	.BYTE 3 * $12
	.BYTE 6 * $12
	.BYTE 6 * $12
	.BYTE 6 * $12
	.BYTE 6 * $12
	.BYTE 4 * $12
	.BYTE 5 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_18, bank_03
	.BYTE bank_internal_hiaddress_19, bank_03
	.BYTE bank_internal_hiaddress_12, bank_04
	.BYTE bank_internal_hiaddress_1e, bank_03
	.BYTE bank_internal_hiaddress_13, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_rose,  white_yellow

;1
	.BYTE bank_internal_hiaddress_11, bank_03
	.BYTE bank_internal_hiaddress_12, bank_03
	.BYTE bank_internal_hiaddress_13, bank_03
	.BYTE bank_internal_hiaddress_14, bank_03
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_red,     pale_gray
	.BYTE black, light_magenta, pale_magenta

;2
	.BYTE bank_internal_hiaddress_18, bank_03
	.BYTE bank_internal_hiaddress_19, bank_03
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1e, bank_04
	.BYTE bank_internal_hiaddress_10, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_rose,  white_orange
	.BYTE black, light_azure, pale_cyan

;3
	.BYTE bank_internal_hiaddress_1e, bank_06
	.BYTE bank_internal_hiaddress_1f, bank_06
	.BYTE bank_internal_hiaddress_16, bank_07
	.BYTE bank_internal_hiaddress_17, bank_07
	.BYTE bank_internal_hiaddress_1e, bank_07
	.BYTE bank_internal_hiaddress_1f, bank_07
	.BYTE pale_gray, pale_gray, white_yellow
	.BYTE black,     pale_gray, light_blue

;4
	.BYTE bank_internal_hiaddress_1c, bank_00
	.BYTE bank_internal_hiaddress_1d, bank_00
	.BYTE bank_internal_hiaddress_1e, bank_00
	.BYTE bank_internal_hiaddress_14, bank_06
	.BYTE bank_internal_hiaddress_15, bank_06
	.BYTE bank_internal_hiaddress_1f, bank_00
	.BYTE black, light_azure, white_cyan
	.BYTE black, black,       black

;5
	.BYTE bank_internal_hiaddress_3a, bank_08
	.BYTE bank_internal_hiaddress_3b, bank_08
	.BYTE bank_internal_hiaddress_15, bank_05
	.BYTE bank_internal_hiaddress_16, bank_05
	.BYTE bank_internal_hiaddress_15, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_00
	.BYTE black, white_cyan,  light_rose
	.BYTE black, pale_yellow, light_rose

;6
	.BYTE bank_internal_hiaddress_1d, bank_02
	.BYTE bank_internal_hiaddress_10, bank_03
	.BYTE bank_internal_hiaddress_15, bank_05
	.BYTE bank_internal_hiaddress_16, bank_05
	.BYTE bank_internal_hiaddress_15, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_00
	.BYTE dark_gray, dark_rose,   white_red
	.BYTE black,     pale_yellow, light_rose

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF
