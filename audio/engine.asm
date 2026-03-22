;aaudio_ram
;00 = channel pointers lo
;01 = channel pointers hi
;02 = note length lo
;03 = note length hi
;04 = tempo
;05 = triplet note/loop
;06 = note tied/modulator
;07 = freq table lo
;08 = freq table hi
;09 = pitch envelope
;0A = freq lo
;0B = freq hi
;0C = duty cycle/volume
;0D = volume envelope direction/frame
;0E = volume envelope frame counter
;0F = volume envelope unit
;10 = sfx pitch envelope
;11 = sfx freq lo
;12 = sfx freq hi
;13 = sfx duty cycle/volume
;14 = modulator pitch frame
;15 = modulator pitch envelope/invert
;16 = modulator volume envelope direction/frame
;17 = modulator volume envelope unit
;18 = modualtor pitch frame counter
;19 = pitch invert
;1A = pitch bend lo
;1B = pitch bend hi
;1C = apu register hi flag
;1D = modualtor volume envelope frame counter
;1E = modualtor current volume

_nmi_audio_processing:
	JMP _audio_processing

_nmi_audio_track_queue:
	CMP #music_playmultispeed
	BNE @not_music_playmultispeed
	JMP _music_playmultispeed

@not_music_playmultispeed:
	CMP #music_fade_in_out
	BNE @not_music_fade_in_out
	JMP _music_fade_in_out

@not_music_fade_in_out:
	CMP #mute_sfx
	BNE @not_mute_sfx
	LDA #$01
	STA z:zplayback_flag
	LDA #$00
	STA z:zaudio_ram_pointers
	JMP _mute_sfx

@not_mute_sfx:
	CMP #mute_music
	BNE @not_mute_music
	LDA #$01
	STA z:zplayback_flag
	LDA #$00
	STA z:zaudio_ram_pointers
	JMP _mute_music

@not_mute_music:
	ASL
	TAX
	LDA track_pointers, X
	STA z:ztrack_pointers
	LDA track_pointers + 1, X
	STA z:ztrack_pointers + 1
	LDY #$00
	LDA (ztrack_pointers), Y
	TAX
	AND #%00001111
	BEQ @is_sfx
	LDA z:zaudio_header
	AND #%00001111
	STA z:zaudio_E5
	CPX z:zaudio_E5
	BCS @is_music
	RTS

@is_music:
	STX z:zaudio_E5
	LDA z:zaudio_header
	AND #%11110000
	ORA z:zaudio_E5
	STA z:zaudio_header
	LDA #$01
	STA z:zplayback_flag
	LDA #$00
	STA z:zaudio_ram_pointers
	LDA #$00
	STA z:zmusic_playmultispeed
	STA z:zfade_in_out_rate
	LDA #$04
	STA z:zaudio_E5
	LDA #$01

@mainloop:
	CLC
	ADC z:ztrack_pointers
	STA z:ztrack_pointers
	LDA #$00
	ADC z:ztrack_pointers + 1
	STA z:ztrack_pointers + 1
	LDX z:zaudio_ram_pointers
	LDY #$00

@channel_pointers_loop:
	LDA (ztrack_pointers), Y
	STA aaudio_ram, X
	INX
	INY
	CPY #$02
	BNE @channel_pointers_loop
	LDY #$0E
	LDA #$00

@init_loop:
	STA aaudio_ram, X
	INX
	DEY
	BNE @init_loop
	LDA z:zsfx_channel
	LSR
	BCS @skip_1
	JSR _audio_init_common

@skip_1:
	JSR _redirect_channel_ram_pointers_with_sfx
	DEC z:zaudio_E5
	BEQ @done
	LDA #$02
	JMP @mainloop

@done:
	LDY #$02
	LDA (ztrack_pointers), Y
	STA amodulation_pointers
	INY
	LDA (ztrack_pointers), Y
	STA amodulation_pointers + 1
	JSR _init_sfx_channel
	LDA #$00
	STA z:zplayback_flag
	RTS

@is_sfx:
	LDA z:zaudio_header
	AND #%11110000
	STA z:zaudio_E5
	CPX z:zaudio_E5
	BCS @init_sfx
	RTS

@init_sfx:
	STX z:zaudio_E5
	LDA z:zaudio_header
	AND #%00001111
	ORA z:zaudio_E5
	STA z:zaudio_header
	LDA #$01
	STA z:zplayback_flag
	LDA #$00
	STA z:zaudio_ram_pointers
	LDX #$00
	LDA #$02
	CLC
	ADC z:ztrack_pointers
	STA z:zsfx_pointers
	TXA
	ADC z:ztrack_pointers + 1
	STA z:zsfx_pointers + 1
	STX z:zsfx_frame
	STX z:zsfx_loop
	LDY #$01
	LDA (ztrack_pointers), Y
	AND #%00001111
	TAX
	ORA z:zsfx_channel
	PHA
	STX z:zsfx_channel
	LDA #$04
	STA z:zaudio_E5
	LDA #$02
	STA z:zsfx_apu_register_index

@loop:
	PLA
	LSR
	PHA
	BCC @skip_2
	JSR _audio_init_common
	LDA z:zsfx_channel
	LSR
	BCS @skip_2
	JSR _handle_sfx_mute_channel

