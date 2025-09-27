music_flashman:
	music_header
	.WORD music_flashman_pulse_1
	.WORD music_flashman_pulse_2
	.WORD music_flashman_triangle
	.WORD music_flashman_noise
	.WORD music_flashman_modulator

music_flashman_pulse_1:
	tempo 6
	volume 13
	volume_envelope volume_decay, 1, 6
	base_note B_1

@loop_1:
	duty_cycle 0
	note E_2, 16
	note G_2, 4
	rest 4
	note B_2, 4
	rest 4
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Db3, 8
	note A_2, 8
	dotted_note_set
	note C_3, 8
	dotted_note_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest 4
	note G_2, 4
	rest 4
	note E_2, 4
	note D_2, 4
	rest 4
	note E_2, 4
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 4
	note G_3, 4
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 4
	note G_3, 4
	dotted_note_set
	rest 16
	note Gb3, 4
	note Gb3, 4
	note Gb3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note Gb3, 8
	loop 2, @loop_1
	note E_2, 16
	note G_2, 4
	rest 4
	note B_2, 4
	rest 4
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Db3, 8
	note A_2, 8
	dotted_note_set
	note C_3, 8
	dotted_note_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest 4
	note G_2, 4
	rest 4
	note E_2, 4
	note D_2, 4
	rest 4
	note E_2, 4

@loop_2:
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 4
	note G_3, 4
	loop 1, @loop_2
	rest 16
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note B_3, 16
	rest 16
	base_note B_2

@loop_3:
	duty_cycle 1
	volume 13
	volume_envelope volume_decay, 1, 18
	rest 8
	note E_3, 8
	note B_3, 8
	note A_3, 8
	note B_3, 16
	note A_3, 8
	note G_3, 8
	note A_3, 8
	note B_3, 8
	rest 8
	number_of_note_tied 2
	note E_3, 16
	modulator 1
	note E_3, 16
	modulator 0
	note G_3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note E_3, 8
	note D_3, 8
	number_of_note_tied 2
	note E_3, 8
	note E_3, 32
	rest 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	rest 8
	note E_3, 8
	note B_3, 8
	note A_3, 8
	note B_3, 16
	note A_3, 8
	note G_3, 8
	note A_3, 8
	note B_3, 8
	rest 8
	number_of_note_tied 2
	note E_3, 16
	modulator 1
	note E_3, 16
	modulator 0
	note G_3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	rest 8
	note G_3, 8
	note A_3, 8
	note Gb3, 8
	number_of_note_tied 2
	note E_3, 8
	number_of_note_tied 2
	note E_3, 16
	modulator 1
	note E_3, 16
	modulator 0
	rest 8
	note E_3, 8
	note G_3, 8
	note B_3, 8
	duty_cycle 3
	volume_envelope volume_decay, 1, 34
	number_of_note_tied 2
	note D_4, 32
	modulator 1
	note D_4, 32
	modulator 0
	number_of_note_tied 2
	note Db4, 16
	modulator 1
	note Db4, 16
	modulator 0
	number_of_note_tied 2
	note C_4, 16
	modulator 1
	note C_4, 16
	modulator 0
	duty_cycle 2
	note G_3, 8
	dotted_note_set
	note E_3, 16
	rest 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	note Bb3, 8
	note B_3, 8
	note Bb3, 8
	note B_3, 8
	note A_3, 8
	note G_3, 8
	note E_3, 8
	note D_3, 8
	duty_cycle 3
	number_of_note_tied 2
	note D_4, 32
	modulator 1
	note D_4, 32
	modulator 0
	number_of_note_tied 2
	note Db4, 16
	modulator 1
	note Db4, 16
	modulator 0
	number_of_note_tied 2
	note C_4, 16
	modulator 1
	note C_4, 16
	modulator 0
	duty_cycle 2
	note G_3, 8
	dotted_note_set
	note E_3, 16
	rest 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	note E_4, 8
	note B_3, 8
	note B_3, 8
	note B_3, 8
	note Eb4, 8
	note Gb4, 8
	note A_4, 8
	note B_4, 8
	loop 0, @loop_3

music_flashman_pulse_2:
	tempo 6
	duty_cycle 0
	base_note B_1

@loop_1:
	volume_envelope volume_decay, 1, 96
	volume 8
	rest 8
	note E_2, 16
	note G_2, 4
	rest 4
	note B_2, 4
	rest 4
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Db3, 8
	note A_2, 8
	dotted_note_set
	note C_3, 8
	dotted_note_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest 4
	note G_2, 4
	rest 4
	note E_2, 4
	note D_2, 4
	rest 4
	note E_2, 4
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest 16
	rest 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note Gb3, 4
	rest 4
	note E_3, 4
	rest 4
	note D_3, 8
	loop 2, @loop_1
	rest 8
	note E_2, 16
	note G_2, 4
	rest 4
	note B_2, 4
	rest 4
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Db3, 8
	note A_2, 8
	dotted_note_set
	note C_3, 8
	dotted_note_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest 4
	note G_2, 4
	rest 4
	note E_2, 4
	note D_2, 4
	rest 4
	note E_2, 4
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest 16
	note Gb3, 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note G_3, 16
	rest 16

@loop_4:
	base_note B_2

@loop_2:
	volume 7
	note G_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note A_3, 4
	note G_3, 4
	note Gb3, 4
	note G_3, 4
	rest 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note G_3, 4
	note Gb3, 4
	note D_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	rest 4
	note D_3, 4
	note E_3, 8
	note D_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	rest 4
	note D_3, 4
	note E_3, 8
	loop 3, @loop_2

