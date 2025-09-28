music_woodman:
	music_header
	.WORD music_woodman_pulse_1
	.WORD music_woodman_pulse_2
	.WORD music_woodman_triangle
	.WORD music_woodman_noise
	.WORD music_woodman_modulator

music_woodman_pulse_1:
	tempo 5
	volume 13
	base_note Db2
	duty_cycle 2
	volume_envelope volume_decay, 7, 4
	pitch_envelope $30

@loop_1:
	note C_3, 16
	note C_3, 16
	note C_3, 8
	note D_3, 8
	note C_3, 16
	note C_3, 8
	note C_3, 8
	rest 8
	note C_3, 16
	note C_3, 8
	note C_3, 16
	loop 1, @loop_1
	pitch_envelope $00
	duty_cycle 3
	volume_envelope volume_decay, 1, 8
	note C_4, 4
	note B_3, 4
	note Bb3, 4
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note D_3, 4
	note Db3, 4
	note C_3, 4
	note B_2, 4
	note B_3, 8
	rest 8
	note B_3, 8
	rest 16
	note B_3, 8
	rest 8
	note B_3, 8

@loop_3:
	duty_cycle 2
	base_note Db3
	volume 12
	number_of_note_tied 3
	note A_3, 8

@loop_2:
	volume_envelope volume_decay, 1, 16
	note A_3, 16
	modulator 1
	note A_3, 16
	modulator 0
	note A_3, 8
	note Ab3, 8
	rest 8
	note A_3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note A_3, 8
	rest 8
	note Db4, 16
	number_of_note_tied 2
	note B_3, 16
	modulator 1
	note B_3, 16
	modulator 0
	note B_3, 16
	note A_3, 8
	note Db4, 8
	rest 8
	note B_3, 32
	note B_3, 8
	note A_3, 8
	dotted_note_set
	note B_3, 32
	rest 8
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note B_3, 16
	note A_3, 16
	note Ab3, 16
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note Gb3, 32
	note B_3, 8
	rest 8
	note B_3, 8
	rest 16
	note B_3, 8
	rest 8
	note B_3, 8
	number_of_note_tied 2
	note A_3, 8
	loop 1, @loop_2
	number_of_note_tied 2
	note A_3, 16
	modulator 1
	note A_3, 16
	modulator 0
	note A_3, 8
	note Ab3, 8
	rest 8
	note A_3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note A_3, 8
	rest 8
	note Db4, 16
	dotted_note_set
	note B_3, 32
	rest 8
	note A_3, 8
	note E_3, 16
	note Gb3, 16
	note Ab3, 16
	note B_3, 16
	number_of_note_tied 2
	note C_4, 16
	modulator 1
	note C_4, 16
	modulator 0
	note C_4, 8
	note B_3, 8
	rest 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	rest 8
	note A_3, 16
	note C_4, 16
	note Gb5, 4
	note F_5, 4
	note E_5, 4
	note Eb5, 4
	note D_5, 4
	note Db5, 4
	note C_5, 4
	note B_4, 4
	note Bb4, 4
	note A_4, 4
	note Ab4, 4
	note G_4, 4
	note Gb4, 4
	note F_4, 4
	note Db4, 8
	rest 8
	note Db4, 8
	rest 16
	note Db4, 8
	rest 8
	note Db4, 8
	loop 0, @loop_3

music_woodman_pulse_2:
	tempo 5
	volume 10
	base_note Db4
	duty_cycle 2
	volume_envelope volume_decay, 2, 1
	pitch_envelope $10

@loop_1:
	rest 16
	note A_4, 16
	loop 7, @loop_1
	pitch_envelope $00
	duty_cycle 3
	base_note Db2
	volume_envelope volume_decay, 1, 8
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note D_3, 4
	note Db3, 4
	note C_3, 4
	note B_2, 4
	note Bb2, 4
	note A_2, 4
	note Ab2, 4
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 16
	note Ab3, 8
	rest 8
	note Ab3, 8

@loop_2:
	volume_envelope volume_decay, 2, 18
	base_note Db2
	volume 8
	duty_cycle 2
	number_of_note_tied 2
	note Gb3, 8
	note Gb3, 32
	note Gb3, 8
	note E_3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Gb3, 8
	rest 8
	note A_3, 16
	note G_3, 32
	note G_3, 16
	note Gb3, 8
	note A_3, 8
	rest 8
	note G_3, 32
	note G_3, 8
	note Gb3, 8
	dotted_note_set
	note G_3, 32
	rest 8
	note G_3, 8
	dotted_note_set
	note Ab3, 16
	note Ab3, 16
	note Db3, 16
	note Db3, 16
	rest 32
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 16
	note Ab3, 8
	rest 8
	note Ab3, 8
	loop 1, @loop_2
	rest 8
	base_note Db3
	volume 8
	duty_cycle 2
	volume_envelope volume_decay, 1, 18
	modulator 1
	number_of_note_tied 2
	note A_3, 8
	note A_3, 32
	note A_3, 8
	note Ab3, 8
	rest 8
	note A_3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note A_3, 8
	rest 8
	note Db4, 16
	dotted_note_set
	note B_3, 32
	rest 8
	note A_3, 8
	note E_3, 16
	note Gb3, 16
	note Ab3, 16
	note B_3, 16
	note C_4, 32
	note C_4, 8
	note B_3, 8
	rest 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	rest 8
	note A_3, 16
	note C_4, 8
	modulator 0
	volume_envelope volume_decay, 1, 8
	volume 10
	note Ab4, 4
	note G_4, 4
	note Gb4, 4
	note F_4, 4
	note E_4, 4
	note Eb4, 4
	note D_4, 4
	note Db4, 4
	note C_4, 4
	note B_3, 4
	note Bb3, 4
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 16
	note Ab3, 8
	rest 8
	note Ab3, 8
	loop 0, @loop_2

music_woodman_triangle:
	tempo 5
	triangle_note_length $15
	base_note Db4
	pitch_envelope $10

@loop_1:
	rest 16
	note Ab4, 16
	loop 5, @loop_1
	note Gb5, 8
	note Gb5, 4
	note Gb5, 4
	note Eb5, 8
	note Eb5, 8
	note Db5, 8
	note Db5, 8
	note B_4, 8
	note B_4, 8
	pitch_envelope $00
	base_note Db3
	note Gb4, 4
	note F_4, 4
	note E_4, 4
	note Eb4, 4
	note D_4, 4
	note Db4, 4
	note C_4, 4
	note B_3, 4
	note Bb3, 4
	note A_3, 4
	note Ab3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 8
	rest 8
	note E_3, 8
	rest 8
	pitch_envelope $10
	note Gb5, 4
	note Gb5, 4
	note Gb5, 8
	note Gb5, 8
	note Gb5, 8
	pitch_envelope $00
	number_of_note_tied 2
	note Gb3, 8

@loop_2:
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	loop 7, @loop_2

@loop_3:
	note G_3, 8
	note G_3, 4
	note G_3, 4
	loop 6, @loop_3
	note G_3, 8
	number_of_note_tied 2
	note E_3, 8

@loop_4:
	note E_3, 8
	note E_3, 4
	note E_3, 4
	loop 2, @loop_4
	note E_3, 8
	number_of_note_tied 2
	note F_3, 8

@loop_5:
	note F_3, 8
	note F_3, 4
	note F_3, 4
	loop 3, @loop_5
	rest 8
	note Gb3, 8
	note Ab3, 8
	note Gb3, 8
	note A_3, 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note E_3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	rest 8
	note E_3, 8
	number_of_note_tied 2
	note Gb3, 8

@loop_6:
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	loop 7, @loop_6

@loop_7:
	note G_3, 8
	note G_3, 4
	note G_3, 4
	loop 6, @loop_7
	note G_3, 8
	number_of_note_tied 2
	note E_3, 8

@loop_8:
	note E_3, 8
	note E_3, 4
	note E_3, 4
	loop 2, @loop_8
	note E_3, 8
	number_of_note_tied 2
	note F_3, 8

@loop_9:
	note F_3, 8
	note F_3, 4
	note F_3, 4
	loop 3, @loop_9
	rest 8
	note Gb3, 8
	note Ab3, 8
	note Gb3, 8
	note A_3, 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note E_3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	rest 8
	note E_3, 8
	number_of_note_tied 2
	note D_3, 8

@loop_10:
	note D_3, 8
	note D_3, 4
	note D_3, 4
	note D_3, 8
	note D_3, 8
	loop 3, @loop_10

@loop_11:
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 8
	loop 3, @loop_11

@loop_12:
	note F_3, 8
	note F_3, 4
	note F_3, 4
	note F_3, 8
	note F_3, 8
	loop 3, @loop_12
	note Gb3, 4
	note Gb3, 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note Gb3, 4
	note F_3, 8
	rest 8
	note F_3, 8
	rest 8
	pitch_envelope $10
	note Gb5, 4
	note Gb5, 4
	note Gb5, 8
	note Gb5, 8
	note Gb5, 8
	pitch_envelope $00
	number_of_note_tied 2
	note Gb3, 8
	loop 0, @loop_2

music_woodman_noise:
	tempo 5
	pitch_envelope $10
	volume_envelope volume_decay, 6, 3
	volume 13

@loop_1:
	rest 16
	noise_note 3, 16
	loop 7, @loop_1

@loop_5:
	volume_envelope volume_decay, 6, 3
	pitch_envelope $FD

@loop_2:
	noise_note 10, 4
	loop 3, @loop_2

@loop_3:
	noise_note 7, 4
	loop 3, @loop_3
	noise_note 5, 4
	noise_note 5, 4
	noise_note 5, 4
	noise_note 3, 4
	noise_note 3, 4
	noise_note 3, 4
	pitch_envelope $10
	noise_note 3, 8
	rest 8
	noise_note 3, 8
	rest 16
	noise_note 3, 8
	rest 8
	noise_note 3, 8
	noise_note 3, 8
	pitch_envelope $10

@loop_4:
	volume_envelope volume_decay, 10, 2
	noise_note 11, 8
	noise_note 11, 4
	noise_note 11, 4
	volume_envelope volume_decay, 6, 4
	noise_note 5, 8
	volume_envelope volume_decay, 10, 2
	noise_note 11, 4
	noise_note 11, 4
	loop 43, @loop_4
	loop 0, @loop_5

music_woodman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 2, 1, 2, volume_decay, 0, 0