@skip_2:
	JSR _redirect_channel_ram_pointers_with_sfx
	LDA #$04
	CLC
	ADC z:zsfx_apu_register_index
	STA z:zsfx_apu_register_index
	DEC z:zaudio_E5
	BNE @loop
	JSR _init_sfx_channel
	LDA z:zsfx_channel
	STA z:zundo_sfx_channel
	PLA
	LDA #$00
	STA z:zplayback_flag
	RTS

_music_playmultispeed:
	INY
	STY z:zmusic_playmultispeed
	RTS

_music_fade_in_out:
	STY z:zfade_in_out_rate
	LDA #$01
	STA z:zfade_in_out_level
	LDA z:zaudio_frame
	AND #%00000001
	STA z:zaudio_frame
	RTS

_mute_sfx:
	LDA z:zaudio_header
	AND #%00001111
	STA z:zaudio_header
	LDA #$04
	STA z:zaudio_E5
	LDA #$02
	STA z:zsfx_apu_register_index

@loop:
	LDA z:zsfx_channel
	LSR
	BCC @skip
	JSR _audio_init_common
	JSR _handle_sfx_mute_channel

@skip:
	JSR _redirect_channel_ram_pointers_with_sfx
	LDA #$04
	CLC
	ADC z:zsfx_apu_register_index
	STA z:zsfx_apu_register_index
	DEC z:zaudio_E5
	BNE @loop
	LDA #$00
	STA z:zsfx_channel
	STA z:zundo_sfx_channel
	LDA #$00
	STA z:zplayback_flag
	RTS

_handle_sfx_mute_channel:
	LDA z:zaudio_ram_pointers
	CLC
	ADC #$0A
	TAX
	LDA aaudio_ram, X
	ORA aaudio_ram + 1, X
	BNE _handle_sfx_mute_modulator
	LDY z:zaudio_E5
	LDX z:zsfx_apu_register_index
	JSR _init_channel
	LDX z:zaudio_ram_pointers
	LDA aaudio_ram, X
	ORA aaudio_ram + 1, X
	BNE _handle_sfx_mute_modulator
	RTS

_mute_music:
	LDA z:zaudio_header
	AND #%11110000
	STA z:zaudio_header
	LDA #$00
	STA z:zmusic_playmultispeed
	STA z:zfade_in_out_rate
	LDA #$04
	STA z:zaudio_E5

@loop:
	LDA #$00
	LDX z:zaudio_ram_pointers
	STA aaudio_ram, X
	STA aaudio_ram + 1, X
	JSR _redirect_channel_ram_pointers
	DEC z:zaudio_E5
	BNE @loop
	LDA #$00
	STA z:zplayback_flag
	RTS

_audio_init_common:
	LDY #$0F
	LDA #$10
	CLC
	ADC z:zaudio_ram_pointers
	TAX
	LDA #$00

@loop:
	STA aaudio_ram, X
	INX
	DEY
	BNE @loop
	RTS

_handle_sfx_mute_modulator:
	LDA z:zaudio_E5
	PHA
	LDA z:zsfx_apu_register_index
	PHA
	LDA amodulation_pointers
	STA z:zaudio_E5
	LDA amodulation_pointers + 1
	STA z:zsfx_apu_register_index
	LDA z:zaudio_ram_pointers
	CLC
	ADC #$06
	TAX
	LDA aaudio_ram, X
	AND #%00011111
	BEQ @zmodulator
	TAY
	LDA #$00

@loop_multi4:
	CLC
	ADC #$04
	DEY
	BNE @loop_multi4

@zmodulator:
	TAY
	TXA
	CLC
	ADC #$0E
	TAX
	LDA #$04

@loop:
	PHA
	LDA (zaudio_E5), Y
	STA aaudio_ram, X
	INY
	INX
	PLA
	SEC
	SBC #$01
	BNE @loop
	PLA
	STA z:zsfx_apu_register_index
	PLA
	STA z:zaudio_E5
	RTS

_redirect_channel_ram_pointers_with_sfx:
	LSR z:zsfx_channel
	BCC _redirect_channel_ram_pointers
	LDA z:zsfx_channel
	ORA #%10000000
	STA z:zsfx_channel

_redirect_channel_ram_pointers:
	LDA #$1F
	CLC
	ADC z:zaudio_ram_pointers
	STA z:zaudio_ram_pointers
	RTS

_init_sfx_channel:
	LSR z:zsfx_channel
	LSR z:zsfx_channel
	LSR z:zsfx_channel
	LSR z:zsfx_channel
	RTS

_init_channel:
	CPY #$01
	BEQ @is_noise
	LDA #$00
	STA SQ1_VOL, X
	STA SQ1_SWEEP, X
	RTS

@is_noise:
	LDA #$07
	STA APU_STATUS
	RTS

_audio_processing:
	INC z:zaudio_frame
	LDA z:zplayback_flag
	BEQ @process
	RTS

@process:
	LDX #$00
	LDY #$05
	STX z:zaudio_ram_pointers
	STY z:zaudio_ram_pointers + 1
	LDA #$00
	STA z:zmusic_apu_register_index
	LDA #$04
	STA z:zmusic_channel

