;screen sprites index
	.BYTE 0 * $12
	.BYTE 2 * $12
	.BYTE 2 * $12
	.BYTE 1 * $12
	.BYTE 0 * $12
	.BYTE 0 * $12
	.BYTE 3 * $12
	.BYTE 5 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 0 * $12
	.BYTE 0 * $12
	.BYTE 4 * $12
	.BYTE 1 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_14, bank_01
	.BYTE bank_internal_hiaddress_15, bank_01
	.BYTE bank_internal_hiaddress_16, bank_01
	.BYTE bank_internal_hiaddress_17, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure,      pale_gray
	.BYTE black, white_chartreuse, pale_orange

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
	.BYTE bank_internal_hiaddress_14, bank_01
	.BYTE bank_internal_hiaddress_15, bank_01
	.BYTE bank_internal_hiaddress_16, bank_01
	.BYTE bank_internal_hiaddress_17, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, white_red,   pale_orange

;3
	.BYTE bank_internal_hiaddress_18, bank_06
	.BYTE bank_internal_hiaddress_19, bank_06
	.BYTE bank_internal_hiaddress_1a, bank_06
	.BYTE bank_internal_hiaddress_1b, bank_06
	.BYTE bank_internal_hiaddress_1c, bank_06
	.BYTE bank_internal_hiaddress_1d, bank_06
	.BYTE black, white_yellow, light_rose
	.BYTE black, white_yellow, light_rose

;4
	.BYTE bank_internal_hiaddress_2a, bank_07
	.BYTE bank_internal_hiaddress_2b, bank_07
	.BYTE bank_internal_hiaddress_2c, bank_07
	.BYTE bank_internal_hiaddress_2d, bank_07
	.BYTE bank_internal_hiaddress_2e, bank_07
	.BYTE bank_internal_hiaddress_16, bank_03
	.BYTE pale_gray,    light_rose,       white_yellow
	.BYTE white_orange, white_chartreuse, light_chartreuse

;5
	.BYTE bank_internal_hiaddress_10, bank_02
	.BYTE bank_internal_hiaddress_11, bank_02
	.BYTE bank_internal_hiaddress_12, bank_02
	.BYTE bank_internal_hiaddress_1e, bank_04
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_16, bank_03
	.BYTE black, white_orange, pale_gray
	.BYTE black, dark_gray,    white_gray

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
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF
