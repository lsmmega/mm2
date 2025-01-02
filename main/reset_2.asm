_reset:
	lda #%00010000 ;background pattern table right.
	sta ppu_ctrl
	lda #%00000110 ;show background/sprites in leftmost 8 pixels of screen.
	sta ppu_mask
	farjmp _resetbank0E