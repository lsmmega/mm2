;screen sprites index
	.BYTE 0 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 2 * $12
	.BYTE 1 * $12
	.BYTE 4 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 6 * $12
	.BYTE 7 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_10, bank_02
	.BYTE bank_internal_hiaddress_10, bank_02
	.BYTE bank_internal_hiaddress_10, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_rose, white_rose
	.BYTE black, light_rose, white_yellow

;1
	.BYTE bank_internal_hiaddress_10, bank_04
	.BYTE bank_internal_hiaddress_11, bank_04
	.BYTE bank_internal_hiaddress_12, bank_04
	.BYTE bank_internal_hiaddress_1e, bank_04
	.BYTE bank_internal_hiaddress_13, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_cyan
	.BYTE black, light_rose,  white_orange

;2
	.BYTE bank_internal_hiaddress_11, bank_03
	.BYTE bank_internal_hiaddress_12, bank_03
	.BYTE bank_internal_hiaddress_13, bank_03
	.BYTE bank_internal_hiaddress_14, bank_03
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_red,     pale_gray
	.BYTE black, light_magenta, pale_magenta

;3
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black,       light_azure,  pale_gray
	.BYTE pale_orange, white_orange, dark_orange

;4
	.BYTE bank_internal_hiaddress_10, bank_07
	.BYTE bank_internal_hiaddress_11, bank_07
	.BYTE bank_internal_hiaddress_12, bank_07
	.BYTE bank_internal_hiaddress_13, bank_07
	.BYTE bank_internal_hiaddress_14, bank_07
	.BYTE bank_internal_hiaddress_15, bank_07
	.BYTE black, pale_gray,    white_yellow
	.BYTE black, white_yellow, light_rose

;5
	.BYTE bank_internal_hiaddress_10, bank_02
	.BYTE bank_internal_hiaddress_11, bank_02
	.BYTE bank_internal_hiaddress_12, bank_02
	.BYTE bank_internal_hiaddress_1e, bank_04
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_16, bank_03
	.BYTE black, light_rose,  white_orange
	.BYTE black, light_azure, pale_cyan

;6
	.BYTE bank_internal_hiaddress_2a, bank_04
	.BYTE bank_internal_hiaddress_2b, bank_04
	.BYTE bank_internal_hiaddress_2c, bank_04
	.BYTE bank_internal_hiaddress_2d, bank_04
	.BYTE bank_internal_hiaddress_2e, bank_04
	.BYTE bank_internal_hiaddress_2f, bank_04
	.BYTE pale_gray,        pale_blue,       white_blue
	.BYTE light_chartreuse, dark_chartreuse, white_azure

;7
	.BYTE bank_internal_hiaddress_14, bank_05
	.BYTE bank_internal_hiaddress_15, bank_05
	.BYTE bank_internal_hiaddress_16, bank_05
	.BYTE bank_internal_hiaddress_14, bank_06
	.BYTE bank_internal_hiaddress_15, bank_06
	.BYTE bank_internal_hiaddress_15, bank_04
	.BYTE black, black, black
	.BYTE black, black, black

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