@mainloop:
	LDA #$01
	LDY #$18
	CLC
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	LDA #$01
	LDY #$1D
	CLC
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	LDA z:zundo_sfx_channel
	LSR
	BCC @skip_1
	JSR _handle_sfx

@skip_1:
	LDA z:zpause
	LSR
	BCC @unpause
	JMP @skip_2

@unpause:
	LDY #$00
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BEQ @skip_2
	LDA #$01
	LDY #$0E
	CLC
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	JSR _music_playingmulticheck
	JMP @done_1

@skip_2:
	LDA z:zundo_sfx_channel
	LSR
	BCS @done_1
	LDX z:zmusic_apu_register_index
	INX
	INX
	LDY z:zmusic_channel
	JSR _init_channel

@done_1:
	LSR z:zundo_sfx_channel
	BCC @skip_3
	LDA z:zundo_sfx_channel
	ORA #%10000000
	STA z:zundo_sfx_channel

@skip_3:
	DEC z:zmusic_channel
	BEQ @done_2
	LDA #$04
	CLC
	ADC z:zmusic_apu_register_index
	STA z:zmusic_apu_register_index
	LDA #$1F
	CLC
	ADC z:zaudio_ram_pointers
	STA z:zaudio_ram_pointers
	LDA #$00
	ADC z:zaudio_ram_pointers + 1
	STA z:zaudio_ram_pointers + 1
	JMP @mainloop

@done_2:
	LDA z:zfade_in_out_rate
	AND #%01111111
	BEQ @skip_4
	CMP z:zaudio_frame
	BNE @skip_4
	LDA z:zaudio_frame
	AND #%00000001
	STA z:zaudio_frame
	INC z:zfade_in_out_level
	LDA #$10
	CMP z:zfade_in_out_level
	BNE @skip_4
	LDA z:zfade_in_out_rate
	BMI @fade_out
	LDA #$00
	STA z:zfade_in_out_rate

@fade_out:
	LDA #$0F
	STA z:zfade_in_out_level

@skip_4:
	LDA z:zsfx_frame
	BEQ @zframe
	DEC z:zsfx_frame

@zframe:
	LSR z:zundo_sfx_channel
	LSR z:zundo_sfx_channel
	LSR z:zundo_sfx_channel
	LSR z:zundo_sfx_channel
	RTS

_handle_played:
	LDY #$0C
	LDA (zaudio_ram_pointers), Y
	LDY #$02
	CPY z:zmusic_channel
	BEQ @is_triangle_1
	AND #%00001111

@is_triangle_1:
	STA z:zaudio_F4
	LDA z:zfade_in_out_rate
	AND #%01111111
	BEQ @handle_fade_in_out_done
	LDA z:zfade_in_out_level
	LDY #$02
	CPY z:zmusic_channel
	BNE @not_triangle
	LDX #$0C

@loop_1:
	CLC
	ADC z:zfade_in_out_level
	DEX
	BNE @loop_1

@not_triangle:
	TAY
	LDA z:zfade_in_out_rate
	BMI @fade_out
	LDX #$FF

@loop_2:
	INX
	CPX z:zaudio_F4
	BEQ @handle_fade_in_out_done
	DEY
	BNE @loop_2
	STX z:zaudio_F4
	JMP @handle_fade_in_out_done

@fade_out:
@loop_3:
	DEC z:zaudio_F4
	BEQ @handle_fade_in_out_done
	DEY
	BNE @loop_3

@handle_fade_in_out_done:
	LDA #$02
	CMP z:zmusic_channel
	BEQ @is_triangle_2
	LDY #$0D
	LDA (zaudio_ram_pointers), Y
	TAX
	AND #%01111111
	BEQ @zframe
	INY
	CMP (zaudio_ram_pointers), Y
	BEQ @eframe
	INY
	LDA (zaudio_ram_pointers), Y
	AND #%00001111
	JMP @compare_volume

@eframe:
	LDA #$00
	STA (zaudio_ram_pointers), Y
	INY
	LDA (zaudio_ram_pointers), Y
	LSR
	LSR
	LSR
	LSR
	STA z:zaudio_F5
	TXA
	BPL @increase
	LDA #$00
	SEC
	SBC z:zaudio_F5
	STA z:zaudio_F5

@increase:
	LDA (zaudio_ram_pointers), Y
	AND #%00001111
	CLC
	ADC z:zaudio_F5
	BPL @compare_volume
	LDA #$00
	JMP @s_or_negative

@compare_volume:
	CMP z:zaudio_F4
	BCC @s_or_negative
	LDA z:zaudio_F4

@s_or_negative:
	STA z:zaudio_F4
	LDA (zaudio_ram_pointers), Y
	AND #%11110000
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y

@is_triangle_2:
@zframe:
	LDA z:zundo_sfx_channel
	LSR
	BCS @skip
	LDA #$0C
	STA z:zaudio_F5
	JMP _handle_modulator_volume_envelope

@skip:
	LDA #$09
	STA z:zaudio_F5
	JMP _pitch_envelope_common

