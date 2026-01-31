_nmi_audio_processing:
	JMP _audio_processing

_nmi_audio_track_queue:
.INCBIN "audio/engine_0.bin"

_audio_processing:
.INCBIN "audio/engine_1.bin"

base_note_table:
	.WORD nC_0
	.WORD nDb0
	.WORD nD_0
	.WORD nEb0
	.WORD nE_0
	.WORD nF_0
	.WORD nGb0
	.WORD nG_0
	.WORD nAb0
	.WORD nA_0
	.WORD nBb0
	.WORD nB_0
	.WORD nC_1
	.WORD nDb1
	.WORD nD_1
	.WORD nEb1
	.WORD nE_1
	.WORD nF_1
	.WORD nGb1
	.WORD nG_1
	.WORD nAb1
	.WORD nA_1
	.WORD nBb1
	.WORD nB_1
	.WORD nC_2
	.WORD nDb2
	.WORD nD_2
	.WORD nEb2
	.WORD nE_2
	.WORD nF_2
	.WORD nGb2
	.WORD nG_2
	.WORD nAb2
	.WORD nA_2
	.WORD nBb2
	.WORD nB_2
	.WORD nC_3
	.WORD nDb3
	.WORD nD_3
	.WORD nEb3
	.WORD nE_3
	.WORD nF_3
	.WORD nGb3
	.WORD nG_3
	.WORD nAb3
	.WORD nA_3
	.WORD nBb3
	.WORD nB_3
	.WORD nC_4
	.WORD nDb4
	.WORD nD_4
	.WORD nEb4
	.WORD nE_4
	.WORD nF_4
	.WORD nGb4
	.WORD nG_4
	.WORD nAb4
	.WORD nA_4
	.WORD nBb4
	.WORD nB_4
	.WORD nC_5
	.WORD nDb5
	.WORD nD_5
	.WORD nEb5
	.WORD nE_5
	.WORD nF_5
	.WORD nGb5
	.WORD nG_5
	.WORD nAb5
	.WORD nA_5
	.WORD nBb5
	.WORD nB_5
	.WORD nC_6
	.WORD nDb6
	.WORD nD_6
	.WORD nEb6
	.WORD nE_6
	.WORD nF_6
	.WORD nGb6
	.WORD nG_6
	.WORD nAb6
	.WORD nA_6
	.WORD nBb6
	.WORD nB_6
	.WORD nC_7
	.WORD nDb7
	.WORD nD_7
	.WORD nEb7
	.WORD nE_7
	.WORD nF_7
	.WORD nGb7
	.WORD nG_7
	.WORD nAb7
	.WORD nA_7
	.WORD nBb7
	.WORD nB_7

;unused
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF
