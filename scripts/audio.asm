MACRO music_pointers
	db $f
ENDM

MACRO channel_1 a
	IF channel_flags&1
		dw a
	ELSE
		db 0, 0
	ENDIF
ENDM

MACRO channel_2 a
	IF channel_flags&2
		dw a
	ELSE
		db 0, 0
	ENDIF
ENDM

MACRO channel_3 a
	IF channel_flags&4
		dw a
	ELSE
		db 0, 0
	ENDIF
ENDM

MACRO channel_4 a
	IF channel_flags&8
		dw a
	ELSE
		db 0, 0
	ENDIF
ENDM

MACRO tempo a
	db 0, a
ENDM

MACRO pitch_envelope a
	db 1, a
ENDM

MACRO duty_cycle a
	db 2, a<<6
ENDM

MACRO volume a
	IF a < 0 || a > $f
		error "Invalid volume"
	ELSE
		db 3, a+$30
	ENDIF
ENDM

MACRO triangle_linear a
	db 3, a
ENDM

MACRO loop a, b
	db 4
	db a
	dw b
ENDM

MACRO base_note a
	db 5, a
ENDM

MACRO dotted_set
	db 6
ENDM

MACRO volume_envelope a, b
	db 7, a, b
ENDM

MACRO modulation a
	IF a > $3f
		error "Modulation is out of range"
	ELSE
		db 8, a
	ENDIF
ENDM

MACRO channel_end
	db 9
ENDM

MACRO number_of_note_connect a
	db a+$20
ENDM

MACRO triplet_set
	db $30
ENDM

;general
even = 1
odd = 0

MACRO rest a
	IF a == 2 && tempo_number
		b = $40
	ELSEIF a == 4
		b = $60
	ELSEIF a == 8
		b = $80
	ELSEIF a == 16
		b = $a0
	ELSEIF a == 32
		b = $c0
	ELSEIF a == 64
		b = $e0
	ELSE
		error "Invalid note length"
	ENDIF
	db b
ENDM

;note_value_table
	C_0 = $00
	C#0 = $01
	D_0 = $02
	D#0 = $03
	E_0 = $04
	F_0 = $05
	F#0 = $06
	G_0 = $07
	G#0 = $08
	A_0 = $09
	A#0 = $0a
	B_0 = $0b

	C_1 = $0c
	C#1 = $0d
	D_1 = $0e
	D#1 = $0f
	E_1 = $10
	F_1 = $11
	F#1 = $12
	G_1 = $13
	G#1 = $14
	A_1 = $15
	A#1 = $16
	B_1 = $17

	C_2 = $18
	C#2 = $19
	D_2 = $1a
	D#2 = $1b
	E_2 = $1c
	F_2 = $1d
	F#2 = $1e
	G_2 = $1f
	G#2 = $20
	A_2 = $21
	A#2 = $22
	B_2 = $23

	C_3 = $24
	C#3 = $25
	D_3 = $26
	D#3 = $27
	E_3 = $28
	F_3 = $29
	F#3 = $2a
	G_3 = $2b
	G#3 = $2c
	A_3 = $2d
	A#3 = $2e
	B_3 = $2f

	C_4 = $30
	C#4 = $31
	D_4 = $32
	D#4 = $33
	E_4 = $34
	F_4 = $35
	F#4 = $36
	G_4 = $37
	G#4 = $38
	A_4 = $39
	A#4 = $3a
	B_4 = $3b

	C_5 = $3c
	C#5 = $3d
	D_5 = $3e
	D#5 = $3f
	E_5 = $40
	F_5 = $41
	F#5 = $42
	G_5 = $43
	G#5 = $44
	A_5 = $45
	A#5 = $46
	B_5 = $47

	C_6 = $48
	C#6 = $49
	D_6 = $4a
	D#6 = $4b
	E_6 = $4c
	F_6 = $4d
	F#6 = $4e
	G_6 = $4f
	G#6 = $50
	A_6 = $51
	A#6 = $52
	B_6 = $53

	C_7 = $54
	C#7 = $55
	D_7 = $56
	D#7 = $57
	E_7 = $58
	F_7 = $59
	F#7 = $5a
	G_7 = $5b
	G#7 = $5c
	A_7 = $5d
	A#7 = $5e
	B_7 = $5f

MACRO note a, b
	IF a-current_base_note < 1 || a-current_base_note > $1e
		error "Note is out of range"
	ELSE
		c = a-current_base_note
	ENDIF
	IF b == 2 && tempo_number
		d = $40
	ELSEIF b == 4
		d = $60
	ELSEIF b == 8
		d = $80
	ELSEIF b == 16
		d = $a0
	ELSEIF b == 32
		d = $c0
	ELSEIF b == 64
		d = $e0
	ELSE
		error "Invalid note length"
	ENDIF
	db c+d
ENDM

MACRO noise_note a, b
	IF a < 0 || a > $1e
		error "Noise note is out of range"
	ENDIF
	IF b == 2 && tempo_number
		c = $40
	ELSEIF b == 4
		c = $60
	ELSEIF b == 8
		c = $80
	ELSEIF b == 16
		c = $a0
	ELSEIF b == 32
		c = $c0
	ELSEIF b == 64
		c = $e0
	ELSE
		error "Invalid note length"
	ENDIF
	IF $f-a
		d = $f-a
	ELSE
		d = $10
	ENDIF
	db c+d
ENDM

MACRO pitch_bend a, b, c
	db a, (b<<5)+c
ENDM

MACRO volume_modulation a, b
	db a, b
ENDM