_handle_modulator_volume_envelope:
	LDY #$16
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	BEQ @le
	LDY #$1D
	CMP (zaudio_ram_pointers), Y
	BEQ @eframe
	JMP @compare_volume

@eframe:
	LDA #$00
	STA (zaudio_ram_pointers), Y
	LDY #$17
	LDA (zaudio_ram_pointers), Y
	LDY #$1E
	CLC
	ADC (zaudio_ram_pointers), Y
	BEQ @zvolume
	BPL @not_volume_negative

@zvolume:
	LDA #$01
	STA (zaudio_ram_pointers), Y
	JMP @continue

@not_volume_negative:
	STA (zaudio_ram_pointers), Y
	CMP #$10
	BCC @compare_volume
	LDA #$0F
	STA (zaudio_ram_pointers), Y

@continue:
	LDA #$00
	LDY #$17
	SEC
	SBC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y

@compare_volume:
	LDY #$1E
	LDA (zaudio_ram_pointers), Y
	CMP z:zaudio_F4
	BCS @le
	STA z:zaudio_F4

@le:
	LDY #$02
	CPY z:zmusic_channel
	BEQ @is_triangle
	LDA z:zaudio_F5
	AND #%01111111
	TAY
	LDA (zaudio_ram_pointers), Y
	AND #%11110000
	ORA z:zaudio_F4
	STA z:zaudio_F4

@is_triangle:
	LDX z:zmusic_apu_register_index
	LDA z:zaudio_F4
	STA SQ1_VOL, X
	LDA z:zaudio_F5
	BPL @not_sfx
	LDA #$10 | 1 << 7
	STA z:zaudio_F5
	JMP _pitch_envelope_common

@not_sfx:
	LDA #$09
	STA z:zaudio_F5

_pitch_envelope_common:
	LDA z:zaudio_F5
	AND #%01111111
	TAY
	LDX #$00
	LDA (zaudio_ram_pointers), Y
	BEQ @zpitch_envelope
	BPL @not_pitch_envelope_negative
	DEX

@not_pitch_envelope_negative:
	INY
	CLC
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	TXA
	INY
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y

@zpitch_envelope:
	LDA z:zaudio_F5
	BMI @handle_pitch_bend
	LDA z:zundo_sfx_channel
	LSR
	BCC @handle_pitch_bend
	RTS

@handle_pitch_bend:
	LDY #$14
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	BNE @nz
	JMP @skip_or_handle_common

@nz:
	LDY #$18
	CMP (zaudio_ram_pointers), Y
	BEQ @eframe
	JMP @skip_or_handle_common

@eframe:
	LDA #$00
	STA (zaudio_ram_pointers), Y
	TAX
	LDY #$15
	LDA (zaudio_ram_pointers), Y
	ROL
	ROL
	ROL
	ROL
	AND #%00000111
	STA z:zaudio_F4
	LDY #$19
	LDA (zaudio_ram_pointers), Y
	ASL
	BCC @pitch_down
	LDA #$00
	SEC
	SBC z:zaudio_F4
	STA z:zaudio_F4
	DEX

@pitch_down:
	LDA z:zaudio_F4
	CLC
	LDY #$1A
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	INY
	TXA
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	LDY #$15
	LDA (zaudio_ram_pointers), Y
	AND #%00011111
	STA z:zaudio_F4
	LDY #$19
	LDA (zaudio_ram_pointers), Y
	CLC
	ADC #$01
	STA (zaudio_ram_pointers), Y
	AND #%01111111
	CMP z:zaudio_F4
	BNE @skip_or_handle_common
	LDA (zaudio_ram_pointers), Y
	AND #%10000000
	STA (zaudio_ram_pointers), Y
	LDY #$14
	LDA (zaudio_ram_pointers), Y
	ASL
	BCS @change_pitch_direction
	LDA (zaudio_ram_pointers), Y
	ORA #%10000000
	STA (zaudio_ram_pointers), Y
	LDY #$19
	LDA (zaudio_ram_pointers), Y
	BPL @change_pitch_up
	AND #%01111111
	STA (zaudio_ram_pointers), Y
	JMP @skip_or_handle_common

@change_pitch_up:
	ORA #%10000000
	STA (zaudio_ram_pointers), Y
	JMP @skip_or_handle_common

@change_pitch_direction:
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	STA (zaudio_ram_pointers), Y

@skip_or_handle_common:
	LDA z:zaudio_F5
	AND #%01111111
	STA z:zaudio_F5
	INC z:zaudio_F5
	LDY #$1A
	LDA (zaudio_ram_pointers), Y
	LDY z:zaudio_F5
	CLC
	ADC (zaudio_ram_pointers), Y
	TAX
	LDY #$1B
	LDA (zaudio_ram_pointers), Y
	INC z:zaudio_F5
	LDY z:zaudio_F5
	ADC (zaudio_ram_pointers), Y
	TAY
	LDA #$01
	CMP z:zmusic_channel
	BNE @not_noise
	LDA #$0F
	STA APU_STATUS
	TXA
	AND #%00001111
	TAX
	INC z:zaudio_F5
	LDY z:zaudio_F5
	LDA (zaudio_ram_pointers), Y
	AND #%10000000
	STA z:zaudio_F4
	TXA
	ORA z:zaudio_F4
	TAX
	LDY #$00

