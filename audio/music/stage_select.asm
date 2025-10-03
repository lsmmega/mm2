music_stage_select:
	music_header
	.WORD music_stage_select_pulse_1
	.WORD music_stage_select_pulse_2
	.WORD music_stage_select_triangle
	.WORD music_stage_select_noise
	.WORD music_stage_select_modulator

music_stage_select_pulse_1:
	tempo 5
	volume 9
	base_note F_1
	volume_envelope volume_decay, 5, 3
	duty_cycle 2
	base_note F_1
	pitch_envelope $15
	note Bb3, 8
	note G_3, 8
	rest 8
	note E_3, 8
	rest 8
	note Db3, 4
	note Db3, 4
	note Db3, 8
	note Bb2, 8
	base_note F_2
	pitch_envelope $00

@loop_1:
	volume 11
	volume_envelope volume_decay, 1, 6
	duty_cycle 0
	note Bb2, 8
	note Db3, 8
	note F_3, 8
	note Bb2, 8
	note Db3, 8
	note Ab3, 8
	note Bb2, 8
	note Db3, 8
	note G_3, 8
	note Bb2, 8
	note Db3, 8
	note Gb3, 8
	note Bb2, 8
	note Db3, 8
	note E_3, 8
	note F_3, 8
	duty_cycle 1
	note Bb2, 8
	note Db3, 8
	note F_3, 8
	note Bb2, 8
	note Db3, 8
	note Ab3, 8
	note Bb2, 8
	note Db3, 8
	note G_3, 8
	note Bb2, 8
	note Db3, 8
	note Gb3, 8
	note Bb2, 8
	note Db3, 8
	note E_3, 8
	note F_3, 8
	loop 0, @loop_1

music_stage_select_pulse_2:
	tempo 5
	base_note F_2
	rest 64
	volume_envelope volume_decay, 1, 6

@loop_1:
	volume 7
	duty_cycle 0
	rest 8
	note Bb2, 8
	note Db3, 8
	note F_3, 8
	note Bb2, 8
	note Db3, 8
	note Ab3, 8
	note Bb2, 8
	note Db3, 8
	note G_3, 8
	note Bb2, 8
	note Db3, 8
	note Gb3, 8
	note Bb2, 8
	note Db3, 8
	note E_3, 8
	duty_cycle 1
	volume 9
	note Db3, 8
	note F_3, 8
	note Bb3, 8
	note Db3, 8
	note F_3, 8
	note C_4, 8
	note Db3, 8
	note F_3, 8
	note B_3, 8
	note Db3, 8
	note F_3, 8
	note Bb3, 8
	note Db3, 8
	note F_3, 8
	note G_3, 8
	note Ab3, 8
	loop 0, @loop_1

music_stage_select_triangle:
	tempo 5
	triangle_note_length $30
	base_note F_2
	pitch_envelope $0F
	note Bb4, 8
	note G_4, 8
	rest 8
	note E_4, 8
	rest 8
	note Db4, 4
	note Db4, 4
	note Db4, 8
	note A_3, 8

@loop_1:
	triangle_note_length $31
	note Bb2, 8
	note Ab2, 8
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note Bb2, 8
	rest 8
	note Db3, 8
	pitch_envelope $10
	note G_4, 8
	base_note F_1
	pitch_envelope $00
	note Bb2, 8
	note F_2, 8
	note F_3, 8
	base_note F_2
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note Eb3, 8
	note Db3, 8
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note Ab2, 8
	loop 0, @loop_1

music_stage_select_noise:
	tempo 5
	volume_envelope volume_decay, 4, 3
	volume 15
	rest 32
	rest 16
	noise_note 8, 8
	noise_note 8, 8

@loop_1:
	volume_envelope volume_decay, 15, 2
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	volume_envelope volume_decay, 9, 4
	noise_note 13, 8
	loop 0, @loop_1

music_stage_select_modulator:
