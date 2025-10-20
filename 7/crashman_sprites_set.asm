;screen sprites index
	.BYTE 2 * $12
	.BYTE 2 * $12
	.BYTE 1 * $12
	.BYTE 2 * $12
	.BYTE 2 * $12
	.BYTE 2 * $12
	.BYTE 3 * $12
	.BYTE 3 * $12
	.BYTE 1 * $12
	.BYTE 1 * $12
	.BYTE 0 * $12
	.BYTE 0 * $12
	.BYTE 0 * $12
	.BYTE 4 * $12
	.BYTE 5 * $12
	.BYTE 5 * $12
	.BYTE 6 * $12
	.BYTE 6 * $12

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF

;sprites set
;0
	.BYTE bank_internal_hiaddress_18, bank_03
	.BYTE bank_internal_hiaddress_19, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_rose,  pale_gray
	.BYTE black, light_azure, pale_gray

;1
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_12, bank_02
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, white_orange, pale_gray
	.BYTE black, white_orange, pale_gray

;2
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_1c, bank_01
	.BYTE bank_internal_hiaddress_15, bank_03
	.BYTE bank_internal_hiaddress_13, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_rose,  pale_orange

;3
	.BYTE bank_internal_hiaddress_15, bank_02
	.BYTE bank_internal_hiaddress_16, bank_02
	.BYTE bank_internal_hiaddress_14, bank_02
	.BYTE bank_internal_hiaddress_1e, bank_03
	.BYTE bank_internal_hiaddress_1b, bank_02
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_red,   white_yellow

;4
	.BYTE bank_internal_hiaddress_18, bank_03
	.BYTE bank_internal_hiaddress_19, bank_03
	.BYTE bank_internal_hiaddress_1a, bank_03
	.BYTE bank_internal_hiaddress_1b, bank_03
	.BYTE bank_internal_hiaddress_1c, bank_03
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_red,   white_orange

;5
	.BYTE bank_internal_hiaddress_14, bank_01
	.BYTE bank_internal_hiaddress_15, bank_01
	.BYTE bank_internal_hiaddress_16, bank_01
	.BYTE bank_internal_hiaddress_17, bank_01
	.BYTE bank_internal_hiaddress_18, bank_01
	.BYTE bank_internal_hiaddress_1f, bank_03
	.BYTE black, light_azure, pale_gray
	.BYTE black, light_red,   white_orange

;6
	.BYTE bank_internal_hiaddress_2e, bank_05
	.BYTE bank_internal_hiaddress_2f, bank_05
	.BYTE bank_internal_hiaddress_30, bank_05
	.BYTE bank_internal_hiaddress_31, bank_05
	.BYTE bank_internal_hiaddress_32, bank_05
	.BYTE bank_internal_hiaddress_33, bank_05
	.BYTE black, pale_gray, pale_gray
	.BYTE black, pale_gray, light_red

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