@not_noise:
	TXA
	LDX z:zmusic_apu_register_index
	INX
	INX
	STA SQ1_VOL, X
	TYA
	LDY #$1C
	CMP (zaudio_ram_pointers), Y
	BNE @done
	RTS

@done:
	STA (zaudio_ram_pointers), Y
	ORA #$08
	STA SQ1_SWEEP, X
	RTS

_break_frame:
	LDY #$01
	CPY z:zmusic_channel
	BNE @not_noise
	LDA #$07
	STA APU_STATUS
	RTS

@not_noise:
	LDA #$00
	LDX z:zmusic_apu_register_index
	INX
	INX
	STA SQ1_VOL, X
	STA SQ1_SWEEP, X
	RTS

_play_note_with_modulator:
	LDY #$14
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	STA (zaudio_ram_pointers), Y
	LDY #$16
	LDA (zaudio_ram_pointers), Y
	ASL
	BCC @increase
	LDY z:zaudio_F4
	LDA (zaudio_ram_pointers), Y
	LDX #$02
	CPX z:zmusic_channel
	BEQ @is_triangle
	AND #%00001111

@is_triangle:
	LDY #$1E
	STA (zaudio_ram_pointers), Y

@increase:
	LDX #$06
	LDA #$00
	LDY #$18

@loop:
	STA (zaudio_ram_pointers), Y
	INY
	DEX
	BNE @loop
	LDA #$FF
	LDY #$1C
	STA (zaudio_ram_pointers), Y
	RTS

_play_note_with_tied:
	LDY #$1C
	LDA (zaudio_ram_pointers), Y
	PHA
	JSR _play_note_with_modulator
	PLA
	LDY #$1C
	STA (zaudio_ram_pointers), Y
	RTS

_audio_cmd_jmp:
	TXA
	ASL
	TAY
	INY
	PLA
	STA z:zaudio_F4
	PLA
	STA z:zaudio_F5
	LDA (zaudio_F4), Y
	TAX
	INY
	LDA (zaudio_F4), Y
	STA z:zaudio_F5
	STX z:zaudio_F4
	JMP (zaudio_F4)

_handle_sfx:
	LDA z:zsfx_frame
	BNE @nz
	JMP _read_sfx_data

@nz:
	LDY #$11
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BNE @undone
	RTS

@undone:
	INY
	LDA (zaudio_ram_pointers), Y
	LDY #$02
	CPY z:zmusic_channel
	BEQ @is_triangle
	AND #%00001111

@is_triangle:
	STA z:zaudio_F4
	LDA #$13 | 1 << 7
	STA z:zaudio_F5
	JMP _handle_modulator_volume_envelope

_read_sfx_data:
	JSR _read_next_sfx_data
	ASL
	BCS @is_note
	JMP _sfx_cmd

@is_note:
	TXA
	AND #%00001111
	CMP #$0F
	BNE @not_note_tied
	JSR _read_next_sfx_data
	JMP _play_note_with_tied

@not_note_tied:
	AND #%00000111
	STA z:zaudio_F4
	JSR _read_next_sfx_data
	LDY #$11
	STA (zaudio_ram_pointers), Y
	INY
	LDA z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	LDA #$13
	STA z:zaudio_F4
	JSR _play_note_with_modulator
	JMP _break_frame

_sfx_cmd:
	JSR _audio_cmd_jmp

	.WORD _sfx_cmd_frame
	.WORD _sfx_cmd_pitch_envelope
	.WORD _sfx_cmd_duty_cycle
	.WORD _sfx_cmd_volume
	.WORD _sfx_cmd_loop
	.WORD _sfx_cmd_modulator
	.WORD _sfx_cmd_end

_sfx_cmd_frame:
	JSR _read_next_sfx_data
	STA z:zsfx_frame
	JMP _read_sfx_data

_sfx_cmd_pitch_envelope:
	JSR _read_next_sfx_data
	LDY #$10
	STA (zaudio_ram_pointers), Y
	JMP _read_sfx_data

_sfx_cmd_duty_cycle:
	JSR _read_next_sfx_data
	STA z:zaudio_F4
	LDY #$13
	LDA (zaudio_ram_pointers), Y
	AND #%00111111
	ORA z:zaudio_F4
	JMP _sfx_cmd_write_duty_cycle_volume_common

_sfx_cmd_volume:
	JSR _read_next_sfx_data
	LDY #$02
	CPY z:zmusic_channel
	BEQ @is_triangle
	STA z:zaudio_F4
	LDY #$13
	LDA (zaudio_ram_pointers), Y
	AND #%11000000
	ORA z:zaudio_F4

@is_triangle:
_sfx_cmd_write_duty_cycle_volume_common:
	LDY #$13
	STA (zaudio_ram_pointers), Y
	JMP _read_sfx_data

_sfx_cmd_loop:
	JSR _read_next_sfx_data
	TXA
	BEQ @infinity_loop
	CPX z:zsfx_loop
	BEQ @regular_loop
	INC z:zsfx_loop

