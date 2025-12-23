;running right room, then scroll direction
;flashman scroll set
scrolling_flashman_wily6_00:
	.BYTE 6 | scroll_down
	.BYTE 0 | scroll_down

scrolling_flashman_wily6_01:
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 4 | scroll_right

scrolling_flashman_wily6_02:
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily6 scroll set
scrolling_flashman_wily6_03:
scrolling_flashman_wily6_04:
scrolling_flashman_wily6_05:
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
