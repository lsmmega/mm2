_load_title_screen:
	STA z:z00
	LDA z:z00
	AND #%00000001
	BEQ @even
	LDA z:z00
	EOR #$3F
	TAX
	LDA title_screen_set, X
	STA aobject_ppu_data + 1
	LDA title_screen_set + 1, X
	STA aobject_ppu_data
	LDA #$23
	STA aobject_ppu_address
	LDX z:z00
	DEX
	TXA
	ORA #$C0
	STA aobject_ppu_address + 1
	LDA #$02
	STA z:zobject_tiles_update_size
	RTS

@even:
	LDA z:z00
	LSR
	CMP #$1E
	BCC @title
	RTS

@title:
	ASL
	ASL
	ASL
	ASL
	ROL z:z08
	ASL
	ROL z:z08
	STA aobject_ppu_address + 1
	LDA z:z08
	AND #$03
	ORA #$20
	STA aobject_ppu_address
	LDA z:z00
	LSR
	EOR #$1F
	STA z:z09
	LDA #$00
	LSR z:z09
	ROR
	LSR z:z09
	ROR
	LSR z:z09
	ROR
	STA z:z08
	CLC
	LDA z:z08
	ADC #<title_screen_set
	STA z:z08
	LDA z:z09
	ADC #>title_screen_set
	STA z:z09
	LDY #$1F

@loop:
	LDA (z08), Y
	STA aobject_ppu_data, Y
	DEY
	BPL @loop
	LDA #$20
	STA z:zobject_tiles_update_size
	RTS
