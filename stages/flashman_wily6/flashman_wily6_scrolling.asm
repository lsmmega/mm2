;running right room, then scroll direction
;flashman scroll set
	.BYTE 6 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 4 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily6 scroll set
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 5 | scroll_right
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
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
	.BYTE $FF
