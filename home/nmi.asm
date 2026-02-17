nmi:
	PHA
	PHP
	PHX
	PHY
	LDA z:znmi_wait
	BEQ @yes
	JMP @no

@yes:
	LDA z:zppu_ctrl
	AND #~(all_nametable | nmi_enable)
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA z:zppu_mask
	AND #~(background_enable | sprite_enable)
	STA z:zppu_mask
	STA PPU_MASK
	LDA PPU_STATUS
	LDA #$00
	STA PPU_OAM_ADDR
	LDA #oam_hi_addr
	STA OAM_DMA
	LDA z:zscreen_update_flag
	BEQ @no_screen_update
	JSR _screen_update

@no_screen_update:
	JSR _palette_update
	LDA z:zobject_tiles_update_size
	BEQ @no_object_tiles_update
	JSR _object_tiles_update

@no_object_tiles_update:
	LDA z:zdraw_other_flag
	BEQ @no_other_draw
	JSR _draw_other

@no_other_draw:
	LDA PPU_STATUS
	LDA #$00
	STA z:z01
	LDA z:zscreen_xcoord
	STA z:z00
	LDA z:zmecha_dragon_xcoord
	BEQ @no_screen_xcoord_move
	SEC
	LDA z:z00
	SBC z:zmecha_dragon_xcoord
	STA z:z00
	LDA #$00
	SBC z:zmecha_dragon_screen
	AND #%00000001
	STA z:z01

@no_screen_xcoord_move:
	LDA z:z00
	STA PPU_SCROLL
	LDA z:zscreen_ycoord
	STA z:z00
	LDA z:zmecha_dragon_ycoord
	BEQ @no_screen_ycoord_move
	SEC
	LDA z:z00
	SBC z:zmecha_dragon_ycoord
	STA z:z00

@no_screen_ycoord_move:
	LDA z:z00
	STA PPU_SCROLL
	LDA z:zppu_mask
	ORA #background_leftmost_enable | sprites_leftmost_enable | background_enable | sprite_enable
	STA z:zppu_mask
	STA PPU_MASK
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	LDA z:zscreen_id
	EOR z:z01
	AND #%00000001
	ORA z:zppu_ctrl
	ORA z:zopening_nametable
	STA z:zppu_ctrl
	STA PPU_CTRL
	STA z:znmi_wait
	INC z:znmi_frame

@no:
	LDA z:zbankswitch_status
	BEQ @no_bankswitch_process
	INC z:zdelay_track_queue
	BNE @skip_track_queue

@no_bankswitch_process:
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
	BEQ @no_queue
	LDA atrack_queue - 1, X
	CMP #music_fade_out
	BNE @not_fade_out_queue
	LDY #$A0

@not_fade_out_queue:
	JSR _nmi_audio_track_queue
	DEC z:ztrack_queue_pointer
	BNE @loop

@no_queue:
	LDA z:zcurrent_bankswitch
	JSR _bankswitch

@skip_track_queue:
	LDA aobject_xcoord_fraction
	EOR z:zrandom
	ADC z:znmi_frame
	LSR
	STA z:zrandom
	PLY
	PLX
	PLP
	PLA
	RTI
