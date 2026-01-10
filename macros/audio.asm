.MACRO tempo b
	@current_tempo .SET b
	.BYTE $00, b
.ENDMACRO

.MACRO pitch_envelope b
	.BYTE $01, b
.ENDMACRO

.MACRO duty_cycle b
	.BYTE $02, b << 6
.ENDMACRO

.MACRO noise_duty_cycle b
	.BYTE $02, b << 7
.ENDMACRO

.MACRO volume b
	.IF b & $0F
		.BYTE $03, b | $30
	.ELSE
		.ERROR "Invaild volume."
	.ENDIF
.ENDMACRO

.MACRO triangle_note_length b
	.BYTE $03, b
.ENDMACRO

.MACRO loop b, c
	.BYTE $04, b
	.WORD c
.ENDMACRO

.MACRO base_note b
	@current_base_note .SET b
	.BYTE $05, b
.ENDMACRO

.MACRO dotted_note_set
	.BYTE $06
.ENDMACRO

.MACRO volume_envelope b, c, d
	.BYTE $07, b | d, c << 4
.ENDMACRO

.MACRO modulator b
	.BYTE $08, b
.ENDMACRO

.MACRO music_end
	.BYTE $09
.ENDMACRO

.MACRO music_header
	.BYTE $0F
.ENDMACRO

.MACRO number_of_note_tied b
	.IF b > 0 && b < 9
		.BYTE b - 1 | $20
	.ELSE
		.ERROR "Number of note tied from 1 to 8."
	.ENDIF
.ENDMACRO

.MACRO triplet_note_set
	.BYTE $30
.ENDMACRO

.MACRO note b, c
	@d .SET b - @current_base_note
	@e .SET @current_tempo & 1
		.IF @d > 0 && @d < $20
			.IF c = 2 && @e
				.ERROR "Note can't play under its tempo correctly."
			.ELSEIF c = 2
				.BYTE @d | $40
			.ELSEIF c = 4
				.BYTE @d | $60
			.ELSEIF c = 8
				.BYTE @d | $80
			.ELSEIF c = 16
				.BYTE @d | $A0
			.ELSEIF c = 32
				.BYTE @d | $C0
			.ELSEIF c = 64
				.BYTE @d | $E0
			.ELSE
				.ERROR "Invaild note length."
			.ENDIF
		.ELSE
			.ERROR "Note is out of bound."
		.ENDIF
.ENDMACRO

.MACRO rest b
	@c .SET @current_tempo & 1
		.IF b = 2 && @c
			.ERROR "Note can't play under its tempo correctly."
		.ELSEIF b = 2
			.BYTE $40
		.ELSEIF b = 4
			.BYTE $60
		.ELSEIF b = 8
			.BYTE $80
		.ELSEIF b = 16
			.BYTE $A0
		.ELSEIF b = 32
			.BYTE $C0
		.ELSEIF b = 64
			.BYTE $E0
		.ELSE
			.ERROR "Invaild note length."
		.ENDIF
.ENDMACRO

.MACRO noise_note b, c
	@d .SET b ^ $0F
	@e .SET @current_tempo & 1
		.IF c = 2 && @e
			.ERROR "Note can't play under its tempo correctly."
		.ELSEIF c = 2 && b = 15
			.BYTE $50
		.ELSEIF c = 4 && b = 15
			.BYTE $70
		.ELSEIF c = 8 && b = 15
			.BYTE $90
		.ELSEIF c = 16 && b = 15
			.BYTE $B0
		.ELSEIF c = 32 && b = 15
			.BYTE $D0
		.ELSEIF c = 64 && b = 15
			.BYTE $F0
		.ELSEIF c = 2
			.BYTE @d | $40
		.ELSEIF c = 4
			.BYTE @d | $60
		.ELSEIF c = 8
			.BYTE @d | $80
		.ELSEIF c = 16
			.BYTE @d | $A0
		.ELSEIF c = 32
			.BYTE @d | $C0
		.ELSEIF c = 64
			.BYTE @d | $E0
		.ELSE
			.ERROR "Invaild note length or name."
		.ENDIF
.ENDMACRO

.MACRO modulator_set b, c, d, e, f, g
	.BYTE d, b << 5 | c, e | g, f
.ENDMACRO

.MACRO sfx_priority b
	.BYTE b << 4
.ENDMACRO

.MACRO sfx_frames b
	.BYTE $00, b
.ENDMACRO

.MACRO sfx_modulator_set b, c, d, e, f, g
	.BYTE $05, d, b << 5 | c, e | g, f
.ENDMACRO

.MACRO sfx_end
	.BYTE $06
.ENDMACRO

.MACRO sfx_note b
	.DBYT b | $8000
.ENDMACRO

.MACRO sfx_noise_note b
	.IF b = 15
		.DBYT $8010
	.ELSE
		.DBYT b ^ $0F | $8000
	.ENDIF
.ENDMACRO

.MACRO sfx_note_tied
	.DBYT $8FFF
.ENDMACRO

.MACRO track_queue b
	LDA #b
	JSR _track_queue
.ENDMACRO
