;heatman checkpoint ycoord
	checkpointycoord 10
	checkpointycoord 11
	checkpointycoord 9

;wily1 checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 11
	checkpointycoord 11

;heatman checkpoint mapset
	.BYTE (mapset_heatman_wily1_00 - mapset_heatman_wily1_00) / $40
	.BYTE (mapset_heatman_wily1_09 - mapset_heatman_wily1_00) / $40
	.BYTE (mapset_heatman_wily1_16 - mapset_heatman_wily1_00) / $40

;wily1 checkpoint mapset
	.BYTE (mapset_heatman_wily1_18 - mapset_heatman_wily1_00) / $40
	.BYTE (mapset_heatman_wily1_21 - mapset_heatman_wily1_00) / $40
	.BYTE (mapset_heatman_wily1_21 - mapset_heatman_wily1_00) / $40

;heatman checkpoint enemies index
	.BYTE enemy_objects_set_heatman_wily1_00 - enemy_objects_set_heatman_wily1_00
	.BYTE enemy_objects_set_heatman_wily1_01 - enemy_objects_set_heatman_wily1_00
	.BYTE enemy_objects_set_heatman_wily1_02 - enemy_objects_set_heatman_wily1_00

;wily1 checkpoint enemies index
	.BYTE enemy_objects_set_heatman_wily1_03 - enemy_objects_set_heatman_wily1_00
	.BYTE enemy_objects_set_heatman_wily1_04 - enemy_objects_set_heatman_wily1_00
	.BYTE enemy_objects_set_heatman_wily1_05 - enemy_objects_set_heatman_wily1_00

;heatman checkpoint items index
	.BYTE item_objects_set_heatman_wily1_00 - item_objects_set_heatman_wily1_00
	.BYTE item_objects_set_heatman_wily1_01 - item_objects_set_heatman_wily1_00
	.BYTE item_objects_set_heatman_wily1_02 - item_objects_set_heatman_wily1_00

;wily1 checkpoint items index
	.BYTE item_objects_set_heatman_wily1_03 - item_objects_set_heatman_wily1_00
	.BYTE item_objects_set_heatman_wily1_04 - item_objects_set_heatman_wily1_00
	.BYTE item_objects_set_heatman_wily1_05 - item_objects_set_heatman_wily1_00

;heatman checkpoint hileft mapset load
	.HIBYTES mapset_heatman_wily1_00 - $20
	.HIBYTES mapset_heatman_wily1_09 - $20
	.HIBYTES mapset_heatman_wily1_16 - $20

;wily1 checkpoint hileft mapset load
	.HIBYTES mapset_heatman_wily1_18 - $20
	.HIBYTES mapset_heatman_wily1_21 - $20
	.HIBYTES mapset_heatman_wily1_21 - $20

;heatman checkpoint loleft mapset load
	.LOBYTES mapset_heatman_wily1_00 - $20
	.LOBYTES mapset_heatman_wily1_09 - $20
	.LOBYTES mapset_heatman_wily1_16 - $20

;wily1 checkpoint loleft mapset load
	.LOBYTES mapset_heatman_wily1_18 - $20
	.LOBYTES mapset_heatman_wily1_21 - $20
	.LOBYTES mapset_heatman_wily1_21 - $20

;heatman checkpoint hiright mapset load
	.HIBYTES mapset_heatman_wily1_01 + $20
	.HIBYTES mapset_heatman_wily1_0a + $20
	.HIBYTES mapset_heatman_wily1_16 + $20

;wily1 checkpoint hiright mapset load
	.HIBYTES mapset_heatman_wily1_19 + $20
	.HIBYTES mapset_heatman_wily1_22 + $20
	.HIBYTES mapset_heatman_wily1_22 + $20

;heatman checkpoint loright mapset load
	.LOBYTES mapset_heatman_wily1_01 + $20
	.LOBYTES mapset_heatman_wily1_0a + $20
	.LOBYTES mapset_heatman_wily1_16 + $20

;wily1 checkpoint loright mapset load
	.LOBYTES mapset_heatman_wily1_19 + $20
	.LOBYTES mapset_heatman_wily1_22 + $20
	.LOBYTES mapset_heatman_wily1_22 + $20

;heatman checkpoint scrolling index
	.BYTE scrolling_heatman_wily_00 - scrolling_heatman_wily_00
	.BYTE scrolling_heatman_wily_01 - scrolling_heatman_wily_00
	.BYTE scrolling_heatman_wily_02 - scrolling_heatman_wily_00

;wily1 checkpoint scrolling index
	.BYTE scrolling_heatman_wily_03 - scrolling_heatman_wily_00
	.BYTE scrolling_heatman_wily_04 - scrolling_heatman_wily_00
	.BYTE scrolling_heatman_wily_05 - scrolling_heatman_wily_00

;heatman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $09
	.BYTE $16

;wily1 checkpoint start scrolling mapset
	.BYTE $18
	.BYTE $21
	.BYTE $21

;heatman checkpoint end scrolling mapset
	.BYTE $07
	.BYTE $13
	.BYTE $16

;wily1 checkpoint end scrolling mapset
	.BYTE $20
	.BYTE $21
	.BYTE $21

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
