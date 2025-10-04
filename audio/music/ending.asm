music_ending:
	music_header
	.WORD @pulse_1
	.WORD @pulse_2
	.WORD music_ending_triangle
	.WORD music_ending_noise
	.WORD music_ending_modulator

@pulse_1:
	tempo 8
	base_note Ab2
	duty_cycle 3
	volume 10
	volume_envelope volume_decay, 4, 95
	modulator 0

@loop_1:
	number_of_note_tied 2
	note Ab3, 32
	note Ab3, 8
	note Db3, 8
	note E_3, 8
	note Ab3, 8
	note B_3, 16
	note A_3, 8
	note Ab3, 16
	dotted_note_set
	note Gb3, 16
	loop 3, @loop_1
	duty_cycle 1
	note A_3, 32
	dotted_note_set
	note A_3, 8
	dotted_note_set
	note B_3, 8
	note Db4, 8
	dotted_note_set
	note Ab3, 16
	note Ab3, 8
	note A_3, 8
	dotted_note_set
	note B_3, 16
	note E_4, 32
	note E_4, 8
	note D_4, 8
	note Db4, 8
	note B_3, 8
	dotted_note_set
	note Bb3, 16
	note Bb3, 8
	note B_3, 8
	dotted_note_set
	note Db4, 16
	note A_3, 8
	note Ab3, 8
	note A_3, 8
	note B_3, 8
	rest 16
	note A_4, 8
	note Ab4, 8
	note A_4, 8
	note B_4, 8
	rest 16
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Gb3, 8
	note A_3, 8
	note Db4, 32
	dotted_note_set
	note Db4, 8
	dotted_note_set
	note D_4, 8
	note Db4, 8
	note B_3, 32
	note B_3, 8
	dotted_note_set
	note Db4, 16
	duty_cycle 0
	note A_3, 32
	dotted_note_set
	note Ab3, 8
	dotted_note_set
	note A_3, 8
	note B_3, 8
	note A_3, 32
	dotted_note_set
	note Ab3, 8
	dotted_note_set
	note A_3, 8
	note Db4, 8
	number_of_note_tied 2
	note Gb4, 8
	note Gb4, 32
	note Db4, 8
	note Db4, 4
	note B_3, 4
	note A_3, 8
	note B_3, 16
	note Db4, 8
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Ab3, 8
	dotted_note_set
	note A_3, 16
	base_note Ab1
	note Gb3, 8
	note D_3, 8
	note A_2, 8
	note Gb3, 8
	note A_3, 8
	note E_3, 8
	note Ab3, 16
	note D_4, 16
	note Db4, 8
	note B_3, 16
	volume_envelope volume_attack, 4, 1
	base_note Ab2

@loop_2:
	number_of_note_tied 3
	note A_3, 64
	note A_3, 32
	note A_3, 8
	note C_4, 8
	note B_3, 8
	number_of_note_tied 2
	note A_3, 8
	loop 1, @loop_2
	tempo 9
	note A_3, 64
	tempo 10
	dotted_note_set
	note F_3, 16
	note F_3, 8
	tempo 11
	note F_3, 8
	dotted_note_set
	note G_3, 16
	number_of_note_tied 3
	note E_3, 64
	volume_envelope volume_decay, 1, 31
	note E_3, 64
	note E_3, 64
	music_end

@pulse_2:
	tempo 8
	duty_cycle 3
	volume 5
	volume_envelope volume_decay, 4, 95
	base_note Ab2
	dotted_note_set
	rest 8
	loop 0, @loop_1
	music_end

music_ending_triangle:
	tempo 8
	triangle_note_length $81
	base_note Ab2

@loop_1:
	dotted_note_set
	note A_3, 16
	note A_3, 8
	note A_3, 32
	dotted_note_set
	note A_3, 16
	note A_3, 8
	note A_3, 32
	loop 1, @loop_1

@loop_2:
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 32
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 32
	loop 1, @loop_2
	dotted_note_set
	note D_3, 16
	note D_3, 8
	note D_3, 32
	dotted_note_set
	note E_3, 16
	note E_3, 8
	note E_3, 32
	dotted_note_set
	note A_2, 16
	note A_2, 8
	note A_2, 32
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 32

@loop_3:
	dotted_note_set
	note D_3, 16
	note D_3, 8
	note D_3, 32
	loop 1, @loop_3
	dotted_note_set
	note B_2, 16
	note B_2, 8
	note B_2, 32
	dotted_note_set
	note E_3, 16
	note E_3, 8
	note E_3, 8
	dotted_note_set
	note F_3, 16
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 32
	dotted_note_set
	note F_3, 16
	note F_3, 8
	note F_3, 32
	dotted_note_set
	note E_3, 16
	note E_3, 8
	note E_3, 32
	dotted_note_set
	note Eb3, 16
	note Eb3, 8
	note Eb3, 32
	dotted_note_set
	note D_3, 16
	note D_3, 8
	note D_3, 32
	dotted_note_set
	note E_3, 16
	note E_3, 8
	note E_3, 32

@loop_4:
	dotted_note_set
	note G_3, 16
	note G_3, 8
	note G_3, 32
	loop 1, @loop_4

@loop_5:
	dotted_note_set
	note Gb3, 16
	note Gb3, 8
	note Gb3, 32
	loop 1, @loop_5
	tempo 9
	dotted_note_set
	note F_3, 16
	note F_3, 8
	note F_3, 32
	tempo 10
	dotted_note_set
	note D_3, 16
	note D_3, 8
	tempo 11
	note D_3, 8
	dotted_note_set
	note E_3, 16
	number_of_note_tied 2
	note A_2, 64
	note A_2, 16
	music_end

music_ending_noise:
	tempo 8
	volume 12
	volume_envelope volume_decay, 1, 1

@loop_1:
	dotted_note_set
	noise_note 15, 32
	noise_note 7, 16
	loop 25, @loop_1
	tempo 9
	dotted_note_set
	noise_note 15, 32
	noise_note 7, 16
	music_end

music_ending_modulator:
	modulator_set 1, 2, 2, volume_decay, 0, 0
