;password stage clear set
	.BYTE no_stage_clear,        stage_heatman_clear,  no_stage_clear,        stage_quickman_clear, stage_woodman_clear
	.BYTE stage_flashman_clear,  no_stage_clear,       stage_bubbleman_clear, stage_quickman_clear, stage_crashman_clear
	.BYTE stage_bubbleman_clear, stage_airman_clear,   stage_woodman_clear,   no_stage_clear,       stage_heatman_clear
	.BYTE stage_metalman_clear,  stage_crashman_clear, stage_airman_clear,    stage_flashman_clear, stage_metalman_clear

;password boolean
	.BYTE stage_clear_yes, stage_clear_yes, stage_clear_yes, stage_clear_yes, stage_clear_no
	.BYTE stage_clear_yes, stage_clear_yes, stage_clear_no,  stage_clear_no,  stage_clear_yes
	.BYTE stage_clear_yes, stage_clear_no,  stage_clear_yes, stage_clear_yes, stage_clear_no
	.BYTE stage_clear_no,  stage_clear_no,  stage_clear_yes, stage_clear_no,  stage_clear_yes
