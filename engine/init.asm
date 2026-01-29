_init:
	SEI
	stack_pointers $FF
	LDX #$01

@loop_1:
	LDA PPU_STATUS
	BPL @loop_1

@loop_2:
	LDA PPU_STATUS
	BMI @loop_2
	DEX
	BPL @loop_1
	LDA #$00
	STA z:z00
	STA z:z01
	LDY #$00

@loop_3:
	STA (z00), Y
	INY
	BNE @loop_3
	INC z:z01
	LDX z:z01
	CPX #$08
	BNE @loop_3
	LDA #nametable_horizontal | fix_last_bank
	JSR _mmc1_control
	LDA #$01
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LSR
	STA mmc1_chr_bank_0
	LDA #$1F
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
	LSR
	STA mmc1_chr_bank_1
