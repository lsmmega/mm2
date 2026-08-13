boss_clear_flag:
	.BYTE boss_heatman_clear
	.BYTE boss_airman_clear
	.BYTE boss_woodman_clear
	.BYTE boss_bubbleman_clear
	.BYTE boss_quickman_clear
	.BYTE boss_flashman_clear
	.BYTE boss_metalman_clear
	.BYTE boss_crashman_clear

got_item_flag:
	.BYTE got_item_1  ;heatman
	.BYTE got_item_2  ;airman
	.BYTE no_item_got ;woodman
	.BYTE no_item_got ;bubbleman
	.BYTE no_item_got ;quickman
	.BYTE got_item_3  ;flashman
	.BYTE no_item_got ;metalman
	.BYTE no_item_got ;crashman
