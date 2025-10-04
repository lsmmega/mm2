music_wily_ufo:
	music_header
	.WORD music_wily_ufo_pulse_1
	.WORD music_wily_ufo_pulse_2
	.WORD $0000
	.WORD $0000
	.WORD music_wily_ufo_modulator

music_wily_ufo_pulse_1:
	tempo 8

@loop_1:
	volume 15
	duty_cycle 1
	volume_envelope volume_decay, 1, 127
	pitch_envelope $FF
	base_note B_3
	modulator 1
	note Ab5, 8
	loop 0, @loop_1

music_wily_ufo_pulse_2:
	tempo 8

@loop_1:
	volume 10
	duty_cycle 1
	volume_envelope volume_decay, 1, 127
	pitch_envelope $FF
	base_note B_3
	modulator 1
	note A_5, 8
	loop 0, @loop_1

music_wily_ufo_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 1, 2, 0, volume_decay, 0, 0