@infinity_loop:
	JSR _read_next_sfx_data
	STA z:zaudio_F4
	JSR _read_next_sfx_data
	STA z:zsfx_pointers + 1
	LDA z:zaudio_F4
	STA z:zsfx_pointers
	JMP _read_sfx_data

@regular_loop:
	LDA #$00
	STA z:zsfx_loop
	LDA #$02
	CLC
	ADC z:zsfx_pointers
	STA z:zsfx_pointers
	LDA #$00
	ADC z:zsfx_pointers + 1
	STA z:zsfx_pointers + 1
	JMP _read_sfx_data

_sfx_cmd_modulator:
	LDA #$14
	STA z:zaudio_F4

@loop:
	JSR _read_next_sfx_data
	LDY z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	INC z:zaudio_F4
	LDY z:zaudio_F4
	CPY #$18
	BNE @loop
	JMP _read_sfx_data

_sfx_cmd_end:
	LDA z:zsfx_pointers
	SEC
	SBC #$01
	STA z:zsfx_pointers
	LDA z:zsfx_pointers + 1
	SBC #$00
	STA z:zsfx_pointers + 1
	LDA z:zaudio_header
	AND #%00001111
	STA z:zaudio_header
	LDA #$00
	STA z:zsfx_channel
	LDA z:zundo_sfx_channel
	AND #%11111110
	STA z:zundo_sfx_channel
	LDY #$0A
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BNE @return_play_music
	LDX z:zmusic_apu_register_index
	INX
	INX
	LDY z:zmusic_channel
	JSR _init_channel
	LDY #$00
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BNE @return_play_music
	RTS

@return_play_music:
	LDY #$06
	LDA (zaudio_ram_pointers), Y
	AND #%00011111
	TAX
	JSR _handle_modulator_data
	LDA #$0C
	STA z:zaudio_F4
	JMP _play_note_with_modulator

_read_next_sfx_data:
	LDY #$00
	LDA (zsfx_pointers), Y
	TAX
	LDA #$01
	CLC
	ADC z:zsfx_pointers
	STA z:zsfx_pointers
	LDA #$00
	ADC z:zsfx_pointers + 1
	STA z:zsfx_pointers + 1
	TXA
	RTS

_music_playingmulticheck:
	LDA z:zmusic_playmultispeed
	BEQ _music_playing

@loop:
	PHA
	JSR _music_playing
	PLA
	SEC
	SBC #$01
	BNE @loop
	RTS

_music_playing:
	LDY #$05
	LDA (zaudio_ram_pointers), Y
	ASL
	BCC _play_note
	LDA z:zaudio_frame
	AND #%00000001
	BEQ _play_note
	JSR _play_note

_play_note:
	LDY #$02
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BEQ @done
	LDX #$FF
	DEY
	LDA (zaudio_ram_pointers), Y
	SEC
	SBC #$04
	STA (zaudio_ram_pointers), Y
	TXA
	INY
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	DEY
	ORA (zaudio_ram_pointers), Y
	BEQ @done
	LDY #$0A
	LDA (zaudio_ram_pointers), Y
	INY
	ORA (zaudio_ram_pointers), Y
	BNE @not_rest
	RTS

@not_rest:
	JMP _handle_played

@done:
	LDY #$05
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	STA (zaudio_ram_pointers), Y

_read_music_data:
	JSR _read_next_music_data
	AND #%11110000
	BNE @not_cmd
	JMP _music_cmd

@not_cmd:
	CMP #$20
	BNE @not_note_tied
	TXA
	AND #%00000111
	PHA
	JSR _read_music_data
	PLA
	JMP _handle_note_tied

@not_note_tied:
	CMP #$30
	BNE @not_triplet_note_set
	JMP _handle_triplet_note_flag

@not_triplet_note_set:
	TXA
	ROL
	ROL
	ROL
	ROL
	AND #%00000111
	TAY
	LDA _regular_note_length_table, Y
	JSR _calc_note_length

_handle_note_common:
	LDY #$06
	LDA (zaudio_ram_pointers), Y
	AND #%11100000
	BEQ @no_note_tied
	SEC
	SBC #$20
	STA z:zaudio_F4
	LDA (zaudio_ram_pointers), Y
	AND #%00011111
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	LDA z:zundo_sfx_channel
	LSR
	BCC @sfx_channel_not_used_1
	RTS

@sfx_channel_not_used_1:
	JMP _play_note_with_tied

@no_note_tied:
	TXA
	AND #%00011111
	BNE @not_rest
	TAX
	JMP @skip_read_freq_table

@not_rest:
	LDY #$01
	CPY z:zmusic_channel
	BNE @not_noise
	LDX #$00
	JMP @skip_read_freq_table

@not_noise:
	ASL
	LDY #$07
	CLC
	ADC (zaudio_ram_pointers), Y
	STA z:zaudio_F4
	LDA #$00
	INY
	ADC (zaudio_ram_pointers), Y
	STA z:zaudio_F5
	LDY #$01
	LDA (zaudio_F4), Y
	TAX
	DEY
	LDA (zaudio_F4), Y

