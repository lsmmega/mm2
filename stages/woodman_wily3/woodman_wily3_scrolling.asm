;running right room, then scroll direction
;woodman scroll set
scrolling_woodman_wily3_00:
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_right
	.BYTE 0 | scroll_right
	.BYTE 0 | scroll_right

scrolling_woodman_wily3_01:
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 2 | scroll_right

scrolling_woodman_wily3_02:
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily3 scroll set
scrolling_woodman_wily3_03:
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down

scrolling_woodman_wily3_04:
scrolling_woodman_wily3_05:
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
