music_wily1_2:
	music_header
	.WORD music_wily1_2_pulse_1
	.WORD music_wily1_2_pulse_2
	.WORD music_wily1_2_triangle
	.WORD music_wily1_2_noise
	.WORD music_wily1_2_modulator

music_wily1_2_pulse_1:
	tempo 5

@loop_1:
	volume 14
	duty_cycle 1
	base_note Ab2
	volume_envelope volume_decay, 1, 4
	note Db3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Gb3, 8
	rest 16
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Eb3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	rest 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	rest 8
	note Eb4, 8
	note E_4, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Gb3, 8
	rest 16
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Eb3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	rest 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	rest 8
	note B_3, 8
	volume_envelope volume_decay, 1, 16
	duty_cycle 2
	number_of_note_tied 3
	note Db4, 8
	note Db4, 16
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	rest 8
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	number_of_note_tied 2
	note B_3, 8
	note B_3, 32
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note Eb4, 8
	note Ab4, 32
	volume_envelope volume_decay, 3, 21
	duty_cycle 0
	volume 15
	base_note Ab1
	modulator 1
	dotted_note_set
	note Ab2, 32
	note Gb2, 8
	note B_2, 16
	note A_2, 16
	note Ab2, 16
	note A_2, 16
	number_of_note_tied 3
	note Ab2, 8
	note Ab2, 32
	note Ab2, 16
	note Gb2, 8
	note B_2, 16
	note A_2, 16
	note Ab2, 16
	note A_2, 16
	number_of_note_tied 2
	note E_2, 8
	note E_2, 32
	note E_2, 8
	note Gb2, 8
	note Ab2, 8
	note Eb2, 64
	modulator 0
	base_note Ab2
	duty_cycle 2
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	rest 8
	note B_3, 8
	modulator 1
	duty_cycle 3
	number_of_note_tied 2
	note Db4, 8
	note Db4, 32
	note Db4, 16
	note B_3, 8
	note Db4, 8
	rest 8
	dotted_note_set
	note E_4, 16
	note Ab4, 8
	note Gb4, 8
	note E_4, 8
	note Eb4, 8
	note Db4, 32
	note Db4, 16
	note B_3, 8
	note Db4, 8
	rest 8
	dotted_note_set
	note E_4, 16
	note E_4, 8
	note Gb4, 8
	note E_4, 16
	note Eb4, 32
	note Eb4, 8
	note Db4, 8
	note B_3, 8
	dotted_note_set
	note Ab4, 16
	note Gb4, 16
	note E_4, 16
	note Eb4, 16
	note Eb4, 8
	note E_4, 8
	note Eb4, 8
	note Db4, 32
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	rest 8
	note B_3, 8
	modulator 0
	duty_cycle 2
	number_of_note_tied 3
	note Db4, 8
	note Db4, 16
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	rest 8
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	number_of_note_tied 2
	note B_3, 8
	note B_3, 32
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note Eb4, 8
	dotted_note_set
	note Ab4, 16
	base_note Ab1
	duty_cycle 1
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	note Eb3, 8
	note E_3, 16
	note Db4, 8
	note B_3, 16
	note A_3, 16
	note Ab3, 16
	note Gb3, 16
	note Gb3, 8
	rest 8
	note Ab3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 16
	note Gb3, 8
	rest 8
	note Ab3, 8
	note Ab3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	note Eb3, 8
	note E_3, 16
	note Db4, 8
	note B_3, 16
	note A_3, 16
	note Ab3, 16
	note Gb3, 16
	rest 8
	note Eb3, 8
	note E_3, 8
	note Eb3, 8
	number_of_note_tied 2
	note Db3, 8
	note Db3, 32
	rest 64
	loop 0, @loop_1

music_wily1_2_pulse_2:
	tempo 5