@loop_3:
	duty_cycle 3
	volume 10
	volume_envelope volume_decay, 1, 34
	note B_3, 64
	note Bb3, 32
	note A_3, 32
	volume_envelope volume_decay, 1, 6
	duty_cycle 0
	rest 8
	note G_3, 8
	note A_3, 8
	note G_3, 8
	note B_3, 8
	note G_3, 8
	rest 8
	note G_3, 8
	note A_3, 8
	note G_3, 8
	note B_3, 8
	note G_3, 8
	rest 8
	note G_3, 8
	note Gb3, 8
	note G_3, 8
	loop 1, @loop_3
	loop 0, @loop_4

music_flashman_triangle:
	tempo 6
	triangle_note_length $25
	base_note B_2
	triangle_note_length $30

@loop_1:
	note E_3, 16
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	dotted_note_set
	note D_4, 8
	dotted_note_set
	note Db4, 8
	note A_3, 8
	dotted_note_set
	note C_4, 8
	dotted_note_set
	note B_3, 8
	note G_3, 8
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note E_3, 4
	note D_3, 4
	rest 4
	note E_3, 8
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note Gb3, 4
	rest 4
	note Gb3, 8
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	note D_3, 16
	loop 2, @loop_1
	note E_3, 16
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	dotted_note_set
	note D_4, 8
	dotted_note_set
	note Db4, 8
	note A_3, 8
	dotted_note_set
	note C_4, 8
	dotted_note_set
	note B_3, 8
	note G_3, 8
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note E_3, 4
	note D_3, 4
	rest 4
	note E_3, 8
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note E_3, 4
	rest 4
	note E_3, 8
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	rest 4
	note D_3, 4
	rest 4
	note D_3, 4
	note E_3, 4
	pitch_envelope $10
	note B_4, 4
	note B_4, 4
	note Gb3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	note D_3, 4

@loop_2:
	base_note B_2
	triangle_note_length $30
	pitch_envelope $00
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	note G_3, 4
	note E_3, 8
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	note G_3, 4
	note E_3, 8
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 4
	note Gb3, 4
	rest 4
	note A_3, 4
	rest 4
	note Gb3, 4
	note D_3, 8
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	rest 4
	note G_3, 4
	note E_3, 8
	loop 1, @loop_2

@loop_3:
	pitch_envelope $00
	base_note B_2
	note G_3, 4
	rest 4
	note G_3, 8
	note G_3, 4
	rest 4
	note G_3, 8
	note G_3, 4
	rest 4
	note G_3, 8
	note G_3, 4
	rest 4
	note G_3, 8
	note Gb3, 4
	rest 4
	note Gb3, 8
	note Gb3, 4
	rest 4
	note Gb3, 8
	note F_3, 4
	rest 4
	note F_3, 8
	note F_3, 4
	rest 4
	note F_3, 8
	rest 8
	note E_3, 8
	note Gb3, 8
	note E_3, 8
	note G_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	pitch_envelope $10
	note D_5, 8
	note D_5, 8
	note Bb3, 8
	note Bb3, 8
	note E_5, 4
	note E_5, 4
	note Bb3, 8
	note A_3, 8
	note A_3, 8
	loop 1, @loop_3
	loop 0, @loop_2

music_flashman_noise:
	tempo 6

@loop_1:
	volume_envelope volume_decay, 10, 4
	volume 15
	pitch_envelope $05
	noise_note 9, 4
	pitch_envelope $00
	volume_envelope volume_decay, 6, 2
	volume 6
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 4
	loop 59, @loop_1
	volume_envelope volume_decay, 1, 1
	volume 9
	pitch_envelope $12
	noise_note 9, 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	rest 4
	noise_note 9, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 11, 4
	noise_note 11, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 9, 4
	noise_note 9, 4

@loop_2:
	volume 14
	pitch_envelope $10
	volume_envelope volume_decay, 10, 2
	noise_note 11, 16
	volume_envelope volume_decay, 6, 4
	dotted_note_set
	noise_note 2, 8
	volume_envelope volume_decay, 10, 2
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 8
	volume_envelope volume_decay, 6, 4
	noise_note 2, 16
	loop 7, @loop_2

@loop_3:
	volume_envelope volume_decay, 10, 2
	noise_note 11, 8
	noise_note 11, 8
	loop 2, @loop_3
	volume_envelope volume_decay, 6, 4
	noise_note 2, 16

@loop_4:
	volume_envelope volume_decay, 10, 2
	noise_note 11, 4
	rest 4
	noise_note 11, 8
	volume_envelope volume_decay, 6, 4
	noise_note 2, 16
	loop 5, @loop_4

@loop_5:
	volume_envelope volume_decay, 10, 2
	noise_note 11, 8
	noise_note 11, 8
	loop 2, @loop_5
	volume_envelope volume_decay, 6, 4
	noise_note 2, 16

@loop_6:
	volume_envelope volume_decay, 10, 2
	noise_note 11, 8
	noise_note 11, 8
	volume_envelope volume_decay, 6, 4
	noise_note 2, 16
	loop 3, @loop_6
	volume_envelope volume_decay, 10, 4
	volume 8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 11, 8
	noise_note 11, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 9, 8
	noise_note 9, 8
	loop 0, @loop_2

music_flashman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 2, volume_decay, 0, 0
