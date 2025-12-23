;running right room, then scroll direction
;airman scroll set
scrolling_airman_wily2_00:
	.BYTE 9 | scroll_down

scrolling_airman_wily2_01:
	.BYTE 0 | scroll_down
	.BYTE 8 | scroll_right

scrolling_airman_wily2_02:
	.BYTE 0 | scroll_right
	.BYTE scroll_end

;wily2 scroll set
scrolling_airman_wily2_03:
	.BYTE 5 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down

scrolling_airman_wily2_04:
scrolling_airman_wily2_05:
	.BYTE 5 | scroll_down
	.BYTE 0 | scroll_down
	.BYTE 0 | scroll_down
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
	.BYTE $FF
	.BYTE $FF
