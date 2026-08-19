_enemies_to_megaman:
	LDY #objects_right
	SEC
	LDA z:zobject_in_process_screen
	SBC z:zobject_in_process_coord
	STA z:z00
	BCS @megaman_on_right
	LDA z:z00
	EOR #%11111111
	ADC #$01
	LDY #$00
	STA z:z00

@megaman_on_right:
	LDA aobject_flag, X
	AND #~objects_right
	STA aobject_flag, X
	TYA
	ORA aobject_flag, X
	STA aobject_flag, X
	SEC
	LDA aobject_ycoord
	SBC aobject_ycoord, X
	PHP
	BCS @megaman_on_bottom
	EOR #%11111111
	ADC #$01

@megaman_on_bottom:
	STA z:z01
	CMP z:z00
	BCS @ycoord_distance_larger_than_xcoord_distance
	LDA z:z09
	STA z:z0D
	STA aobject_xcoord_speed, X
	LDA z:z08
	STA z:z0C
	STA aobject_xcoord_speed_fraction, X
	LDA z:z00
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDA z:z0F
	STA z:z0D
	LDA z:z0E
	STA z:z0C
	LDA z:z01
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDX z:zsprites_pointer
	LDA z:z0F
	STA aobject_ycoord_speed, X
	LDA z:z0E
	STA aobject_ycoord_speed_fraction, X
	JMP @compare_ycoord

@ycoord_distance_larger_than_xcoord_distance:
	LDA z:z09
	STA z:z0D
	STA aobject_ycoord_speed, X
	LDA z:z08
	STA z:z0C
	STA aobject_ycoord_speed_fraction, X
	LDA z:z01
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDA z:z0F
	STA z:z0D
	LDA z:z0E
	STA z:z0C
	LDA z:z00
	STA z:z0B
	LDA #$00
	STA z:z0A
	JSR _divide_fraction
	LDX z:zsprites_pointer
	LDA z:z0F
	STA aobject_xcoord_speed, X
	LDA z:z0E
	STA aobject_xcoord_speed_fraction, X

@compare_ycoord:
	PLP
	BCC @megaman_on_top
	LDA aobject_ycoord_speed_fraction, X
	EOR #%11111111
	ADC #$01
	STA aobject_ycoord_speed_fraction, X
	LDA aobject_ycoord_speed, X
	EOR #%11111111
	ADC #$00
	STA aobject_ycoord_speed, X

@megaman_on_top:
	RTS
