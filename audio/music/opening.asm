music_opening:
	music_header
	.WORD music_opening_pulse_1
	.WORD music_opening_pulse_2
	.WORD music_opening_triangle
	.WORD music_opening_noise
	.WORD music_opening_modulator

music_opening_pulse_1:
	tempo 8

@loop_1:
	base_note Ab2
	duty_cycle 2
	volume 14
	volume_envelope volume_decay, 4, 95
	modulator 0
	number_of_note_tied 2
	note Bb3, 16
	dotted_note_set
	note Bb3, 32
	number_of_note_tied 2
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	loop 1, @loop_1
	note Bb3, 16
	note Db4, 16
	note Ab4, 16
	note F_4, 8
	note Gb4, 8
	rest 16
	rest 8
	note Gb4, 8
	note F_4, 8
	note Eb4, 8
	note Db4, 8
	note Eb4, 8
	rest 8
	note Bb3, 8
	note Ab3, 8
	note Gb3, 8
	rest 8
	note Gb3, 8
	note F_3, 8
	note Gb3, 8
	number_of_note_tied 2
	note Db4, 16
	dotted_note_set
	note Db4, 32
	dotted_note_set
	note Eb4, 16
	dotted_note_set
	note Db4, 16
	note B_3, 16
	dotted_note_set
	note F_4, 16
	dotted_note_set
	note Eb4, 16
	note Db4, 16
	dotted_note_set
	note F_4, 16
	dotted_note_set
	note Eb4, 16
	note D_4, 16
	dotted_note_set
	note Gb4, 16
	dotted_note_set
	note F_4, 16
	note Eb4, 16
	tempo 7
	note Gb4, 32
	duty_cycle 3
	rest 8
	note A_3, 8
	note B_3, 8
	note Db4, 8
	number_of_note_tied 2
	note D_4, 16
	note D_4, 16
	note D_4, 8
	note Db4, 16
	note D_4, 8
	number_of_note_tied 3
	note B_3, 16
	note B_3, 8
	note B_3, 16
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note E_4, 16
	note D_4, 16
	note Db4, 16
	note B_3, 16
	tempo 6
	note C_4, 16
	rest 8
	note C_4, 8
	note C_4, 8
	note B_3, 16
	note C_4, 8
	note A_3, 16
	rest 8
	note A_3, 8
	note A_3, 8
	note B_3, 16
	note C_4, 8
	note D_4, 64
	base_note Ab4
	pitch_envelope $01
	duty_cycle 0
	volume 15
	volume_envelope volume_decay, 1, 47
	number_of_note_tied 2
	note A_6, 64
	note A_6, 64
	music_end

music_opening_pulse_2:
	tempo 8
	duty_cycle 3
	volume 10
	volume_envelope volume_decay, 3, 10
	base_note Ab2

@loop_1:
	rest 8
	note Db4, 8
	note Gb4, 8
	note Ab4, 8
	note Bb4, 32
	rest 8
	note D_4, 8
	note Gb4, 8
	note Ab4, 8
	note B_4, 32
	loop 1, @loop_1
	note Gb4, 8
	note Db4, 8
	note Gb4, 8
	note Bb4, 8
	note F_4, 8
	note Db4, 8
	note F_4, 8
	note Ab4, 8
	note Eb4, 8
	note Bb3, 8
	note Eb4, 8
	note Gb4, 8
	note Db4, 8
	note Ab3, 8
	note Db4, 8
	note Gb4, 8

@loop_2:
	note C_4, 8
	note Ab3, 8
	note C_4, 8
	note Eb4, 8
	loop 1, @loop_2
	note Db4, 32
	note Db4, 8
	dotted_note_set
	note C_4, 16
	note B_3, 8
	note Gb3, 8
	note B_3, 8
	note Db4, 8
	note Eb4, 32
	note Db4, 8
	note Ab3, 8
	note Db4, 8
	note Eb4, 8
	note F_4, 32
	note D_4, 8
	note Bb3, 8
	note D_4, 8
	note Eb4, 8
	note F_4, 32
	note Eb4, 8
	note Bb3, 8
	note Eb4, 8
	note F_4, 8
	note Gb4, 32
	tempo 7
	duty_cycle 2
	volume_envelope volume_decay, 3, 3

@loop_3:
	note D_3, 8
	note Gb3, 8
	note A_3, 8
	note Bb2, 8
	loop 3, @loop_3

@loop_4:
	note E_3, 8
	note Ab3, 8
	note B_3, 8
	note E_4, 8
	loop 3, @loop_4
	tempo 6

@loop_5:
	note F_3, 8
	note A_3, 8
	note C_4, 8
	note F_4, 8
	loop 3, @loop_5
	rest 64
	base_note Ab4
	duty_cycle 0
	volume 15
	pitch_envelope $01
	volume_envelope volume_decay, 1, 47
	number_of_note_tied 2
	note E_6, 64
	note E_6, 64
	pitch_envelope $00
	music_end

music_opening_triangle:
	tempo 8

@loop_1:
	triangle_note_length $81
	base_note Ab2
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 16
	rest 16
	loop 3, @loop_1
	note Gb3, 32
	note F_3, 32
	note Eb3, 32
	note Db3, 32
	note C_3, 32
	note Eb3, 32
	dotted_note_set
	note Db3, 16
	note Db3, 8
	note Db3, 16
	rest 16
	dotted_note_set
	note B_2, 32
	note C_3, 16
	note Db3, 64
	dotted_note_set
	note Bb2, 32
	note D_3, 16
	note Eb3, 64
	triangle_note_length $50
	tempo 7

@loop_2:
	note D_3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	note D_3, 8
	note A_2, 8
	note D_3, 8
	note Gb3, 8
	loop 1, @loop_2

@loop_3:
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	note B_2, 8
	note E_3, 8
	note Ab3, 8
	loop 1, @loop_3
	tempo 6

@loop_4:
	note F_3, 8
	note F_3, 8
	rest 8
	note F_3, 8
	note F_3, 8
	note C_3, 8
	note F_3, 8
	note A_3, 8
	loop 1, @loop_4
	pitch_envelope $15

@loop_5:
	triplet_note_set
	note Db5, 8
	loop 2, @loop_5

@loop_6:
	triplet_note_set
	note Ab4, 8
	loop 8, @loop_6
	triangle_note_length $8F
	base_note Ab4
	pitch_envelope $01
	number_of_note_tied 2
	note F_6, 64
	note F_6, 64
	music_end

music_opening_noise:
	tempo 8
	volume 12
	volume_envelope volume_decay, 1, 1

@loop_1:
	dotted_note_set
	rest 32
	noise_note 10, 8
	rest 8
	loop 11, @loop_1
	tempo 7

@loop_2:
	volume_envelope volume_decay, 12, 2
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	volume_envelope volume_decay, 4, 3
	noise_note 8, 16
	loop 3, @loop_2
	tempo 6

@loop_3:
	volume_envelope volume_decay, 12, 2
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	volume_envelope volume_decay, 4, 3
	noise_note 8, 16
	loop 2, @loop_3
	music_end

music_opening_modulator:
	modulator_set 1, 2, 2, volume_decay, 0, 0
