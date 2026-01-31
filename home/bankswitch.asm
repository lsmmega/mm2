_bankswitch:
	STA z:zcurrent_bankswitch
	STA z:zundo_bankswitch
	INC z:zbankswitch_status
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LDA #$00
	STA z:zbankswitch_status
	LDA z:zdelay_track_queue
	BNE @delay_track_queue
	RTS

@delay_track_queue:
	LDA #<.BANK (_nmi_audio_processing)
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	LSR
	STA mmc1_prg_bank
	JSR _nmi_audio_processing

@loop:
	LDX z:ztrack_queue_pointer
	BEQ @no_track_queue
	LDA atrack_queue - 1, X
	JSR _nmi_audio_track_queue
	DEC z:ztrack_queue_pointer
	BNE @loop

@no_track_queue:
	LDA #$00
	STA z:zdelay_track_queue
	LDA z:zundo_bankswitch
	JMP _bankswitch
