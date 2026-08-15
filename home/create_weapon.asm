_create_weapon:
	LDA @object_id_table, Y
	STA aobject_pointer, X
	LDA aobject_flag
	AND #objects_right
	PHP
	ORA @object_flag_table, Y
	STA aobject_flag, X
	PLP
	BNE @right
	SEC
	LDA aobject_xcoord
	SBC @object_xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen
	SBC #$00
	STA aobject_screen, X
	JMP @left

@right:
	CLC
	LDA aobject_xcoord
	ADC @object_xcoord_table, Y
	STA aobject_xcoord, X
	LDA aobject_screen
	ADC #$00
	STA aobject_screen, X

@left:
	LDA aobject_ycoord
	STA aobject_ycoord, X
	LDA @object_xcoord_speed_fraction_table, Y
	STA aobject_xcoord_speed_fraction, X
	LDA @object_xcoord_speed_table, Y
	STA aobject_xcoord_speed, X
	LDA @object_ycoord_speed_fraction_table, Y
	STA aobject_ycoord_speed_fraction, X
	LDA @object_ycoord_speed_table, Y
	STA aobject_ycoord_speed, X
	LDA @object_collision_index_table, Y
	STA aweapon_collision_index, X
	LDA #$00
	STA aobject_frameset_upper_timer, X
	STA aobject_frameset_lower_timer, X
	STA aobject_temp, X
	STA aobject_hp, X
	RTS

@object_id_table:
	.BYTE $23, $30, $31, $32, $33, $34, $35, $36
	.BYTE $37, $38, $39, $3A, $2F, $3E, $3F, $74
	.BYTE $79, $7C

@object_flag_table:
	.BYTE can_collide_enemies | objects_exist
	.BYTE can_collide_enemies | enemies_cant_recoiled | objects_exist
	.BYTE can_collide_enemies | enemies_cant_recoiled | objects_exist
	.BYTE enemies_cant_recoiled | objects_exist
	.BYTE can_collide_enemies | enemies_cant_recoiled | objects_with_gravity | objects_exist
	.BYTE can_collide_enemies | enemies_cant_recoiled | objects_exist
	.BYTE can_collide_enemies | enemies_cant_recoiled | objects_exist
	.BYTE can_collide_enemies | objects_exist
	.BYTE enemies_cant_recoiled | objects_exist
	.BYTE enemies_cant_recoiled | objects_exist
	.BYTE enemies_cant_recoiled | objects_exist
	.BYTE enemies_cant_recoiled | objects_with_gravity | objects_exist
	.BYTE can_collide_enemies | objects_exist
	.BYTE enemies_cant_recoiled | objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist
	.BYTE objects_exist

@object_xcoord_table:
	.BYTE $10, $00, $10, $00, $10, $10, $10, $00
	.BYTE $00, $20, $20, $00, $00, $00, $00, $00
	.BYTE $00, $00

@object_xcoord_speed_fraction_table:
	.BYTE $00, $00, $00, $00, $00, $71, $00, $00
	.BYTE $0F, $00, $00, $27, $00, $00, $00, $00
	.BYTE $00, $00

@object_xcoord_speed_table:
	.BYTE $04, $00, $00, $00, $01, $04, $04, $00
	.BYTE $00, $00, $00, $01, $00, $00, $00, $00
	.BYTE $00, $00

@object_ycoord_speed_fraction_table:
	.BYTE $00, $00, $40, $00, $00, $AA, $00, $00
	.BYTE $00, $41, $00, $76, $00, $00, $00, $C0
	.BYTE $00, $00

@object_ycoord_speed_table:
	.BYTE $00, $00, $00, $00, $02, $02, $00, $00
	.BYTE $00, $00, $00, $03, $00, $00, $00, $FE
	.BYTE $00, $00

@object_collision_index_table:
	.BYTE $01, $01, $02, $04, $02, $01, $02, $02
	.BYTE $00, $00, $00, $00, $02, $00, $00, $00
	.BYTE $00, $00
