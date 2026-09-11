_boss_init:
	LDX z:zcurrent_boss
	LDA z:zscreen_id
	STA aobject_screen + $01
	LDA @object_flag_table, X
	STA aobject_flag + $01
	LDA @xcoord_table, X
	STA aobject_xcoord + $01
	LDA @ycoord_table, X
	STA aobject_ycoord + $01
	LDA @oam_table, X
	STA aobject_pointer + $01
	LDA @collision_xcoord_index_table, X
	STA aobject_collision_xcoord + $01
	LDA @xcoord_speed_fraction_table, X
	STA aobject_xcoord_speed_fraction + $01
	LDA @xcoord_speed_table, X
	STA aobject_xcoord_speed + $01
	LDA @ycoord_speed_fraction_table, X
	STA aobject_ycoord_speed_fraction + $01
	LDA @ycoord_speed_table, X
	STA aobject_ycoord_speed + $01
	LDA #$00
	STA aobject_ycoord_fraction + $01
	STA aobject_xcoord_fraction + $01
	STA aobject_frameset_lower_timer + $01
	STA aobject_frameset_upper_timer + $01
	STA aobject_temp + $01
	STA aobject_hp + $01
	STA aboss_invincibility_time
	STA aregular_boss_defeated_flag
	STA z:zboss_timer
	LDA #$01
	STA z:zboss_ai_pointer
	RTS

@object_flag_table:
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;heatman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;airman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;woodman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;bubbleman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;quickman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;flashman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;metalman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;crashman
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_can_recoiled | objects_exist ;mecha dragon
	.BYTE 0                                                                                       ;picopico kun
	.BYTE 0                                                                                       ;guts tank
	.BYTE 0                                                                                       ;boobeam trap
	.BYTE can_collide_megaman | can_collide_megaman_bullet | objects_exist                        ;wily machine 2
	.BYTE 0                                                                                       ;alien

@xcoord_table:
	.BYTE $C8 ;heatman
	.BYTE $C8 ;airman
	.BYTE $C8 ;woodman
	.BYTE $C8 ;bubbleman
	.BYTE $C8 ;quickman
	.BYTE $C8 ;flashman
	.BYTE $C8 ;metalman
	.BYTE $C8 ;crashman
	.BYTE $70 ;mecha dragon
	.BYTE $C8 ;picopico kun
	.BYTE $FF ;guts tank
	.BYTE $C8 ;boobeam trap
	.BYTE $78 ;wily machine 2
	.BYTE $B4 ;alien

@ycoord_table:
	.BYTE $28 ;heatman
	.BYTE $28 ;airman
	.BYTE $30 ;woodman
	.BYTE $28 ;bubbleman
	.BYTE $28 ;quickman
	.BYTE $28 ;flashman
	.BYTE $28 ;metalman
	.BYTE $28 ;crashman
	.BYTE $6B ;mecha dragon
	.BYTE $10 ;picopico kun
	.BYTE $4B ;guts tank
	.BYTE $10 ;boobeam trap
	.BYTE $77 ;wily machine 2
	.BYTE $7C ;alien

@oam_table:
	.BYTE $50 ;heatman
	.BYTE $66 ;airman
	.BYTE $6C ;woodman
	.BYTE $60 ;bubbleman
	.BYTE $54 ;quickman
	.BYTE $5A ;flashman
	.BYTE $63 ;metalman
	.BYTE $69 ;crashman
	.BYTE $70 ;mecha dragon
	.BYTE $50 ;picopico kun
	.BYTE $71 ;guts tank
	.BYTE $50 ;boobeam trap
	.BYTE $72 ;wily machine 2
	.BYTE $75 ;alien

@collision_xcoord_index_table:
	.BYTE $01 ;heatman
	.BYTE $09 ;airman
	.BYTE $09 ;woodman
	.BYTE $01 ;bubbleman
	.BYTE $01 ;quickman
	.BYTE $01 ;flashman
	.BYTE $01 ;metalman
	.BYTE $01 ;crashman
	.BYTE $0D ;mecha dragon
	.BYTE $01 ;picopico kun
	.BYTE $01 ;guts tank
	.BYTE $01 ;boobeam trap
	.BYTE $00 ;wily machine 2
	.BYTE $01 ;alien

@xcoord_speed_fraction_table:
	.BYTE $00 ;heatman
	.BYTE $00 ;airman
	.BYTE $00 ;woodman
	.BYTE $00 ;bubbleman
	.BYTE $00 ;quickman
	.BYTE $00 ;flashman
	.BYTE $00 ;metalman
	.BYTE $00 ;crashman
	.BYTE $00 ;mecha dragon
	.BYTE $00 ;picopico kun
	.BYTE $60 ;guts tank
	.BYTE $00 ;boobeam trap
	.BYTE $C4 ;wily machine 2
	.BYTE $00 ;alien

@xcoord_speed_table:
	.BYTE +0 ;heatman
	.BYTE +0 ;airman
	.BYTE +0 ;woodman
	.BYTE +0 ;bubbleman
	.BYTE +0 ;quickman
	.BYTE +0 ;flashman
	.BYTE +0 ;metalman
	.BYTE +0 ;crashman
	.BYTE +0 ;mecha dragon
	.BYTE +0 ;picopico kun
	.BYTE +0 ;guts tank
	.BYTE +0 ;boobeam trap
	.BYTE +0 ;wily machine 2
	.BYTE +0 ;alien

@ycoord_speed_fraction_table:
	.BYTE $00 ;heatman
	.BYTE $00 ;airman
	.BYTE $00 ;woodman
	.BYTE $00 ;bubbleman
	.BYTE $00 ;quickman
	.BYTE $00 ;flashman
	.BYTE $00 ;metalman
	.BYTE $00 ;crashman
	.BYTE $00 ;mecha dragon
	.BYTE $00 ;picopico kun
	.BYTE $00 ;guts tank
	.BYTE $00 ;boobeam trap
	.BYTE $00 ;wily machine 2
	.BYTE $00 ;alien

@ycoord_speed_table:
	.BYTE -8 ;heatman
	.BYTE -8 ;airman
	.BYTE -8 ;woodman
	.BYTE -8 ;bubbleman
	.BYTE -8 ;quickman
	.BYTE -8 ;flashman
	.BYTE -8 ;metalman
	.BYTE -8 ;crashman
	.BYTE +0 ;mecha dragon
	.BYTE +0 ;picopico kun
	.BYTE +0 ;guts tank
	.BYTE +0 ;boobeam trap
	.BYTE +0 ;wily machine 2
	.BYTE +0 ;alien
