wily_castle_map_oam:
	.BYTE $C0, $73, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $10
	.BYTE $88, $73, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $40
	.BYTE $A0, $73, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $60
	.BYTE $A8, $73, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $88
	.BYTE $70, $73, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $98
	.BYTE $8C, $75, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B4
	.BYTE $8C, $75, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $BC
	.BYTE $94, $76, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $B4
	.BYTE $94, $76, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $BC

wily_castle_map_routing_length:
	.BYTE wily_castle_map_routing_0 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_1 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_2 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_3 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_4 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_5 - wily_castle_map_routing
	.BYTE wily_castle_map_routing_6 - wily_castle_map_routing

wily_castle_map_routing:
wily_castle_map_routing_0:
	.BYTE $C0, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $18
	.BYTE $C0, $70, oam_palette_3 | oam_priority_foreground | x_flip | y_flip,       $20
	.BYTE $B8, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $B0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $A8, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $A0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $98, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $20
	.BYTE $98, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $28
	.BYTE $98, $70, oam_palette_3 | oam_priority_foreground | x_flip | y_flip,       $30
	.BYTE $90, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $88, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $30
	.BYTE $88, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $38

wily_castle_map_routing_1:
	.BYTE $88, $70, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $48
	.BYTE $90, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip,    $48
	.BYTE $90, $70, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $50
	.BYTE $98, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $50
	.BYTE $A0, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip,    $50
	.BYTE $A0, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $58

wily_castle_map_routing_2:
	.BYTE $A0, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $68
	.BYTE $A0, $70, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $70
	.BYTE $A8, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip,    $70
	.BYTE $A8, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $78
	.BYTE $A8, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $80

wily_castle_map_routing_3:
	.BYTE $A8, $70, oam_palette_3 | oam_priority_foreground | x_flip | y_flip,       $90
	.BYTE $A0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $90
	.BYTE $98, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $90
	.BYTE $90, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $90
	.BYTE $88, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $90
	.BYTE $80, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $90
	.BYTE $80, $70, oam_palette_3 | oam_priority_foreground | x_flip | y_flip,       $98
	.BYTE $78, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $98

wily_castle_map_routing_4:
	.BYTE $70, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $A0
	.BYTE $70, $70, oam_palette_3 | oam_priority_foreground | x_flip | no_y_flip,    $A8
	.BYTE $78, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $A8
	.BYTE $80, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $A8
	.BYTE $88, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $A8
	.BYTE $90, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip,    $A8
	.BYTE $90, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B0

wily_castle_map_routing_5:
	.BYTE $98, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $A8, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $B8, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $C0, $72, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $B8
	.BYTE $C8, $70, oam_palette_3 | oam_priority_foreground | no_x_flip | y_flip,    $B8
	.BYTE $C8, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $C0
	.BYTE $C8, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $C8
	.BYTE $C8, $71, oam_palette_3 | oam_priority_foreground | no_x_flip | no_y_flip, $D0
	.BYTE $C4, $75, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $C4, $75, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $E0
	.BYTE $CC, $76, oam_palette_2 | oam_priority_foreground | no_x_flip | no_y_flip, $D8
	.BYTE $CC, $76, oam_palette_2 | oam_priority_foreground | x_flip | no_y_flip,    $E0

wily_castle_map_routing_6:
