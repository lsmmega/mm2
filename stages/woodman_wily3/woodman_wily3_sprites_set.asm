;screen sprites index
	.BYTE 3 * $12
	.BYTE 1 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 2 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 4 * $12
	.BYTE 0 * $12
	.BYTE 6 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 8 * $12
	.BYTE 9 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 0 * $12
	.BYTE 7 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_18, bank_03
	.BYTE bank_internal_hiaddress_19, bank_03
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1b, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_red,   white_orange

;1
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_red, pale_gray
	.BYTE black, light_red, pale_gray

;2
	.BYTE bank_internal_hiaddress_18, bank_01
	.BYTE bank_internal_hiaddress_19, bank_01
	.BYTE bank_internal_hiaddress_1a, bank_01
	.BYTE bank_internal_hiaddress_1b, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_red,   white_orange
	.BYTE black, light_azure, pale_azure

;3
	.BYTE bank_internal_hiaddress_18, bank_02
	.BYTE bank_internal_hiaddress_19, bank_02
	.BYTE bank_internal_hiaddress_1a, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_13, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_rose,    pale_gray
	.BYTE black, light_magenta, pale_magenta

;4
	.BYTE bank_internal_hiaddress_10, bank_01
	.BYTE bank_internal_hiaddress_11, bank_01
	.BYTE bank_internal_hiaddress_12, bank_01
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_11, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_red, white_orange
	.BYTE black, light_red, white_orange

;5
	.BYTE bank_internal_hiaddress_18, bank_04
	.BYTE bank_internal_hiaddress_19, bank_04
	.BYTE bank_internal_hiaddress_1a, bank_04
	.BYTE bank_internal_hiaddress_1b, bank_04
	.BYTE bank_internal_hiaddress_16, bank_03
	.BYTE bank_internal_hiaddress_16, bank_03
	.BYTE black, light_rose, white_yellow
	.BYTE black, light_blue, white_cyan

;6
	.BYTE bank_internal_hiaddress_2c, bank_06
	.BYTE bank_internal_hiaddress_2d, bank_06
	.BYTE bank_internal_hiaddress_2e, bank_06
	.BYTE bank_internal_hiaddress_2f, bank_06
	.BYTE bank_internal_hiaddress_30, bank_06
	.BYTE bank_internal_hiaddress_31, bank_06
	.BYTE black, pale_gray, white_chartreuse
	.BYTE black, pale_red,  light_orange

;7
	.BYTE bank_internal_hiaddress_2f, bank_07
	.BYTE bank_internal_hiaddress_30, bank_07
	.BYTE bank_internal_hiaddress_12, bank_02
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_31, bank_07
	.BYTE bank_internal_hiaddress_31, bank_06
	.BYTE black, white_orange, pale_gray
	.BYTE black, pale_orange,  white_orange

;8
	.BYTE bank_internal_hiaddress_1b, bank_03
	.BYTE bank_internal_hiaddress_1c, bank_03
	.BYTE bank_internal_hiaddress_1c, bank_03
	.BYTE bank_internal_hiaddress_1d, bank_03
	.BYTE bank_internal_hiaddress_1e, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_red,  white_orange
	.BYTE black, light_rose, white_yellow

;9
	.BYTE bank_internal_hiaddress_14, bank_04
	.BYTE bank_internal_hiaddress_15, bank_04
	.BYTE bank_internal_hiaddress_16, bank_04
	.BYTE bank_internal_hiaddress_17, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_gray, dark_gray
	.BYTE black, light_gray, dark_gray

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
	.BYTE $FF, $FF, $FF, $FF
