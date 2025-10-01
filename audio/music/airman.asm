music_airman:
	music_header
	.WORD music_airman_pulse_1
	.WORD music_airman_pulse_2
	.WORD music_airman_triangle
	.WORD music_airman_noise
	.WORD music_airman_modulator

music_airman_pulse_1:
	tempo 5

@loop_1:
	volume 12
	duty_cycle 0
	base_note F_2
	volume_envelope volume_decay, 1, 18
	note F_3, 16
	note Ab3, 8
	note G_3, 16
	note Gb3, 16
	note F_3, 16
	note Ab3, 16
	note G_3, 16
	note Gb3, 16
	rest 8
	number_of_note_tied 2
	note F_3, 16
	modulator 1
	note F_3, 16
	modulator 0
	note F_3, 8
	note Eb3, 8
	note Db3, 8
	note C_3, 16
	note Db3, 8
	note Eb3, 8
	note Ab2, 16
	note Bb2, 8
	note C_3, 8
	note Bb2, 8
	rest 16
	note Ab3, 8
	note G_3, 16
	note Gb3, 16
	note F_3, 16
	note Ab3, 16
	note G_3, 16
	note Gb3, 16
	rest 8
	number_of_note_tied 2
	note F_3, 16
	modulator 1
	note F_3, 16
	modulator 0
	note F_3, 8
	note Eb3, 8
	note Db3, 8
	note C_3, 16
	note Db3, 8
	note Eb3, 8
	note Ab2, 16
	note Bb2, 8
	note C_3, 8
	note Bb2, 8
	duty_cycle 2
	volume_envelope volume_decay, 1, 4
	rest 8
	note Bb2, 8
	note C_3, 8
	note Bb2, 8
	note Db3, 8
	note Bb2, 8
	note Eb3, 8
	note Bb2, 8
	volume_envelope volume_decay, 1, 16
	duty_cycle 3
	base_note F_3
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	rest 8
	base_note F_2
	volume_envelope volume_decay, 1, 18
	number_of_note_tied 2
	note Bb3, 16
	modulator 1
	note Bb3, 16
	modulator 0
	note F_3, 8
	note Ab3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 8
	note Bb3, 16
	note F_3, 8
	note Ab3, 16
	note A_3, 16
	dotted_note_set
	note Bb3, 16
	note Ab3, 16
	dotted_note_set
	note Bb3, 16
	note F_4, 32
	note Bb3, 8
	note A_3, 16
	note Ab3, 32
	note Eb3, 8
	note F_3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note C_4, 8
	note Bb3, 8
	note Ab3, 8
	dotted_note_set
	note Ab3, 16
	note Eb3, 16
	dotted_note_set
	note F_3, 16
	rest 8
	note Ab3, 8
	note Ab3, 16
	note Ab3, 8
	note A_3, 8
	rest 8
	note Bb3, 16
	note Ab3, 8
	note F_3, 8
	note Bb3, 8
	note C_4, 8
	note Bb3, 8
	note Db4, 8
	note Eb4, 8
	base_note F_3
	note E_4, 4
	note F_4, 8
	note Ab4, 8
	note F_4, 4
	note Ab4, 4
	note A_4, 4
	note Bb4, 4
	note Db5, 4
	note C_5, 4
	note Bb4, 4
	note Ab4, 4
	note A_4, 4
	note Bb4, 4
	note Ab4, 4
	dotted_note_set
	note F_4, 16
	dotted_note_set
	note Eb4, 16
	note Db4, 16
	rest 8
	dotted_note_set
	note C_4, 16
	note Bb3, 16
	note Ab3, 16
	note D_4, 4
	number_of_note_tied 2
	note Eb4, 4
	note Eb4, 16
	note G_4, 4
	number_of_note_tied 2
	note Ab4, 4
	note Ab4, 16
	note D_5, 4
	number_of_note_tied 3
	note Eb5, 4
	note Eb5, 16
	modulator 1
	note Eb5, 16
	modulator 0
	note C_5, 16
	note B_4, 8
	note Bb4, 8
	note Ab4, 8
	note Gb4, 4
	note F_4, 4
	note Gb4, 4
	note Ab4, 4
	note Bb4, 4
	note Ab4, 4
	note Bb4, 4
	note C_5, 4
	note Db5, 4
	note C_5, 4
	note Db5, 4
	note Eb5, 4
	note F_5, 4
	note Eb5, 4
	note F_5, 4
	note Gb5, 4
	pitch_envelope $01
	note B_5, 32
	pitch_envelope $00
	base_note F_2
	note Db4, 8
	note C_4, 8
	rest 8
	volume_envelope volume_decay, 1, 18
	duty_cycle 2
	note Bb3, 8
	rest 8
	note Bb3, 8
	note Bb3, 8
	note Ab3, 8
	note Bb3, 16
	rest 16
	note Bb3, 8
	rest 8
	note Bb3, 8
	note Ab3, 8
	note Bb3, 8
	note Db4, 8
	rest 8
	note F_4, 8
	rest 8
	number_of_note_tied 2
	note Eb4, 16
	modulator 1
	note Eb4, 32
	modulator 0
	rest 8
	note Ab4, 16
	note Gb4, 16
	note F_4, 16
	note Eb4, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	note Bb3, 8
	note Ab3, 8
	note Bb3, 16
	rest 16
	note Bb3, 8
	rest 8
	note Bb3, 8
	note Ab3, 8
	note Bb3, 8
	note Db4, 8
	rest 8
	note F_4, 8
	rest 8
	number_of_note_tied 2
	note Eb4, 16
	note Eb4, 8
	note Eb4, 8
	note C_4, 8
	rest 8
	number_of_note_tied 3
	note F_4, 16
	modulator 1
	note F_4, 16
	note F_4, 8
	modulator 0
	volume 14
	duty_cycle 0
	note F_3, 8
	note Db3, 16
	note Eb3, 8
	loop 0, @loop_1

music_airman_pulse_2:
	tempo 5

@loop_1:
	volume 12
	duty_cycle 0
	base_note F_2
	volume_envelope volume_decay, 1, 18
	note Db3, 16
	note F_3, 8
	note E_3, 16
	note Eb3, 16
	note Db3, 16
	note F_3, 16
	note E_3, 16
	note Eb3, 16
	rest 8
	note Db3, 32
	note Db3, 8
	note C_3, 8
	note Bb2, 8
	note Ab2, 16
	note Bb2, 8
	note C_3, 8
	base_note F_1
	note F_2, 16
	note F_2, 8
	note Ab2, 8
	note F_2, 8
	base_note F_2
	rest 16
	note F_3, 8
	note E_3, 16
	note Eb3, 16
	note Db3, 16
	note F_3, 16
	note E_3, 16
	note Eb3, 16
	rest 8
	note Db3, 32
	note Db3, 8
	note C_3, 8
	note Bb2, 8
	note Ab2, 16
	note Bb2, 8
	note C_3, 8
	base_note F_1
	note F_2, 16
	note F_2, 8
	note Ab2, 8
	note F_2, 8
	base_note F_2
	volume 8
	duty_cycle 2
	volume_envelope volume_decay, 1, 4
	rest 4
	rest 8
	note Bb2, 8
	note C_3, 8
	note Bb2, 8
	note Db3, 8
	note Bb2, 8
	note Eb3, 8
	note Bb2, 4
	volume_envelope volume_decay, 1, 16
	duty_cycle 3
	volume 12
	base_note F_3
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note A_3, 8
	rest 8
	base_note F_2
	volume_envelope volume_decay, 1, 18
	volume 8
	rest 8
	note Bb3, 32
	note F_3, 8
	note Ab3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 8
	note Bb3, 16
	note F_3, 8
	note Ab3, 16
	note A_3, 16
	dotted_note_set
	note Bb3, 16
	note Ab3, 16
	dotted_note_set
	note Bb3, 16
	note F_4, 32
	note Bb3, 8
	note A_3, 16
	note Ab3, 32
	note Eb3, 8
	note F_3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note C_4, 8
	note Bb3, 8
	note Ab3, 8
	dotted_note_set
	note Ab3, 16
	note Eb3, 16
	dotted_note_set
	note F_3, 16
	rest 8
	note Ab3, 8
	note Ab3, 8
	note C_4, 8
	note C_4, 8
	rest 8
	note Db4, 16
	rest 8
	note Ab3, 8
	note F_3, 8
	note Bb3, 8
	note C_4, 8
	note Bb3, 8
	note Db4, 8
	note Eb4, 8
	base_note F_3
	note E_4, 4
	note F_4, 8
	note Ab4, 8
	note F_4, 4
	note Ab4, 4
	note A_4, 4
	note Bb4, 4
	note Db5, 4
	note C_5, 4
	note Bb4, 4
	note Ab4, 4
	note A_4, 4
	note Bb4, 4
	note Ab4, 4
	dotted_note_set
	note F_4, 16
	dotted_note_set
	note Eb4, 16
	note Db4, 16
	rest 8
	dotted_note_set
	note C_4, 16
	note Bb3, 16
	note Ab3, 16
	note D_4, 4
	number_of_note_tied 2
	note Eb4, 4
	note Eb4, 16
	note G_4, 4
	number_of_note_tied 2
	note Ab4, 4
	note Ab4, 16
	note D_5, 4
	number_of_note_tied 3
	note Eb5, 4
	note Eb5, 32
	note C_5, 16
	note B_4, 8
	note Bb4, 8
	note Ab4, 8
	note Gb4, 4
	note F_4, 4
	note Gb4, 4
	note Ab4, 4
	note Bb4, 4
	note Ab4, 4
	note Bb4, 4
	note C_5, 4
	note Db5, 4
	note C_5, 4
	note Db5, 4
	note Eb5, 4
	note F_5, 4
	note Eb5, 4
	note F_5, 4
	note Gb5, 4
	pitch_envelope $01
	note B_5, 32
	pitch_envelope $00
	base_note F_2
	note Db4, 8
	note C_4, 8
	volume_envelope volume_decay, 1, 18
	duty_cycle 2
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 16
	rest 16
	note Gb3, 8
	rest 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note Db4, 8
	rest 8
	duty_cycle 0
	rest 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note Db4, 16
	rest 8
	duty_cycle 2
	dotted_note_set
	rest 8
	note Ab4, 16
	note Gb4, 16
	dotted_note_set
	note F_4, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 16
	rest 16
	note Gb3, 8
	rest 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note Db4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	rest 8
	note Eb4, 8
	note C_4, 8
	rest 8
	note F_4, 32
	volume 14
	note C_3, 8
	note Bb2, 16
	note C_3, 8
	loop 0, @loop_1

