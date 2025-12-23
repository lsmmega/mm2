;running right room, then scroll direction
;heatman scroll set
scrolling_heatman_wily_00:
	.BYTE 7  | scroll_down
	.BYTE 0  | scroll_down

scrolling_heatman_wily_01:
	.BYTE 10 | scroll_down
	.BYTE 0  | scroll_down
	.BYTE 0  | scroll_right

scrolling_heatman_wily_02:
	.BYTE 0  | scroll_right
	.BYTE scroll_end

;wily1 scroll set
scrolling_heatman_wily_03:
	.BYTE 8 | scroll_up

scrolling_heatman_wily_04:
scrolling_heatman_wily_05:
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 0 | scroll_up
	.BYTE 4 | scroll_end
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
	.BYTE $FF
