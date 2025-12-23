;flashman checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 8
	checkpointycoord 7

;wily6 checkpoint ycoord
	checkpointycoord 8
	checkpointycoord 8
	checkpointycoord 8

;flashman checkpoint mapset
	.BYTE (mapset_flashman_wily6_00 - mapset_flashman_wily6_00) / $40
	.BYTE (mapset_flashman_wily6_08 - mapset_flashman_wily6_00) / $40
	.BYTE (mapset_flashman_wily6_12 - mapset_flashman_wily6_00) / $40

;wily6 checkpoint mapset
	.BYTE (mapset_flashman_wily6_16 - mapset_flashman_wily6_00) / $40
	.BYTE (mapset_flashman_wily6_16 - mapset_flashman_wily6_00) / $40
	.BYTE (mapset_flashman_wily6_16 - mapset_flashman_wily6_00) / $40

;flashman checkpoint enemies index
	.BYTE enemy_objects_set_flashman_wily6_00 - enemy_objects_set_flashman_wily6_00
	.BYTE enemy_objects_set_flashman_wily6_01 - enemy_objects_set_flashman_wily6_00
	.BYTE enemy_objects_set_flashman_wily6_02 - enemy_objects_set_flashman_wily6_00

;wily6 checkpoint enemies index
	.BYTE enemy_objects_set_flashman_wily6_03 - enemy_objects_set_flashman_wily6_00
	.BYTE enemy_objects_set_flashman_wily6_04 - enemy_objects_set_flashman_wily6_00
	.BYTE enemy_objects_set_flashman_wily6_05 - enemy_objects_set_flashman_wily6_00

;flashman checkpoint items index
	.BYTE item_objects_set_flashman_wily6_00 - item_objects_set_flashman_wily6_00
	.BYTE item_objects_set_flashman_wily6_01 - item_objects_set_flashman_wily6_00
	.BYTE item_objects_set_flashman_wily6_02 - item_objects_set_flashman_wily6_00

;wily6 checkpoint items index
	.BYTE item_objects_set_flashman_wily6_03 - item_objects_set_flashman_wily6_00
	.BYTE item_objects_set_flashman_wily6_04 - item_objects_set_flashman_wily6_00
	.BYTE item_objects_set_flashman_wily6_05 - item_objects_set_flashman_wily6_00

;flashman checkpoint hileft mapset load
	.HIBYTES mapset_flashman_wily6_00 - $20
	.HIBYTES mapset_flashman_wily6_08 - $20
	.HIBYTES mapset_flashman_wily6_12 - $20

;wily6 checkpoint hileft mapset load
	.HIBYTES mapset_flashman_wily6_16 - $20
	.HIBYTES mapset_flashman_wily6_16 - $20
	.HIBYTES mapset_flashman_wily6_16 - $20

;flashman checkpoint loleft mapset load
	.LOBYTES mapset_flashman_wily6_00 - $20
	.LOBYTES mapset_flashman_wily6_08 - $20
	.LOBYTES mapset_flashman_wily6_12 - $20

;wily6 checkpoint loleft mapset load
	.LOBYTES mapset_flashman_wily6_16 - $20
	.LOBYTES mapset_flashman_wily6_16 - $20
	.LOBYTES mapset_flashman_wily6_16 - $20

;flashman checkpoint hiright mapset load
	.HIBYTES mapset_flashman_wily6_01 + $20
	.HIBYTES mapset_flashman_wily6_09 + $20
	.HIBYTES mapset_flashman_wily6_13 + $20

;wily6 checkpoint hiright mapset load
	.HIBYTES mapset_flashman_wily6_17 + $20
	.HIBYTES mapset_flashman_wily6_17 + $20
	.HIBYTES mapset_flashman_wily6_17 + $20

;flashman checkpoint loright mapset load
	.LOBYTES mapset_flashman_wily6_01 + $20
	.LOBYTES mapset_flashman_wily6_09 + $20
	.LOBYTES mapset_flashman_wily6_13 + $20

;wily6 checkpoint loright mapset load
	.LOBYTES mapset_flashman_wily6_17 + $20
	.LOBYTES mapset_flashman_wily6_17 + $20
	.LOBYTES mapset_flashman_wily6_17 + $20

;flashman checkpoint scrolling index
	.BYTE scrolling_flashman_wily6_00 - scrolling_flashman_wily6_00
	.BYTE scrolling_flashman_wily6_01 - scrolling_flashman_wily6_00
	.BYTE scrolling_flashman_wily6_02 - scrolling_flashman_wily6_00

;wily6 checkpoint scrolling index
	.BYTE scrolling_flashman_wily6_03 - scrolling_flashman_wily6_00
	.BYTE scrolling_flashman_wily6_04 - scrolling_flashman_wily6_00
	.BYTE scrolling_flashman_wily6_05 - scrolling_flashman_wily6_00

;flashman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $08
	.BYTE $12

;wily6 checkpoint start scrolling mapset
	.BYTE $16
	.BYTE $16
	.BYTE $16

;flashman checkpoint end scrolling mapset
	.BYTE $06
	.BYTE $08
	.BYTE $12

;wily6 checkpoint end scrolling mapset
	.BYTE $16
	.BYTE $16
	.BYTE $16

;end
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF
