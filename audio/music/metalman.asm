music_metalman:
	music_header
	.WORD music_metalman_pulse_1
	.WORD music_metalman_pulse_2
	.WORD music_metalman_triangle
	.WORD music_metalman_noise
	.WORD music_metalman_modulator

music_metalman_pulse_1:
	tempo 6

@loop_1:
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 1, 10
	base_note F_2
	number_of_note_tied 2
	note Bb2, 16
	modulator 1
	note D_4, 32
	modulator 0
	note Bb2, 4
	note F_3, 4
	rest 4
	note Eb3, 4
	rest 4
	dotted_note_set
	note Db3, 8
	note Eb3, 8
	note Db3, 4
	number_of_note_tied 2
	note Bb2, 4
	note Bb2, 16
	note Ab2, 4
	note Ab2, 4
	rest 4
	number_of_note_tied 3
	note Bb2, 4
	note Bb2, 8
	modulator 1
	note Bb2, 16
	modulator 0
	note C_3, 4
	rest 4
	note Db3, 8
	rest 4
	number_of_note_tied 2
	note Bb2, 4
	note Bb2, 16
	note Db4, 16
	note Eb4, 16
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Eb4, 16
	loop 1, @loop_1
	note Bb3, 4
	note Bb3, 4
	note Ab3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 4
	rest 4
	note Bb3, 16
	note F_3, 8
	note Ab3, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 16
	modulator 1
	note Bb3, 16
	modulator 0
	rest 8
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	rest 8
	note Db4, 8
	note C_4, 8
	rest 4
	number_of_note_tied 2
	note Db4, 4
	note Db4, 8
	note C_4, 8
	number_of_note_tied 2
	note Bb3, 16
	modulator 1
	note Bb3, 16
	modulator 0
	rest 8
	note F_3, 8
	note Ab3, 8
	note A_3, 8
	note Bb3, 4
	note Bb3, 4
	note Ab3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 4
	rest 4
	note Bb3, 16
	note F_3, 8
	note Ab3, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 16
	modulator 1
	note Bb3, 16
	modulator 0
	rest 8
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	rest 8
	note Db4, 8
	note C_4, 8
	rest 4
	number_of_note_tied 2
	note Db4, 4
	note Db4, 8
	note C_4, 8
	rest 8
	note Db4, 4
	rest 4
	note C_4, 8
	rest 4
	note Db4, 4
	rest 16
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	dotted_note_set
	note Eb4, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	dotted_note_set
	note Ab3, 8
	note Bb3, 16
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	note Eb4, 4
	rest 4
	note F_4, 4
	rest 4
	note F_4, 8
	rest 4
	note F_4, 4
	note Eb4, 4
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note Bb3, 4
	note Ab3, 4
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	dotted_note_set
	note Eb4, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	dotted_note_set
	note Ab3, 8
	note Bb3, 16
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	note Eb4, 4
	rest 4
	note F_4, 4
	rest 4
	note F_4, 4
	note F_4, 4
	rest 4
	note F_4, 4
	rest 4
	note F_4, 4
	rest 4
	dotted_note_set
	note F_4, 8
	note F_3, 4
	note F_3, 4
	dotted_note_set
	note Ab3, 8
	loop 0, @loop_1

music_metalman_pulse_2:
	tempo 6

@loop_1:
	volume 10
	base_note F_3
	duty_cycle 0
	volume_envelope volume_decay, 1, 6
	note Bb3, 4
	note Db4, 4
	note F_4, 4
	rest 4
	note Bb3, 4
	rest 8
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	number_of_note_tied 2
	note Bb3, 4
	loop 2, @loop_1
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 1, 10
	base_note F_2
	note Bb2, 16
	note C_3, 16
	note Bb2, 4
	rest 4
	note Bb2, 4
	rest 4
	note C_3, 16

@loop_2:
	base_note F_3
	volume 10
	duty_cycle 0
	volume_envelope volume_decay, 1, 6
	note Bb3, 4
	note Db4, 4
	note F_4, 4
	rest 4
	note Bb3, 4
	rest 8
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	number_of_note_tied 2
	note Bb3, 4
	loop 2, @loop_2
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 1, 10
	base_note F_2
	note Bb2, 16
	note C_3, 16
	note Bb2, 4
	rest 4
	note Bb2, 4
	rest 4
	note C_3, 16

@loop_3:
	base_note F_3
	volume 8
	duty_cycle 0
	volume_envelope volume_decay, 1, 6
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 8
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	number_of_note_tied 2
	note Bb3, 4
	loop 1, @loop_3
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 1, 10
	base_note F_2
	note Bb3, 16
	rest 8
	note Bb3, 8
	note Eb3, 8
	rest 4
	number_of_note_tied 2
	note F_3, 8
	note F_3, 4
	note Eb3, 8
	note Db4, 16
	note C_4, 8
	rest 4
	note Db4, 4
	rest 4
	dotted_note_set
	note Db4, 8
	note C_4, 8
	note C_4, 8

@loop_4:
	base_note F_3
	volume 8
	duty_cycle 0
	volume_envelope volume_decay, 1, 6
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 8
	note Bb3, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Ab3, 4
	number_of_note_tied 2
	note Bb3, 4
	loop 1, @loop_4
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 1, 10
	base_note F_2
	note Bb3, 16
	rest 8
	note Bb3, 8
	note Eb3, 8
	rest 4
	number_of_note_tied 2
	note F_3, 8
	note F_3, 4
	note Eb3, 8
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Ab2, 8
	note Ab2, 4
	duty_cycle 0
	pitch_envelope $44
	modulator 1
	number_of_note_tied 2
	note C_5, 4
	note C_5, 32
	pitch_envelope $00
	modulator 0
	volume 9
	rest 8
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Db4, 4
	dotted_note_set
	note C_4, 8
	note Db4, 16
	rest 8
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	note Eb4, 4
	rest 4
	note F_4, 4
	rest 4
	note F_4, 8
	rest 4
	note F_4, 4
	note Eb4, 4
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	note C_4, 4
	note Db4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note Bb3, 4
	note Ab3, 4
	note Eb4, 16
	note Db4, 16
	note C_4, 16
	note Db4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Db4, 4
	dotted_note_set
	note C_4, 8
	note Db4, 16
	rest 8
	note Bb3, 4
	dotted_note_set
	note F_4, 8
	note Eb4, 16
	note Db4, 16
	note C_4, 8
	note Db4, 4
	note Eb4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	dotted_note_set
	note C_4, 8
	note F_3, 4
	note F_3, 4
	dotted_note_set
	note Ab3, 8
	modulator 0
	loop 0, @loop_1

music_metalman_triangle:
	tempo 6
	triangle_note_length $50
	base_note F_2

@loop_1:
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 16
	note Bb3, 8
	rest 4
	note Bb3, 4
	note Db4, 8
	note F_4, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 16
	note Bb3, 8
	rest 4
	note Bb3, 4
	note Bb3, 8
	note Ab3, 8
	note Gb3, 4
	rest 4
	note Gb3, 4
	rest 4
	note F_3, 16
	note Gb3, 8
	rest 4
	note Gb3, 4
	note Gb3, 8
	note F_3, 8
	note Gb3, 16
	note Ab3, 16
	note Gb3, 4
	rest 4
	note Gb3, 4
	rest 4
	note Ab3, 16
	loop 1, @loop_1
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 16
	note Bb3, 8
	rest 4
	note Bb3, 4
	note Db4, 8
	note F_4, 8
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 16
	note Eb4, 8
	rest 4
	note Eb4, 4
	note Bb3, 8
	note Ab3, 8
	note Gb3, 8
	rest 16
	note Gb3, 8
	note Ab3, 8
	rest 4
	note Ab3, 4
	note Ab3, 8
	note Ab3, 8
	note Bb3, 16
	note Ab3, 8
	rest 4
	note Bb3, 4
	rest 4
	dotted_note_set
	note Bb3, 8
	note Ab3, 8
	note A_3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 16
	note Bb3, 8
	rest 4
	note Bb3, 4
	note Db4, 8
	note F_4, 8
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 16
	note Eb4, 8
	rest 4
	note Eb4, 4
	note Bb3, 8
	note Ab3, 8
	note Gb3, 8
	rest 16
	note Gb3, 8
	note Ab3, 8
	rest 4
	note Ab3, 4
	note Ab3, 8
	note Ab3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Ab3, 8
	note Ab3, 4
	note Bb3, 4
	pitch_envelope $10
	rest 4
	note G_4, 4
	note G_4, 4
	note G_4, 4
	note F_4, 4
	note F_4, 4
	note Eb4, 4
	note Eb4, 4
	pitch_envelope $00
	base_note F_3
	note Eb4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	note Eb4, 8
	note Eb4, 8
	note Db4, 4
	note C_4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Db4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	note Db4, 8
	rest 4
	note Db4, 4
	note Eb4, 8
	note F_4, 8
	note Eb4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	note Eb4, 8
	note Eb4, 8
	note Db4, 4
	note F_4, 4
	rest 4
	note F_4, 8
	note F_4, 4
	pitch_envelope $10
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	note D_4, 4
	note D_4, 4
	note D_4, 4
	note D_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	pitch_envelope $00
	note Eb4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	note Eb4, 8
	note Eb4, 8
	note Db4, 4
	note C_4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	rest 4
	note Db4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	note Db4, 8
	rest 4
	note Db4, 4
	note Eb4, 8
	note F_4, 8
	note Eb4, 4
	note Eb4, 4
	note Db4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Db4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	note Eb4, 8
	note Eb4, 8
	note Db4, 4
	note F_4, 4
	base_note F_2
	rest 4
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 8
	note F_3, 4
	note F_3, 4
	dotted_note_set
	note F_3, 8
	loop 0, @loop_1

music_metalman_noise:
	tempo 6

@loop_1:
	volume_envelope volume_decay, 9, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	loop 6, @loop_1
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	rest 8
	noise_note 2, 8
	rest 8
	noise_note 2, 4
	rest 4
	noise_note 2, 4
	rest 4
	noise_note 2, 16
	pitch_envelope $00

@loop_2:
	volume_envelope volume_decay, 9, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	loop 6, @loop_2
	volume_envelope volume_decay, 9, 2
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 4
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	rest 32

@loop_3:
	volume_envelope volume_decay, 9, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	loop 2, @loop_3
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	rest 4
	noise_note 2, 8
	rest 4
	noise_note 2, 16
	rest 32
	pitch_envelope $00

@loop_4:
	volume_envelope volume_decay, 9, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 9, 2
	noise_note 12, 4
	noise_note 12, 4
	loop 2, @loop_4
	volume_envelope volume_decay, 5, 4
	pitch_envelope $FF
	rest 4
	noise_note 2, 4
	noise_note 2, 8
	noise_note 2, 4
	rest 4
	noise_note 2, 4
	rest 4
	noise_note 2, 16
	rest 16
	pitch_envelope $00
	loop 0, @loop_1

music_metalman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
