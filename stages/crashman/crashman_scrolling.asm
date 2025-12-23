;running right room, then scroll direction
;crashman scroll set
scrolling_crashman_00:
scrolling_crashman_03:
scrolling_crashman_04:
scrolling_crashman_05:
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 1 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up

scrolling_crashman_01:
	.BYTE 1 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 1 | scroll_right

scrolling_crashman_02:
	.BYTE 0 | scroll_right
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
