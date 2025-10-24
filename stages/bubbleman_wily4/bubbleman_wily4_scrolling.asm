;running right room, then scroll direction
;bubbleman scroll set
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 6 | scroll_right
	.BYTE 4 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily4 scroll set
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 1 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 3 | scroll_right
	.BYTE scroll_end
	.BYTE scroll_end
	.BYTE scroll_end

;end
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
