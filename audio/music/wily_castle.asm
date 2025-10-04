music_wily_castle:
	music_header
	.WORD music_wily_castle_pulse_1
	.WORD music_wily_castle_pulse_2
	.WORD music_wily_castle_triangle
	.WORD music_wily_castle_noise
	.WORD music_wily_castle_modulator

music_wily_castle_pulse_1:
	tempo 6
	volume 14
	duty_cycle 3
	base_note Eb3
	volume_envelope volume_decay, 2, 34
	rest 8
	rest 16
	note Ab3, 8
	note D_4, 8
	note Db4, 8
	note B_3, 8
	note Ab3, 8
	rest 8
	note B_3, 8
	note Gb3, 8
	rest 8
	note G_3, 8
	rest 8
	note Ab3, 8
	rest 8
	note B_3, 8
	note Bb3, 8
	note A_3, 8
	note Ab3, 8
	note D_4, 8
	note Db4, 8
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note D_4, 8
	number_of_note_tied 2
	note F_4, 16
	modulator 1
	note F_4, 32
	modulator 0
	note Db4, 8
	rest 8
	note Eb4, 8
	music_end

music_wily_castle_pulse_2:
	tempo 6
	dotted_note_set
	rest 16
	duty_cycle 2
	base_note Eb2
	volume_envelope volume_attack, 6, 1
	volume 7
	pitch_envelope $FF
	note Ab3, 16
	note F_3, 16
	note G_3, 16
	note E_3, 16
	note Gb3, 16
	note Eb3, 16
	note F_3, 16
	note D_3, 16
	note Ab3, 16
	note F_3, 16
	note G_3, 16
	note E_3, 16
	note Gb3, 16
	pitch_envelope $00
	modulator 0
	duty_cycle 1
	note Ab2, 16
	rest 8
	note Bb3, 8
	rest 8
	note B_3, 8
	music_end

music_wily_castle_triangle:
	tempo 6
	triangle_note_length $50
	base_note Eb3
	pitch_envelope $10
	note Ab3, 4
	note Ab3, 4
	note Ab5, 16
	pitch_envelope $00

@loop_1:
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	note F_3, 8
	rest 8
	note F_3, 8
	note F_3, 8
	note F_3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Ab3, 8
	loop 1, @loop_1
	music_end

music_wily_castle_noise:
	tempo 6
	volume 6
	rest 8
	noise_note 8, 16

@loop_1:
	volume 10
	volume_envelope volume_decay, 8, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 7, 4
	noise_note 8, 8
	volume_envelope volume_decay, 8, 2
	noise_note 12, 8
	loop 6, @loop_1
	volume_envelope volume_decay, 7, 4
	rest 8
	noise_note 8, 8
	rest 8
	noise_note 8, 8
	music_end

music_wily_castle_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