@loop_1:
	duty_cycle 1
	base_note Ab1
	volume_envelope volume_decay, 1, 4
	volume 10
	rest 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Ab2, 8
	rest 8
	note Ab2, 4
	note Ab2, 4
	note Db3, 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Ab2, 8
	rest 8
	note E_3, 8
	note Eb3, 8
	note E_3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Ab2, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	rest 8
	note Db3, 8
	rest 8
	note Eb3, 8
	rest 16
	rest 8
	note Eb3, 4
	note Eb3, 4
	note Eb3, 8
	note Eb3, 4
	note Eb3, 4
	note Eb3, 8
	note B_2, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	rest 8
	note Db3, 8
	rest 8
	note B_2, 8
	base_note Ab2
	rest 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	note B_3, 8
	note Db4, 8
	loop 1, @loop_1
	volume_envelope volume_decay, 1, 18
	duty_cycle 2
	rest 4
	number_of_note_tied 3
	note Db4, 8
	note Db4, 16
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	rest 8
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	number_of_note_tied 2
	note B_3, 8
	note B_3, 32
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note Eb4, 8
	number_of_note_tied 3
	note Ab4, 16
	note E_3, 4
	duty_cycle 0
	note Db3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Gb3, 8
	rest 16
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Eb3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	duty_cycle 2
	rest 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	note Gb4, 8
	note Ab4, 8
	duty_cycle 0
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	note Gb3, 8
	note Ab3, 8
	rest 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note E_3, 4
	note E_3, 4
	note E_3, 8
	note Db3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Gb3, 8
	rest 16
	rest 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Gb3, 4
	note Gb3, 4
	note Gb3, 8
	note Eb3, 8
	rest 8
	note Ab3, 8
	rest 8
	note Gb3, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	duty_cycle 2
	rest 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 32
	note Db3, 8
	rest 8
	note Db3, 8
	note Ab3, 8
	note B_3, 8
	note Bb3, 8
	note Gb4, 8
	note Ab4, 8
	volume_envelope volume_decay, 1, 10
	rest 4
	number_of_note_tied 3
	note Db4, 8
	note Db4, 16
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	rest 8
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note Ab3, 8
	note A_3, 8
	note Ab3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	note Ab3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 32
	note B_3, 8
	note E_4, 16
	note Db4, 16
	note B_3, 16
	note Db4, 16
	number_of_note_tied 2
	note B_3, 8
	note B_3, 32
	note B_3, 8
	note Ab3, 8
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note Eb4, 8
	dotted_note_set
	rest 8
	base_note Ab1
	duty_cycle 1
	modulator 1
	note Db3, 8
	rest 8
	note Db3, 8
	note Db3, 8
	note B_2, 8
	note Db3, 16
	note A_3, 8
	note Gb3, 16
	note Gb3, 16
	note E_3, 16
	note Eb3, 16
	note Eb3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	rest 16
	note Eb3, 8
	rest 8
	note E_3, 8
	note E_3, 8
	rest 8
	note E_3, 8
	rest 8
	note Eb3, 8
	note Db3, 8
	rest 8
	note Db3, 8
	note Db3, 8
	note B_2, 8
	note Db3, 16
	note A_3, 8
	note Gb3, 16
	note Gb3, 16
	note E_3, 16
	note Eb3, 16
	rest 8
	note B_2, 8
	note Db3, 8
	note B_2, 8
	number_of_note_tied 2
	note Ab2, 8
	note Ab2, 32
	rest 64
	modulator 0
	loop 0, @loop_1

music_wily1_2_triangle:
	tempo 5
	triangle_note_length $41

@loop_20:
	base_note Ab3

@loop_1:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 7, @loop_1

@loop_2:
	note A_3, 8
	note A_3, 4
	note A_3, 4
	loop 7, @loop_2

@loop_3:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 7, @loop_3

@loop_4:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 6, @loop_4
	note B_3, 8
	number_of_note_tied 2
	note Db4, 8

@loop_5:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 7, @loop_5

@loop_6:
	note A_3, 8
	note A_3, 4
	note A_3, 4
	loop 7, @loop_6

@loop_7:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 7, @loop_7

@loop_8:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 6, @loop_8
	note B_3, 8
	number_of_note_tied 2
	note Db4, 8
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note A_4, 4
	note A_4, 4
	note Gb4, 4
	note Gb4, 4
	note Gb4, 8
	rest 8
	note D_4, 4
	note D_4, 4
	note Gb4, 8
	note D_4, 4
	note D_4, 4
	note Db5, 8
	note Gb4, 4
	note Gb4, 4
	note A_4, 8
	note D_4, 4
	note D_4, 4
	note Db4, 8
	note Db4, 4
	note Db4, 4
	note Db4, 8
	note Db4, 4
	note Db4, 4
	note Db4, 8
	note Ab4, 4
	note Ab4, 4
	note E_4, 4
	note E_4, 4
	note B_4, 8
	rest 8
	note Db4, 4
	note Db4, 4
	note E_4, 8
	note Db4, 4
	note Db4, 4
	note B_4, 8
	note E_4, 4
	note E_4, 4
	note Ab4, 8
	note Db4, 4
	note Db4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note A_4, 4
	note A_4, 4
	note Gb4, 4
	note Gb4, 4
	note Gb4, 8
	rest 8
	note D_4, 4
	note D_4, 4
	note Gb4, 8
	note D_4, 4
	note D_4, 4
	note Db5, 8
	note Gb4, 4
	note Gb4, 4
	note A_4, 8
	note D_4, 4
	note D_4, 4

@loop_9:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 2, @loop_9
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 16
	rest 16

@loop_10:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 7, @loop_10

@loop_11:
	note A_3, 8
	note A_3, 4
	note A_3, 4
	loop 7, @loop_11

@loop_12:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 7, @loop_12

@loop_13:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 6, @loop_13
	note B_3, 8
	number_of_note_tied 2
	note Db4, 8

@loop_14:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 7, @loop_14

@loop_15:
	note A_3, 8
	note A_3, 4
	note A_3, 4
	loop 7, @loop_15

@loop_16:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 7, @loop_16

@loop_17:
	note Db4, 8
	note Db4, 4
	note Db4, 4
	loop 6, @loop_17
	note B_3, 8
	number_of_note_tied 2
	note Db4, 8
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note A_4, 4
	note A_4, 4
	note Gb4, 4
	note Gb4, 4
	note Gb4, 8
	rest 8
	note D_4, 4
	note D_4, 4
	note Gb4, 8
	note D_4, 4
	note D_4, 4
	note Db5, 8
	note Gb4, 4
	note Gb4, 4
	note A_4, 8
	note D_4, 4
	note D_4, 4
	note Db4, 8
	note Db4, 4
	note Db4, 4
	note Db4, 8
	note Db4, 4
	note Db4, 4
	note Db4, 8
	note Ab4, 4
	note Ab4, 4
	note E_4, 4
	note E_4, 4
	note B_4, 8
	rest 8
	note Db4, 4
	note Db4, 4
	note E_4, 8
	note Db4, 4
	note Db4, 4
	note B_4, 8
	note E_4, 4
	note E_4, 4
	note Ab4, 8
	note Db4, 4
	note Db4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note D_4, 4
	note D_4, 4
	note D_4, 8
	note A_4, 4
	note A_4, 4
	note Gb4, 4
	note Gb4, 4
	note Gb4, 8
	rest 8
	note D_4, 4
	note D_4, 4
	note Gb4, 8
	note D_4, 4
	note D_4, 4
	note Db5, 8
	note Gb4, 4
	note Gb4, 4
	note A_4, 8
	note D_4, 4
	note D_4, 4

@loop_18:
	note B_3, 8
	note B_3, 4
	note B_3, 4
	loop 2, @loop_18
	note B_3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 16
	rest 8
	note A_3, 16
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note B_3, 16
	note B_3, 4
	note B_3, 4
	note B_3, 8
	note B_3, 4
	note B_3, 4
	note B_3, 8
	note B_3, 4
	note B_3, 4
	note B_3, 8

@loop_19:
	base_note Ab2
	note Db3, 16
	note Db4, 8
	note Eb3, 8
	note Eb4, 8
	note E_3, 8
	note E_4, 8
	note Eb3, 8
	loop 1, @loop_19
	base_note Ab3
	note A_3, 16
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note A_3, 4
	note A_3, 4
	note A_3, 8
	note B_3, 16
	note B_3, 4
	note B_3, 4
	note B_3, 8
	note B_3, 4
	note B_3, 4
	note B_3, 8
	note B_3, 4
	note B_3, 4
	note C_4, 16
	note Db4, 16
	pitch_envelope $10
	note A_4, 4
	note A_4, 4
	note Ab4, 4
	note Ab4, 4
	note Gb4, 4
	note Gb4, 4
	note E_4, 4
	note E_4, 4
	pitch_envelope $00
	note B_3, 8
	note Db4, 8
	rest 8
	note B_3, 8
	note Db4, 16
	note B_3, 8
	note C_4, 8
	note Db4, 16
	loop 0, @loop_20

music_wily1_2_noise:
	tempo 5
	volume 15

@loop_1:
	volume_envelope volume_decay, 10, 2
	noise_note 13, 4
	rest 4
	noise_note 13, 4
	noise_note 13, 4
	volume_envelope volume_decay, 4, 3
	noise_note 8, 8
	volume_envelope volume_decay, 10, 2
	noise_note 13, 4
	noise_note 13, 4
	loop 0, @loop_1

music_wily1_2_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 2, 1, 1, volume_decay, 0, 0
