music_heatman:
	music_header
	.WORD music_heatman_pulse_1
	.WORD music_heatman_pulse_2
	.WORD music_heatman_triangle
	.WORD music_heatman_noise
	.WORD music_heatman_modulator

music_heatman_pulse_1:
	tempo 6

@loop_2:
	duty_cycle 0
	volume 8
	base_note A_1
	volume_envelope volume_decay, 6, 4

@loop_1:
	note D_2, 4
	note D_2, 4
	note D_3, 4
	note D_2, 4
	note C_3, 4
	note Db3, 4
	note D_2, 4
	note D_3, 4
	note D_2, 4
	note A_2, 4
	note D_2, 4
	note Ab2, 4
	note D_2, 4
	note G_2, 4
	note Gb2, 4
	note F_2, 4
	note D_2, 4
	note D_2, 4
	note C_3, 4
	note D_2, 4
	note Bb2, 4
	note B_2, 4
	note D_2, 4
	note C_3, 4
	note D_2, 4
	note G_2, 4
	note D_2, 4
	note Gb2, 4
	note D_2, 4
	note F_2, 4
	note E_2, 4
	note Eb2, 4
	loop 2, @loop_1
	note D_2, 4
	note D_2, 4
	note D_3, 4
	note D_2, 4
	note C_3, 4
	note Db3, 4
	note D_2, 4
	note D_3, 4
	note D_2, 4
	note A_2, 4
	note D_2, 4
	note Ab2, 4
	note D_2, 4
	note G_2, 4
	note Gb2, 4
	note F_2, 4
	note C_3, 4
	note C_3, 4
	rest 4
	note A_2, 4
	note D_3, 4
	note D_3, 4
	rest 4
	note A_2, 4
	note A_2, 4
	note C_3, 4
	note A_2, 4
	note D_3, 4
	rest 16
	volume 10
	volume_envelope volume_attack, 10, 2
	base_note A_2
	duty_cycle 1
	number_of_note_tied 2
	note A_3, 16
	note A_3, 16
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note G_3, 4
	note F_3, 4
	number_of_note_tied 2
	note G_3, 16
	note G_3, 16
	note G_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note E_3, 4
	rest 4
	note F_3, 8
	duty_cycle 2
	note D_3, 4
	note F_3, 4
	note A_3, 4
	note D_4, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	note E_3, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note E_4, 4
	note F_4, 4
	note A_4, 4
	rest 4
	note D_4, 4
	rest 4
	note A_3, 4
	note C_4, 4
	note D_4, 4
	note F_4, 4
	note E_4, 4
	note D_4, 4
	note C_4, 4
	duty_cycle 1
	number_of_note_tied 2
	note A_3, 16
	note A_3, 16
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note G_3, 4
	note F_3, 4
	number_of_note_tied 2
	note G_3, 16
	note G_3, 16
	note G_3, 4
	note G_3, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note E_3, 4
	rest 4
	note F_3, 8
	duty_cycle 2
	note D_3, 4
	note F_3, 4
	note A_3, 4
	note D_4, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	note E_3, 4
	duty_cycle 2
	note E_4, 4
	note E_4, 4
	rest 4
	note D_4, 4
	note F_4, 4
	note F_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	note E_4, 4
	note D_4, 4
	note F_4, 4
	rest 8
	rest 4
	base_note A_1
	duty_cycle 0
	volume_envelope volume_decay, 6, 4
	number_of_note_tied 2
	note A_2, 4
	loop 0, @loop_2

music_heatman_pulse_2:
	tempo 6

@loop_2:
	volume_envelope volume_decay, 6, 4
	duty_cycle 2
	volume 7
	base_note G_1

