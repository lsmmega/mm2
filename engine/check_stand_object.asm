_check_stand_object:
	SEC
	LDA aobject_xcoord
	SBC z:zscreen_xcoord
	STA z:z08
	CLC
	LDA z:zobject_in_process_coord
	ADC #$0C
	STA z:z09
	LDA z:zcurrent_weapon
	CMP #$09
	BCC @not_item
	LDX #$02

@loop_1:
	LDA aweapon_stand_xcoord, X
	BNE @exist_1

@mainloop:
	DEX
	BPL @loop_1

@not_item:
	LDX #$0F

@loop_2:
	LDA aobject_stand_xcoord, X
	BNE @exist_2

@skip_1:
	DEX
	BPL @loop_2
	CLC
	RTS

@exist_2:
	LDA z:zout_of_screen
	BNE @skip_1
	SEC
	LDA aobject_xcoord + $10, X
	SBC z:zscreen_xcoord
	STA z:z0C
	SEC
	SBC z:z08
	BCS @on_right_1
	EOR #%11111111
	ADC #$01

@on_right_1:
	CMP aobject_stand_xcoord, X
	BCS @skip_1
	LDA aobject_ycoord + $10, X
	CMP z:z09
	BCC @skip_1
	LDA aobject_stand_ycoord, X
	CMP z:z0A
	BEQ @center_1
	BCS @skip_1

@center_1:
	LDA aobject_pointer + $10, X
	CMP #objects_drop_platform
	BNE @not_drop_platform
	INC aobject_temp + $10, X

@not_drop_platform:
	SEC
	LDA aobject_stand_ycoord, X
	SBC #$0C
	STA aobject_ycoord
	LDA z:zout_of_screen
	SBC #$00
	STA z:zout_of_screen
	LDA #$00
	STA aobject_ycoord_fraction
	STA aobject_ycoord_speed_fraction
	LDA #$FF
	STA aobject_ycoord_speed
	LDA #$01
	STA z:zslip_wind_flags
	LDA aobject_flag + $10, X
	AND #objects_right
	STA z:zwind_toward
	LDA aobject_xcoord_speed_fraction + $10, X
	STA z:zwind_conveyor_speed_fraction
	LDA aobject_xcoord_speed + $10, X
	STA z:zwind_conveyor_speed
	SEC
	RTS

@exist_1:
	LDA z:zout_of_screen
	BNE @skip_2
	SEC
	LDA aobject_xcoord + $02, X
	SBC z:zscreen_xcoord
	STA z:z0C
	SEC
	SBC z:z08
	BCS @on_right_2
	EOR #%11111111
	ADC #$01

@on_right_2:
	CMP aweapon_stand_xcoord, X
	BCS @skip_2
	LDA aobject_ycoord + $02, X
	CMP z:z09
	BCC @skip_2
	LDA aweapon_stand_ycoord, X
	CMP z:z0A
	BEQ @center_2
	BCS @skip_2

@center_2:
	LDA aobject_pointer + $02, X
	CMP #$3A
	BNE @not_item_3
	LDA aobject_temp + $02, X
	ORA #objects_exist
	STA aobject_temp + $02, X

@not_item_3:
	SEC
	LDA aweapon_stand_ycoord, X
	SBC #$0C
	STA aobject_ycoord
	LDA z:zout_of_screen
	SBC #$00
	STA z:zout_of_screen
	LDA #$00
	STA aobject_ycoord_fraction
	STA aobject_ycoord_speed_fraction
	LDA #$FF
	STA aobject_ycoord_speed
	LDA #$01
	STA z:zslip_wind_flags
	LDA aobject_flag + $02, X
	AND #objects_right
	STA z:zwind_toward
	LDA aobject_xcoord_speed_fraction + $02, X
	STA z:zwind_conveyor_speed_fraction
	LDA aobject_xcoord_speed + $02, X
	STA z:zwind_conveyor_speed
	SEC
	RTS

@skip_2:
	JMP @mainloop
