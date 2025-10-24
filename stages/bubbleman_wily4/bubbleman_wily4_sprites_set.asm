;screen sprites index
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 2 * $12
	.BYTE 0 * $12
	.BYTE 1 * $12
	.BYTE 3 * $12
	.BYTE 0 * $12
	.BYTE 4 * $12
	.BYTE 4 * $12
	.BYTE 1 * $12
	.BYTE 2 * $12
	.BYTE 4 * $12
	.BYTE 1 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 6 * $12
	.BYTE 7 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_1b, bank_02
	.BYTE bank_internal_hiaddress_1c, bank_02
	.BYTE bank_internal_hiaddress_1d, bank_02
	.BYTE bank_internal_hiaddress_1d, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_chartreuse, pale_gray
	.BYTE black, light_rose,       pale_gray

;1
	.BYTE bank_internal_hiaddress_1b, bank_03
	.BYTE bank_internal_hiaddress_1c, bank_03
	.BYTE bank_internal_hiaddress_1c, bank_03
	.BYTE bank_internal_hiaddress_1d, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_red,  white_orange
	.BYTE black, light_rose, white_yellow

;2
	.BYTE bank_internal_hiaddress_1e, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_02
	.BYTE bank_internal_hiaddress_17, bank_02
	.BYTE bank_internal_hiaddress_1c, bank_04
	.BYTE bank_internal_hiaddress_1d, bank_04
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_rose,  white_yellow

;3
	.BYTE bank_internal_hiaddress_18, bank_07
	.BYTE bank_internal_hiaddress_19, bank_07
	.BYTE bank_internal_hiaddress_1a, bank_07
	.BYTE bank_internal_hiaddress_1b, bank_07
	.BYTE bank_internal_hiaddress_1c, bank_07
	.BYTE bank_internal_hiaddress_1d, bank_07
	.BYTE black, pale_gray, light_chartreuse
	.BYTE black, pale_gray, light_chartreuse

;4
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_12, bank_02
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_orange, pale_gray
	.BYTE black, white_orange, pale_gray

;5
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_rose,  pale_orange

;6
	.BYTE bank_internal_hiaddress_11, bank_03
	.BYTE bank_internal_hiaddress_12, bank_03
	.BYTE bank_internal_hiaddress_13, bank_03
	.BYTE bank_internal_hiaddress_14, bank_03
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_red,     pale_gray
	.BYTE black, light_magenta, pale_magenta

;7
	.BYTE bank_internal_hiaddress_17, bank_06
	.BYTE bank_internal_hiaddress_1c, bank_02
	.BYTE bank_internal_hiaddress_1d, bank_02
	.BYTE bank_internal_hiaddress_1d, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_02
	.BYTE bank_internal_hiaddress_17, bank_06
	.BYTE white_rose, light_azure, white_cyan
	.BYTE black,      pale_gray,   white_spring

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
