password_boss_clear_set:
	.BYTE no_boss_clear,        boss_heatman_clear,  no_boss_clear,        boss_quickman_clear, boss_woodman_clear
	.BYTE boss_flashman_clear,  no_boss_clear,       boss_bubbleman_clear, boss_quickman_clear, boss_crashman_clear
	.BYTE boss_bubbleman_clear, boss_airman_clear,   boss_woodman_clear,   no_boss_clear,       boss_heatman_clear
	.BYTE boss_metalman_clear,  boss_crashman_clear, boss_airman_clear,    boss_flashman_clear, boss_metalman_clear

password_boolean:
	.BYTE boss_clear_yes, boss_clear_yes, boss_clear_yes, boss_clear_yes, boss_clear_no
	.BYTE boss_clear_yes, boss_clear_yes, boss_clear_no,  boss_clear_no,  boss_clear_yes
	.BYTE boss_clear_yes, boss_clear_no,  boss_clear_yes, boss_clear_yes, boss_clear_no
	.BYTE boss_clear_no,  boss_clear_no,  boss_clear_yes, boss_clear_no,  boss_clear_yes
