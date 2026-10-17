_draw_right_mapset:
	SEC
	LDA aobject_xcoord
	SBC z:zscreen_xcoord
	CMP #$80
	BCS @on_right
	RTS

@on_right:
	CLC
	LDA z:zscreen_xcoord
	PHA
	ADC z:z00
	STA z:zscreen_xcoord
	LDA z:zscreen_id
	ADC #$00
	STA z:zscreen_id
	CMP z:zend_scrolling_mapset
	BNE @not_rightmost
	SEC
	LDA z:z00
	SBC z:zscreen_xcoord
	STA z:z00
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_xcoord_fraction

@not_rightmost:
	PLA
	AND #%00000011
	ADC z:z00
	LSR
	LSR
	STA z:z01
	BEQ @skip
	CLC
	LDA z:zright_mapset_pointer
	STA z:z08
	ADC z:z01
	STA z:zright_mapset_pointer
	LDA z:zright_mapset_pointer + 1
	STA z:z09
	ADC #$00
	STA z:zright_mapset_pointer + 1
	CLC
	LDA z:zleft_mapset_pointer
	ADC z:z01
	STA z:zleft_mapset_pointer
	LDA z:zleft_mapset_pointer + 1
	ADC #$00
	STA z:zleft_mapset_pointer + 1

@loop:
	JSR _scrolling_horizontal
	INC z:zcurrent_handle_32x32_attribute
	LDA z:zcurrent_handle_32x32_attribute
	AND #%00111111
	STA z:zcurrent_handle_32x32_attribute
	CLC
	LDA z:z08
	ADC #$01
	STA z:z08
	LDA z:z09
	ADC #$00
	STA z:z09
	DEC z:z01
	BNE @loop

@skip:
	RTS

_draw_left_mapset:
	SEC
	LDA aobject_xcoord
	SBC z:zscreen_xcoord
	CMP #$80
	BCC @on_left
	RTS

@on_left:
	SEC
	LDA z:zscreen_xcoord
	PHA
	SBC z:z00
	STA z:zscreen_xcoord
	LDA z:zscreen_id
	SBC #$00
	STA z:zscreen_id
	LDX z:zstart_scrolling_mapset
	DEX
	CPX z:zscreen_id
	BNE @not_leftmost
	INC z:zscreen_id
	CLC
	LDA z:z00
	ADC z:zscreen_xcoord
	STA z:z00
	LDA #$00
	STA z:zscreen_xcoord
	STA z:zscreen_xcoord_fraction

@not_leftmost:
	CLC
	PLA
	EOR #%11111111
	AND #%00000011
	ADC z:z00
	LSR
	LSR
	STA z:z01
	BEQ @skip
	SEC
	LDA z:zleft_mapset_pointer
	STA z:z08
	SBC z:z01
	STA z:zleft_mapset_pointer
	LDA z:zleft_mapset_pointer + 1
	STA z:z09
	SBC #$00
	STA z:zleft_mapset_pointer + 1
	SEC
	LDA z:zright_mapset_pointer
	SBC z:z01
	STA z:zright_mapset_pointer
	LDA z:zright_mapset_pointer + 1
	SBC #$00
	STA z:zright_mapset_pointer + 1

@loop:
	JSR _scrolling_horizontal
	DEC z:zcurrent_handle_32x32_attribute
	LDA z:zcurrent_handle_32x32_attribute
	AND #%00111111
	STA z:zcurrent_handle_32x32_attribute
	SEC
	LDA z:z08
	SBC #$01
	STA z:z08
	LDA z:z09
	SBC #$00
	STA z:z09
	DEC z:z01
	BNE @loop

@skip:
	RTS