music_airman_triangle:
	tempo 5
	triangle_note_length $31

@loop_4:
	base_note F_2

@loop_1:
	note Bb3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab3, 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Bb3, 8
	rest 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab2, 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Bb3, 8
	note Gb3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Gb3, 8
	note Db3, 8
	note Gb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 16
	note F_3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Ab3, 16
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	number_of_note_tied 2
	note Bb3, 8
	loop 1, @loop_1
	note Bb3, 8
	rest 8
	pitch_envelope $10
	note F_4, 16
	note Gb2, 8
	note Gb2, 8
	note F_4, 16
	pitch_envelope $00
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 8

@loop_2:
	note Bb3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab3, 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Bb3, 8
	rest 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab2, 8
	note A_3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note A_3, 8
	note Bb3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab3, 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Bb3, 8
	rest 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note F_3, 8
	note Ab2, 8
	note A_3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note A_3, 8
	note Ab3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Eb3, 8
	note Gb3, 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Ab3, 8
	rest 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Eb3, 8
	note Gb2, 8
	note Gb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note G_3, 8
	note Ab3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Eb3, 8
	note Gb3, 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Ab3, 8
	rest 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Eb3, 8
	pitch_envelope $10
	note Bb4, 8
	note Bb4, 16
	note Bb4, 8
	pitch_envelope $00
	loop 1, @loop_2

@loop_3:
	rest 8
	note Gb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Db4, 8
	note Gb3, 8
	pitch_envelope $10
	note C_5, 4
	note C_5, 4
	note Bb4, 16
	pitch_envelope $00
	note Gb3, 8
	rest 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Db3, 8
	note Gb3, 8
	note Bb3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Ab3, 8
	rest 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Eb4, 8
	note Ab3, 8
	pitch_envelope $10
	note C_5, 4
	note C_5, 4
	note Bb4, 16
	pitch_envelope $00
	note Ab3, 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Ab3, 8
	rest 8
	note Ab3, 8
	pitch_envelope $10
	note Bb4, 8
	pitch_envelope $00
	note Gb3, 8
	loop 1, @loop_3
	loop 0, @loop_4

music_airman_noise:
	tempo 5

@loop_1:
	volume_envelope volume_decay, 6, 2
	volume 8
	noise_note 10, 8
	noise_note 10, 8
	volume_envelope volume_decay, 4, 4
	noise_note 5, 8
	volume_envelope volume_decay, 6, 2
	volume 6
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	volume_envelope volume_decay, 4, 4
	noise_note 5, 8
	volume 13
	volume_envelope volume_decay, 4, 3
	noise_note 10, 8
	loop 0, @loop_1

music_airman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 4, 2, 1, volume_decay, 0, 0
