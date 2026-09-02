_intro_screen_movement:
	LDX #$02

@loop_1:
	STX z:zsprites_pointer
	LDA aobject_pointer, X
	BEQ @next
	CLC
	LDA aobject_ycoord_fraction, X
	ADC aobject_ycoord_speed_fraction
	STA aobject_ycoord_fraction, X
	LDA aobject_ycoord, X
	ADC aobject_ycoord_speed
	STA aobject_ycoord, X
	LDA aobject_screen, X
	ADC #$00
	STA aobject_screen, X
	BNE @next
	LDA aobject_ycoord, X
	CMP #$E8
	BCC @next
	LDA #$00
	STA aobject_pointer, X

@next:
	LDX z:zsprites_pointer
	INX
	CPX #$0F
	BNE @loop_1
	LDA z:zopening_nametable
	BNE @bottom
	LDA z:zscreen_ycoord
	CMP #$A8
	BCC @top

@bottom:
	SEC
	LDA aobject_ycoord_fraction
	SBC aobject_ycoord_speed_fraction
	STA aobject_ycoord_fraction
	LDA aobject_ycoord
	SBC aobject_ycoord_speed
	STA aobject_ycoord
	BCS @yard_not_hidden
	LDA #$01
	JSR @check_object
	LDA #$00
	STA aobject_ycoord_fraction
	LDA #$48
	STA aobject_ycoord

@yard_not_hidden:
	SEC
	LDA aobject_ycoord_fraction + $01
	SBC aobject_ycoord_speed_fraction
	STA aobject_ycoord_fraction + $01
	LDA aobject_ycoord + $01
	SBC aobject_ycoord_speed
	STA aobject_ycoord + $01
	BCS @window_not_hidden
	LDA #$02
	JSR @check_object
	LDA #$00
	STA aobject_ycoord_fraction + $01
	LDA #$48
	STA aobject_ycoord + $01

@top:
@window_not_hidden:
	CLC
	LDA aobject_ycoord_speed_fraction
	ADC #$02
	STA aobject_ycoord_speed_fraction
	LDA aobject_ycoord_speed
	ADC #$00
	STA aobject_ycoord_speed
	CMP #$02
	BNE @not_max
	LDA #$00
	STA aobject_ycoord_speed_fraction

@not_max:
	CLC
	LDA aobject_ycoord + $10
	ADC aobject_ycoord_speed
	STA aobject_ycoord + $10
	LDA aobject_screen + $10
	ADC #$00
	STA aobject_screen + $10
	RTS

@check_object:
	STA z:z00
	LDX #$02

@loop_2:
	LDA aobject_pointer, X
	BEQ @none
	INX
	CPX #$0F
	BNE @loop_2
	RTS

@none:
	LDA z:z00
	STA aobject_pointer, X
	LDA #$FF
	STA aobject_screen, X
	LDA #$E0
	STA aobject_ycoord, X
	LDA #$00
	STA aobject_ycoord_fraction, X
	RTS
