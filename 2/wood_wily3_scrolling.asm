;running right room, then scroll direction
;woodman scroll set
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily3 scroll set
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_right
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
