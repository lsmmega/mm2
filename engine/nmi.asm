_enable_nmi:
	LDA z:zppu_mask
	ORA #background_enable | sprite_enable
	STA z:zppu_mask
	LDA z:zppu_ctrl
	ORA #nmi_enable
	STA z:zppu_ctrl
	STA PPU_CTRL
	RTS

_disable_nmi:
	LDA #background_table_right
	STA z:zppu_ctrl
	STA PPU_CTRL
	LDA #background_leftmost_enable | sprites_leftmost_enable
	STA z:zppu_mask
	STA PPU_MASK
	RTS