@skip_read_freq_table:
	LDY #$0A
	STA (zaudio_ram_pointers), Y
	INY
	TXA
	STA (zaudio_ram_pointers), Y
	LDY #$0D
	LDA (zaudio_ram_pointers), Y
	STA z:zaudio_F4
	AND #%01111111
	BEQ @zframe
	JSR _init_volume_envelope

@zframe:
	LDA z:zundo_sfx_channel
	LSR
	BCC @sfx_channel_not_used_2
	RTS

@sfx_channel_not_used_2:
	LDA #$0C
	STA z:zaudio_F4
	JSR _play_note_with_modulator
	JMP _break_frame

_handle_note_tied:
	ROR
	ROR
	ROR
	ROR
	AND #%11100000
	STA z:zaudio_F4
	LDY #$06
	LDA (zaudio_ram_pointers), Y
	AND #%00011111
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	RTS

_handle_triplet_note_flag:
	LDA #%10000000
	LDY #$05
	ORA (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_music_cmd:
	JSR _audio_cmd_jmp

	.WORD _cmd_tempo
	.WORD _cmd_pitch_envelope
	.WORD _cmd_duty_cycle
	.WORD _cmd_volume
	.WORD _cmd_loop
	.WORD _cmd_base_note
	.WORD _cmd_dotted_note_set
	.WORD _cmd_volume_envelope
	.WORD _cmd_modulator
	.WORD _cmd_music_end

_cmd_tempo:
	JSR _read_next_music_data
	LDY #$04
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_cmd_pitch_envelope:
	JSR _read_next_music_data
	LDY #$09
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_cmd_duty_cycle:
	JSR _read_next_music_data
	STA z:zaudio_F4
	LDY #$0C
	LDA (zaudio_ram_pointers), Y
	AND #%00111111
	ORA z:zaudio_F4
	JMP _cmd_write_common

_cmd_volume:
	JSR _read_next_music_data
	LDY #$02
	CPY z:zmusic_channel
	BEQ _cmd_write_common
	STA z:zaudio_F4
	LDY #$0C
	LDA (zaudio_ram_pointers), Y
	AND #%11000000
	ORA z:zaudio_F4

_cmd_write_common:
	LDY #$0C
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_cmd_loop:
	JSR _read_next_music_data
	TXA
	BEQ @infinity_loop
	LDY #$05
	LDA (zaudio_ram_pointers), Y
	AND #%01111111
	STA z:zaudio_F4
	CPX z:zaudio_F4
	BEQ @regular_loop
	INC z:zaudio_F4
	LDA (zaudio_ram_pointers), Y
	AND #%10000000
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y

@infinity_loop:
	JSR _read_next_music_data
	PHA
	JSR _read_next_music_data
	PLA
	LDY #$00
	STA (zaudio_ram_pointers), Y
	INY
	TXA
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

@regular_loop:
	LDA (zaudio_ram_pointers), Y
	AND #%10000000
	STA (zaudio_ram_pointers), Y
	LDY #$00
	LDA #$02
	CLC
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	INY
	LDA #$00
	ADC (zaudio_ram_pointers), Y
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_cmd_base_note:
	JSR _read_next_music_data
	LDX #<_base_note_table
	LDY #>_base_note_table
	STX z:zaudio_F4
	STY z:zaudio_F5
	ASL
	LDY #$07
	CLC
	ADC z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	LDA #$00
	ADC z:zaudio_F5
	INY
	STA (zaudio_ram_pointers), Y
	JMP _read_music_data

_cmd_dotted_note_set:
	JSR _read_next_music_data
	ROL
	ROL
	ROL
	ROL
	AND #%00000111
	TAY
	LDA _dotted_note_length_table, Y
	JSR _calc_note_length
	JMP _handle_note_common

_cmd_volume_envelope:
	JSR _read_next_music_data
	LDY #$0D
	STA (zaudio_ram_pointers), Y
	PHA
	JSR _read_next_music_data
	LDY #$0F
	STA (zaudio_ram_pointers), Y
	PLA
	STA z:zaudio_F4
	AND #%01111111
	BEQ @zframe
	JSR _init_volume_envelope

@zframe:
	JMP _read_music_data

_init_volume_envelope:
	LDA #$00
	LDY #$0E
	STA (zaudio_ram_pointers), Y
	LDA z:zaudio_F4
	BPL @increase
	LDA #$0F
	JMP @decay

@increase:
	LDA #$00

@decay:
	STA z:zaudio_F4
	LDY #$0F
	LDA (zaudio_ram_pointers), Y
	AND #%11110000
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	RTS

_cmd_modulator:
	JSR _read_next_music_data
	STA z:zaudio_F4
	LDY #$06
	LDA (zaudio_ram_pointers), Y
	AND #%11100000
	ORA z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	LDA z:zundo_sfx_channel
	LSR
	BCS @skip
	JSR _handle_modulator_data

@skip:
	JMP _read_music_data

_handle_modulator_data:
	TXA
	BEQ @zmodulator
	LDA #$00

@loop_multi4:
	CLC
	ADC #$04
	DEX
	BNE @loop_multi4

@zmodulator:
	CLC
	ADC amodulation_pointers
	STA z:zaudio_F4
	LDA #$00
	ADC amodulation_pointers + 1
	STA z:zaudio_F5
	LDX #$00
	LDY #$14

@loop:
	LDA (zaudio_F4, X)
	STA (zaudio_ram_pointers), Y
	INY
	CPY #$18
	BNE @undone
	RTS

@undone:
	LDA #$01
	CLC
	ADC z:zaudio_F4
	STA z:zaudio_F4
	LDA #$00
	ADC z:zaudio_F5
	STA z:zaudio_F5
	JMP @loop

_cmd_music_end:
	LDY #$00
	LDA #$00
	STA (zaudio_ram_pointers), Y
	INY
	STA (zaudio_ram_pointers), Y
	LDA z:zaudio_header
	AND #%11110000
	STA z:zaudio_header
	LDA z:zundo_sfx_channel
	LSR
	BCC @init
	RTS

@init:
	LDX z:zmusic_apu_register_index
	INX
	INX
	LDY z:zmusic_channel
	JMP _init_channel

_read_next_music_data:
	LDY #$00
	LDA (zaudio_ram_pointers), Y
	STA z:zaudio_F4
	INY
	LDA (zaudio_ram_pointers), Y
	STA z:zaudio_F5
	DEY
	LDA (zaudio_F4), Y
	TAX
	LDA #$01
	CLC
	ADC z:zaudio_F4
	STA (zaudio_ram_pointers), Y
	LDA #$00
	ADC z:zaudio_F5
	INY
	STA (zaudio_ram_pointers), Y
	TXA
	RTS

_calc_note_length:
	STA z:zaudio_F4
	LDA #$00
	STA z:zaudio_F5
	LDY #$04
	LDA (zaudio_ram_pointers), Y
	TAY
	LDA #$00

@loop:
	CLC
	ADC z:zaudio_F4
	BCC @not_9bits
	INC z:zaudio_F5

@not_9bits:
	DEY
	BNE @loop
	LDY #$02
	STA (zaudio_ram_pointers), Y
	INY
	LDA z:zaudio_F5
	STA (zaudio_ram_pointers), Y
	RTS

_regular_note_length_table:
	.BYTE 0  ;unused
	.BYTE 0  ;unused
	.BYTE 2  ;2
	.BYTE 4  ;4
	.BYTE 8  ;8
	.BYTE 16 ;16
	.BYTE 32 ;32
	.BYTE 64 ;64

_dotted_note_length_table:
	.BYTE 0  ;unused
	.BYTE 0  ;unused
	.BYTE 3  ;2
	.BYTE 6  ;4
	.BYTE 12 ;8
	.BYTE 24 ;16
	.BYTE 48 ;32
	.BYTE 96 ;64

_base_note_table:
	.WORD nC_0
	.WORD nDb0
	.WORD nD_0
	.WORD nEb0
	.WORD nE_0
	.WORD nF_0
	.WORD nGb0
	.WORD nG_0
	.WORD nAb0
	.WORD nA_0
	.WORD nBb0
	.WORD nB_0
	.WORD nC_1
	.WORD nDb1
	.WORD nD_1
	.WORD nEb1
	.WORD nE_1
	.WORD nF_1
	.WORD nGb1
	.WORD nG_1
	.WORD nAb1
	.WORD nA_1
	.WORD nBb1
	.WORD nB_1
	.WORD nC_2
	.WORD nDb2
	.WORD nD_2
	.WORD nEb2
	.WORD nE_2
	.WORD nF_2
	.WORD nGb2
	.WORD nG_2
	.WORD nAb2
	.WORD nA_2
	.WORD nBb2
	.WORD nB_2
	.WORD nC_3
	.WORD nDb3
	.WORD nD_3
	.WORD nEb3
	.WORD nE_3
	.WORD nF_3
	.WORD nGb3
	.WORD nG_3
	.WORD nAb3
	.WORD nA_3
	.WORD nBb3
	.WORD nB_3
	.WORD nC_4
	.WORD nDb4
	.WORD nD_4
	.WORD nEb4
	.WORD nE_4
	.WORD nF_4
	.WORD nGb4
	.WORD nG_4
	.WORD nAb4
	.WORD nA_4
	.WORD nBb4
	.WORD nB_4
	.WORD nC_5
	.WORD nDb5
	.WORD nD_5
	.WORD nEb5
	.WORD nE_5
	.WORD nF_5
	.WORD nGb5
	.WORD nG_5
	.WORD nAb5
	.WORD nA_5
	.WORD nBb5
	.WORD nB_5
	.WORD nC_6
	.WORD nDb6
	.WORD nD_6
	.WORD nEb6
	.WORD nE_6
	.WORD nF_6
	.WORD nGb6
	.WORD nG_6
	.WORD nAb6
	.WORD nA_6
	.WORD nBb6
	.WORD nB_6
	.WORD nC_7
	.WORD nDb7
	.WORD nD_7
	.WORD nEb7
	.WORD nE_7
	.WORD nF_7
	.WORD nGb7
	.WORD nG_7
	.WORD nAb7
	.WORD nA_7
	.WORD nBb7
	.WORD nB_7

;unused
	.BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
	.BYTE $FF, $FF, $FF