@loop_1:
	pitch_envelope $25
	note G_2, 4
	note G_2, 4
	note C_4, 8
	note G_2, 4
	note C_4, 8
	note G_2, 4
	rest 4
	note C_4, 4
	note A_3, 8
	note C_4, 4
	note B_3, 4
	note A_3, 4
	note G_3, 4
	loop 6, @loop_1
	note C_4, 4
	note C_4, 4
	rest 4
	note B_3, 4
	note B_3, 4
	note B_3, 4
	rest 4
	note A_3, 4
	note C_4, 4
	note B_3, 4
	note A_3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	pitch_envelope $00
	base_note A_2
	volume 6
	volume_envelope volume_attack, 10, 2
	duty_cycle 1
	number_of_note_tied 2
	note F_3, 16
	note F_3, 16
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note E_3, 4
	note D_3, 4
	number_of_note_tied 2
	note E_3, 16
	note E_3, 16
	note E_3, 4
	note E_3, 4
	rest 4
	note F_3, 4
	rest 4
	note E_3, 4
	note C_3, 4
	rest 4
	note D_3, 8
	duty_cycle 2
	volume 6
	rest 4
	note D_3, 4
	note F_3, 4
	note A_3, 4
	note D_4, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	note E_3, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note E_4, 4
	note F_4, 4
	note A_4, 4
	rest 4
	note D_4, 4
	rest 4
	note A_3, 4
	note C_4, 4
	note D_4, 4
	note F_4, 4
	note E_4, 4
	note D_4, 4
	duty_cycle 1
	number_of_note_tied 2
	note F_3, 16
	note F_3, 16
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note E_3, 4
	note D_3, 4
	number_of_note_tied 2
	note E_3, 16
	note E_3, 16
	note E_3, 4
	note E_3, 4
	rest 4
	note F_3, 4
	rest 4
	note E_3, 4
	note C_3, 4
	rest 4
	note D_3, 8
	duty_cycle 2
	rest 4
	volume 6
	note D_3, 4
	note F_3, 4
	note A_3, 4
	note D_4, 4
	rest 4
	note A_3, 4
	rest 4
	note G_3, 4
	note A_3, 4
	rest 4
	note G_3, 4
	rest 4
	note C_3, 4
	note D_3, 4
	volume 10
	duty_cycle 2
	note C_4, 4
	note C_4, 4
	rest 4
	note A_3, 4
	note D_4, 4
	note D_4, 4
	rest 4
	note A_3, 4
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note D_4, 4
	rest 16
	base_note A_1
	volume 8
	duty_cycle 1
	loop 0, @loop_2

music_heatman_triangle:
	tempo 6
	triangle_note_length $1A
	base_note A_2

@loop_1:
	note D_3, 4
	note D_3, 4
	note D_4, 4
	note D_3, 4
	note C_4, 4
	note Db4, 4
	note D_3, 4
	note D_4, 4
	note D_3, 4
	note A_3, 4
	note D_3, 4
	note Ab3, 4
	note D_3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note D_3, 4
	note D_3, 4
	note C_4, 4
	note D_3, 4
	note Bb3, 4
	note B_3, 4
	note D_3, 4
	note C_4, 4
	note D_3, 4
	note G_3, 4
	note D_3, 4
	note Gb3, 4
	note D_3, 4
	note F_3, 4
	note E_3, 4
	note Eb3, 4
	loop 2, @loop_1
	note D_3, 4
	note D_3, 4
	note D_4, 4
	note D_3, 4
	note C_4, 4
	note Db4, 4
	note D_3, 4
	note D_4, 4
	note D_3, 4
	note A_3, 4
	note D_3, 4
	note Ab3, 4
	note D_3, 4
	note G_3, 4
	note Gb3, 4
	note F_3, 4
	note C_4, 4
	note C_4, 4
	rest 4
	note A_3, 4
	note D_4, 4
	note D_4, 4
	rest 4
	note A_3, 4
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note D_4, 4
	pitch_envelope $10
	rest 4
	note D_5, 4
	note B_4, 4
	pitch_envelope $00
	number_of_note_tied 2
	note D_3, 4
	triangle_note_length $30
	loop 0, @loop_1

music_heatman_noise:
	tempo 6

@loop_1:
	volume 15
	volume_envelope volume_decay, 10, 3
	noise_note 13, 4
	volume 10
	volume_envelope volume_decay, 10, 2
	noise_note 13, 4
	noise_note 13, 4
	noise_note 13, 4
	loop 27, @loop_1
	volume_envelope volume_decay, 10, 3
	noise_note 5, 4
	noise_note 5, 8
	noise_note 5, 4
	noise_note 5, 4
	noise_note 5, 8
	noise_note 5, 4
	noise_note 5, 4
	noise_note 5, 4
	noise_note 5, 4
	noise_note 5, 8
	noise_note 5, 4
	noise_note 5, 8
	loop 0, @loop_1

music_heatman_modulator:
