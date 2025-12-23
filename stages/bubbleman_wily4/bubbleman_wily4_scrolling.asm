;running right room, then scroll direction
;bubbleman scroll set
scrolling_bubbleman_wily4_00:
	.BYTE 4 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down

scrolling_bubbleman_wily4_01:
	.BYTE 6 | scroll_right
	.BYTE 4 | scroll_right

scrolling_bubbleman_wily4_02:
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily4 scroll set
scrolling_bubbleman_wily4_03:
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up

scrolling_bubbleman_wily4_04:
scrolling_bubbleman_wily4_05:
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
