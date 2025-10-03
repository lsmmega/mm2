music_wily3_4_5:
	music_header
	.WORD music_wily3_4_5_pulse_1
	.WORD music_wily3_4_5_pulse_2
	.WORD music_wily3_4_5_triangle
	.WORD music_wily3_4_5_noise
	.WORD music_wily3_4_5_modulator

music_wily3_4_5_pulse_1:
	tempo 6
	volume 12
	duty_cycle 0
	base_note Bb2
	volume_envelope volume_decay, 1, 32

@loop_1:
	modulator 1
	note Eb3, 64
	modulator 0
	number_of_note_tied 2
	note Bb3, 32
	modulator 1
	note Bb3, 32
	modulator 0
	number_of_note_tied 2
	note F_3, 32
	modulator 1
	note F_3, 32
	modulator 0
	number_of_note_tied 2
	note Gb3, 32
	modulator 1
	note Gb3, 32
	modulator 0
	number_of_note_tied 2
	note E_3, 32
	modulator 1
	note E_3, 32
	modulator 0
	number_of_note_tied 2
	note B_3, 32
	modulator 1
	note B_3, 32
	modulator 0
	number_of_note_tied 2
	note Gb3, 32
	modulator 1
	note Gb3, 32
	modulator 0
	number_of_note_tied 2
	note G_3, 32
	modulator 1
	note G_3, 32
	modulator 0
	number_of_note_tied 2
	note F_3, 32
	modulator 1
	note F_3, 32
	modulator 0
	number_of_note_tied 2
	note C_4, 32
	modulator 1
	note C_4, 32
	modulator 0
	number_of_note_tied 2
	note G_3, 32
	modulator 1
	note G_3, 32
	modulator 0
	number_of_note_tied 2
	note Ab3, 32
	modulator 1
	note Ab3, 32
	modulator 0
	number_of_note_tied 2
	note Gb3, 32
	modulator 1
	note Gb3, 32
	modulator 0
	number_of_note_tied 2
	note Db4, 32
	modulator 1
	note Db4, 32
	modulator 0
	number_of_note_tied 2
	note Ab3, 32
	modulator 1
	note Ab3, 32
	modulator 0
	number_of_note_tied 2
	note A_3, 32
	modulator 1
	note A_3, 32
	modulator 0
	number_of_note_tied 2
	note G_3, 32
	modulator 1
	note G_3, 32
	modulator 0
	number_of_note_tied 2
	note D_4, 32
	modulator 1
	note D_4, 32
	modulator 0
	number_of_note_tied 2
	note A_3, 32
	modulator 1
	note A_3, 32
	modulator 0
	number_of_note_tied 2
	note Bb3, 32
	modulator 1
	note Bb3, 32
	base_note Eb3
	modulator 0
	loop 1, @loop_1
	base_note Bb2
	number_of_note_tied 2
	note Db4, 32
	modulator 1
	note Db4, 32
	modulator 0
	number_of_note_tied 2
	note Ab4, 32
	modulator 1
	note Ab4, 32
	modulator 0
	number_of_note_tied 2
	note Eb4, 32
	modulator 1
	note Eb4, 32
	modulator 0
	number_of_note_tied 2
	note E_4, 32
	modulator 1
	note E_4, 32
	modulator 0
	number_of_note_tied 2
	note D_4, 32
	modulator 1
	note D_4, 32
	modulator 0
	number_of_note_tied 2
	note A_4, 32
	modulator 1
	note A_4, 32
	modulator 0
	number_of_note_tied 2
	note E_4, 32
	modulator 1
	note E_4, 32
	modulator 0
	note F_4, 32
	modulator 1
	pitch_envelope $05
	note F_4, 32
	pitch_envelope $00
	modulator 0
	loop 0, @loop_1

music_wily3_4_5_pulse_2:
	tempo 6
	volume_envelope volume_decay, 1, 32
	duty_cycle 0
	base_note Bb2
	volume 9

@loop_2:
	base_note Bb2
	note Eb3, 64
	note Gb3, 64
	note Db3, 64
	number_of_note_tied 2
	note Eb3, 32
	modulator 1
	note Eb3, 32
	modulator 0

@loop_1:
	note B_2, 64
	note G_3, 64
	note D_3, 64
	number_of_note_tied 2
	note E_3, 32
	modulator 1
	note E_3, 32
	modulator 0
	note C_3, 64
	note Ab3, 64
	note Eb3, 64
	number_of_note_tied 2
	note F_3, 32
	modulator 1
	note F_3, 32
	modulator 0
	note Db3, 64
	note A_3, 64
	note E_3, 64
	number_of_note_tied 2
	note Gb3, 32
	modulator 1
	note Gb3, 32
	modulator 0
	note D_3, 64
	note Bb3, 64
	note F_3, 64
	number_of_note_tied 2
	note G_3, 32
	modulator 1
	note G_3, 32
	modulator 0
	note Eb3, 64
	note B_3, 64
	note Gb3, 64
	number_of_note_tied 2
	note Ab3, 32
	modulator 1
	note G_3, 32
	modulator 0
	base_note Eb3
	loop 1, @loop_1
	base_note Bb2
	note A_3, 64
	note F_4, 64
	note C_4, 64
	note D_4, 32
	modulator 1
	pitch_envelope $05
	note D_4, 32
	pitch_envelope $00
	modulator 0
	loop 0, @loop_2

music_wily3_4_5_triangle:
	tempo 6
	triangle_note_length $35
	base_note Bb2

@loop_1:
	note Eb3, 4
	note Eb3, 4
	rest 4
	note Eb3, 4
	note Eb3, 4
	note Db3, 4
	note Eb3, 4
	note Eb3, 4
	rest 8
	note Eb3, 8
	note Gb3, 8
	note Bb3, 8
	loop 3, @loop_1

@loop_2:
	note E_3, 4
	note E_3, 4
	rest 4
	note E_3, 4
	note E_3, 4
	note D_3, 4
	note E_3, 4
	note E_3, 4
	rest 8
	note E_3, 8
	note G_3, 8
	note B_3, 8
	loop 3, @loop_2

@loop_3:
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	note Eb3, 4
	note F_3, 4
	note F_3, 4
	rest 8
	note F_3, 8
	note Ab3, 8
	note C_4, 8
	loop 3, @loop_3

@loop_4:
	note Gb3, 4
	note Gb3, 4
	rest 4
	note Gb3, 4
	note Gb3, 4
	note E_3, 4
	note Gb3, 4
	note Gb3, 4
	rest 8
	note Gb3, 8
	note A_3, 8
	note Db4, 8
	loop 3, @loop_4

@loop_5:
	note G_3, 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_3, 4
	note F_3, 4
	note G_3, 4
	note G_3, 4
	rest 8
	note G_3, 8
	note Bb3, 8
	note D_4, 8
	loop 3, @loop_5

@loop_6:
	note Ab3, 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	note Ab3, 4
	note Gb3, 4
	note Ab3, 4
	note Ab3, 4
	rest 8
	note Ab3, 8
	note B_3, 8
	note Eb4, 8
	loop 3, @loop_6

@loop_7:
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	note A_3, 4
	note G_3, 4
	note A_3, 4
	note A_3, 4
	rest 8
	note A_3, 8
	note C_4, 8
	note E_4, 8
	loop 3, @loop_7

@loop_8:
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	note Ab3, 4
	note Bb3, 4
	note Bb3, 4
	rest 8
	note Bb3, 8
	note Db4, 8
	note F_4, 8
	loop 3, @loop_8

@loop_9:
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	note A_3, 4
	note B_3, 4
	note B_3, 4
	rest 8
	note B_3, 8
	note D_4, 8
	note Gb4, 8
	loop 3, @loop_9

@loop_10:
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note C_4, 4
	rest 8
	note C_4, 8
	note Eb4, 8
	note G_4, 8
	loop 3, @loop_10

@loop_11:
	note Db4, 4
	note Db4, 4
	rest 4
	note Db4, 4
	note Db4, 4
	note B_3, 4
	note Db4, 4
	note Db4, 4
	rest 8
	note Db4, 8
	note E_4, 8
	note Ab4, 8
	loop 3, @loop_11

@loop_12:
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	note C_4, 4
	note D_4, 4
	note D_4, 4
	rest 8
	note D_4, 8
	note F_4, 8
	note A_4, 8
	loop 2, @loop_12
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	note C_4, 4
	note D_4, 4
	note D_4, 4
	pitch_envelope $10
	rest 4
	note Eb5, 4
	note Eb5, 4
	note D_5, 4
	note D_5, 4
	note C_5, 4
	note C_5, 4
	note C_5, 4
	pitch_envelope $00
	loop 0, @loop_1

music_wily3_4_5_noise:
	tempo 6
	volume 15

@loop_1:
	volume_envelope volume_decay, 10, 3
	noise_note 13, 4
	noise_note 13, 4
	volume_envelope volume_decay, 2, 2
	noise_note 13, 8
	loop 0, @loop_1

music_wily3_4_5_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 2, volume_decay, 0, 0
