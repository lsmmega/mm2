;woodman checkpoint ycoord
	checkpointycoord 11
	checkpointycoord 5
	checkpointycoord 7

;wily3 checkpoint ycoord
	checkpointycoord 9
	checkpointycoord 8
	checkpointycoord 8

;woodman checkpoint mapset
	.BYTE (mapset_woodman_wily3_00 - mapset_woodman_wily3_00) / $40
	.BYTE (mapset_woodman_wily3_09 - mapset_woodman_wily3_00) / $40
	.BYTE (mapset_woodman_wily3_16 - mapset_woodman_wily3_00) / $40

;wily3 checkpoint mapset
	.BYTE (mapset_woodman_wily3_18 - mapset_woodman_wily3_00) / $40
	.BYTE (mapset_woodman_wily3_22 - mapset_woodman_wily3_00) / $40
	.BYTE (mapset_woodman_wily3_22 - mapset_woodman_wily3_00) / $40

;woodman checkpoint enemies index
	.BYTE enemy_objects_set_woodman_wily3_00 - enemy_objects_set_woodman_wily3_00
	.BYTE enemy_objects_set_woodman_wily3_01 - enemy_objects_set_woodman_wily3_00
	.BYTE enemy_objects_set_woodman_wily3_02 - enemy_objects_set_woodman_wily3_00

;wily3 checkpoint enemies index
	.BYTE enemy_objects_set_woodman_wily3_03 - enemy_objects_set_woodman_wily3_00
	.BYTE enemy_objects_set_woodman_wily3_04 - enemy_objects_set_woodman_wily3_00
	.BYTE enemy_objects_set_woodman_wily3_05 - enemy_objects_set_woodman_wily3_00

;woodman checkpoint items index
	.BYTE item_objects_set_woodman_wily3_00 - item_objects_set_woodman_wily3_00
	.BYTE item_objects_set_woodman_wily3_01 - item_objects_set_woodman_wily3_00
	.BYTE item_objects_set_woodman_wily3_02 - item_objects_set_woodman_wily3_00

;wily3 checkpoint items index
	.BYTE item_objects_set_woodman_wily3_03 - item_objects_set_woodman_wily3_00
	.BYTE item_objects_set_woodman_wily3_04 - item_objects_set_woodman_wily3_00
	.BYTE item_objects_set_woodman_wily3_05 - item_objects_set_woodman_wily3_00

;woodman checkpoint hileft mapset load
	.HIBYTES mapset_woodman_wily3_00 - $20
	.HIBYTES mapset_woodman_wily3_09 - $20
	.HIBYTES mapset_woodman_wily3_16 - $20

;wily3 checkpoint hileft mapset load
	.HIBYTES mapset_woodman_wily3_18 - $20
	.HIBYTES mapset_woodman_wily3_22 - $20
	.HIBYTES mapset_woodman_wily3_22 - $20

;woodman checkpoint loleft mapset load
	.LOBYTES mapset_woodman_wily3_00 - $20
	.LOBYTES mapset_woodman_wily3_09 - $20
	.LOBYTES mapset_woodman_wily3_16 - $20

;wily3 checkpoint loleft mapset load
	.LOBYTES mapset_woodman_wily3_18 - $20
	.LOBYTES mapset_woodman_wily3_22 - $20
	.LOBYTES mapset_woodman_wily3_22 - $20

;woodman checkpoint hiright mapset load
	.HIBYTES mapset_woodman_wily3_01 + $20
	.HIBYTES mapset_woodman_wily3_0a + $20
	.HIBYTES mapset_woodman_wily3_17 + $20

;wily3 checkpoint hiright mapset load
	.HIBYTES mapset_woodman_wily3_19 + $20
	.HIBYTES mapset_woodman_wily3_23 + $20
	.HIBYTES mapset_woodman_wily3_23 + $20

;woodman checkpoint loright mapset load
	.LOBYTES mapset_woodman_wily3_01 + $20
	.LOBYTES mapset_woodman_wily3_0a + $20
	.LOBYTES mapset_woodman_wily3_17 + $20

;wily3 checkpoint loright mapset load
	.LOBYTES mapset_woodman_wily3_19 + $20
	.LOBYTES mapset_woodman_wily3_23 + $20
	.LOBYTES mapset_woodman_wily3_23 + $20

;woodman checkpoint scrolling index
	.BYTE scrolling_woodman_wily3_00 - scrolling_woodman_wily3_00
	.BYTE scrolling_woodman_wily3_01 - scrolling_woodman_wily3_00
	.BYTE scrolling_woodman_wily3_02 - scrolling_woodman_wily3_00

;wily3 checkpoint scrolling index
	.BYTE scrolling_woodman_wily3_03 - scrolling_woodman_wily3_00
	.BYTE scrolling_woodman_wily3_04 - scrolling_woodman_wily3_00
	.BYTE scrolling_woodman_wily3_05 - scrolling_woodman_wily3_00

;woodman checkpoint start scrolling mapset, see `stages_name`_scrolling.asm
	.BYTE $00
	.BYTE $09
	.BYTE $16

;wily3 checkpoint start scrolling mapset
	.BYTE $18
	.BYTE $22
	.BYTE $22

;woodman checkpoint end scrolling mapset
	.BYTE $04
	.BYTE $09
	.BYTE $16

;wily3 checkpoint end scrolling mapset
	.BYTE $18
	.BYTE $22
	.BYTE $22

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
