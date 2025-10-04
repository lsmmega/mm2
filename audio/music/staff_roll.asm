music_staff_roll:
	music_header
	.WORD music_staff_roll_pulse_1
	.WORD music_staff_roll_pulse_2
	.WORD music_staff_roll_triangle
	.WORD music_staff_roll_noise
	.WORD music_staff_roll_modulator

music_staff_roll_pulse_1:
	tempo 5
	volume 12
	base_note B_2
	volume_envelope volume_decay, 1, 26
	rest 64
	note D_3, 4
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	note Bb4, 4
	note D_4, 4
	note F_4, 4
	note Bb4, 4
	note D_5, 4

@loop_1:
	note G_3, 16
	rest 64
	rest 32
	note G_4, 8
	note G_4, 8
	rest 64
	rest 32
	note G_3, 8
	dotted_note_set
	note Gb3, 16
	note F_3, 16
	rest 64
	rest 16
	rest 8
	note Eb4, 8
	note Eb4, 8
	note F_4, 8
	rest 64
	rest 32
	note F_3, 16
	note Gb3, 16
	loop 1, @loop_1
	note G_3, 16
	rest 16
	rest 64
	rest 64
	rest 64
	base_note B_1
	rest 8
	note F_2, 8
	note Gb2, 8
	note G_2, 8

@loop_2:
	note Bb2, 8
	note C_3, 4
	note C_3, 4
	rest 8
	note Bb2, 4
	note Bb2, 4
	note C_3, 8
	rest 8
	note Bb2, 8
	note C_3, 4
	note C_3, 4
	rest 8
	note G_2, 4
	note G_2, 4
	note Bb2, 8
	note C_3, 4
	note C_3, 4
	note Eb3, 8
	note D_3, 4
	note D_3, 4
	note C_3, 8
	note Bb2, 4
	note Bb2, 4
	note Bb2, 8
	note C_3, 4
	note C_3, 4
	rest 8
	note Bb2, 4
	note Bb2, 4
	note C_3, 8
	rest 8
	note Bb2, 8
	note C_3, 4
	note C_3, 4
	rest 8
	note F_2, 4
	note F_2, 4
	rest 8
	note F_2, 4
	note F_2, 4
	note F_2, 8
	note Gb2, 4
	note Gb2, 4
	note G_2, 8
	note Bb2, 4
	note Bb2, 4
	loop 1, @loop_2
	base_note B_2
	duty_cycle 3
	note Ab3, 32
	note Ab3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note Eb4, 4
	note C_4, 4
	note Ab3, 4
	note C_4, 4
	note Eb4, 4
	note C_4, 4
	note Eb4, 4
	note Ab4, 4
	note Eb4, 32
	note Bb3, 32
	note Bb3, 8
	note D_4, 8
	rest 8
	dotted_note_set
	note Bb4, 16
	note Ab4, 16
	note G_4, 16
	note F_4, 16
	note Ab3, 32
	note Ab3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note Eb4, 4
	note C_4, 4
	note Ab3, 4
	note C_4, 4
	note Eb4, 4
	note C_4, 4
	note Eb4, 4
	note Ab4, 4
	note Eb4, 32
	note Bb3, 32
	dotted_note_set
	note Bb3, 8
	dotted_note_set
	note G_3, 8
	note Bb3, 8
	note B_3, 32
	volume 8
	note Eb4, 4
	note Gb4, 4
	note B_4, 4
	note Eb4, 4
	note Gb4, 4
	note B_4, 4
	note Eb5, 4
	note B_4, 4
	duty_cycle 0
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note D_4, 8
	rest 8
	note Bb3, 64
	note Bb3, 8
	note Ab3, 8
	note Ab3, 4
	note Ab3, 4
	note Ab3, 8
	note F_3, 8
	rest 8
	note F_3, 8
	rest 8
	note G_3, 32
	note G_3, 8
	note Ab3, 8
	note Bb3, 8
	rest 16
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note D_4, 8
	rest 8
	note Bb3, 64
	note Bb3, 8
	note E_3, 8
	note E_3, 8
	note F_3, 8
	note G_3, 8
	rest 8
	note E_3, 8
	note F_3, 8
	note G_3, 8
	rest 8
	note E_3, 8
	note F_3, 8
	note G_3, 8
	rest 8
	volume 15
	note E_3, 8
	note F_3, 8
	number_of_note_tied 2
	note G_3, 8
	note G_3, 64
	note G_4, 8
	note G_4, 8
	volume 12
	dotted_note_set
	rest 8
	note G_4, 8
	note G_4, 8
	volume 8
	dotted_note_set
	rest 8
	note G_4, 8
	note G_4, 8
	volume 5
	dotted_note_set
	rest 8
	note G_4, 8
	note G_4, 8
	volume 3
	dotted_note_set
	rest 8
	note G_4, 8
	note G_4, 8
	music_end

music_staff_roll_pulse_2:
	tempo 5
	volume 12
	base_note B_2
	volume_envelope volume_decay, 1, 26
	rest 64
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	note Bb4, 4
	note D_4, 4
	note F_4, 4
	note Bb4, 4
	note D_5, 4
	note F_5, 4

@loop_1:
	note E_3, 16
	rest 64
	rest 32
	note E_4, 8
	note E_4, 8
	rest 64
	rest 32
	note E_3, 8
	dotted_note_set
	note Eb3, 16
	note D_3, 16
	rest 64
	rest 16
	rest 8
	note C_4, 8
	note C_4, 8
	note D_4, 8
	rest 64
	rest 32
	note D_3, 16
	note Eb3, 16
	loop 1, @loop_1
	note E_3, 16
	rest 16
	rest 64
	rest 64
	rest 64
	rest 8
	note F_3, 8
	note Gb3, 8
	note G_3, 8

@loop_2:
	note Bb3, 8
	note C_4, 4
	note C_4, 4
	rest 8
	note Bb3, 4
	note Bb3, 4
	note C_4, 8
	rest 8
	note Bb3, 8
	note C_4, 4
	note C_4, 4
	rest 8
	note G_3, 4
	note G_3, 4
	note Bb3, 8
	note C_4, 4
	note C_4, 4
	note Eb4, 8
	note D_4, 4
	note D_4, 4
	note C_4, 8
	note Bb3, 4
	note Bb3, 4
	note Bb3, 8
	note C_4, 4
	note C_4, 4
	rest 8
	note Bb3, 4
	note Bb3, 4
	note C_4, 8
	rest 8
	note Bb3, 8
	note C_4, 4
	note C_4, 4
	rest 8
	note F_3, 4
	note F_3, 4
	rest 8
	note F_3, 4
	note F_3, 4
	note F_3, 8
	note Gb3, 4
	note Gb3, 4
	note G_3, 8
	note Bb3, 4
	note Bb3, 4
	loop 1, @loop_2

@loop_3:
	note C_3, 4
	note Eb3, 4
	note Ab3, 4
	note C_4, 4
	loop 7, @loop_3

@loop_4:
	note D_3, 4
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	loop 7, @loop_4

@loop_5:
	note C_3, 4
	note Eb3, 4
	note Ab3, 4
	note C_4, 4
	loop 7, @loop_5

@loop_6:
	note D_3, 4
	note F_3, 4
	note Bb3, 4
	note D_4, 4
	note Gb4, 4
	note D_4, 4
	note Bb3, 4
	note F_3, 4
	loop 1, @loop_6
	note Eb3, 4
	note Gb3, 4
	note B_3, 4
	note Eb4, 4
	note Gb3, 4
	note B_3, 4
	note Eb4, 4
	note Gb4, 4
	note B_3, 4
	note Eb4, 4
	note Gb4, 4
	note B_4, 4
	note Eb4, 4
	note Gb4, 4
	note B_4, 4
	note Eb5, 4
	duty_cycle 0
	volume_envelope volume_decay, 1, 26
	note G_3, 8
	note G_3, 4
	note G_3, 4
	note G_3, 8
	note G_3, 4
	note G_3, 4
	note G_3, 8
	note G_3, 8
	rest 8
	note F_3, 64
	note G_3, 8
	note Eb3, 8
	note Eb3, 4
	note Eb3, 4
	note Eb3, 8
	note D_3, 8
	rest 8
	note D_3, 8
	rest 8
	note E_3, 32
	note E_3, 8
	note Eb3, 8
	note F_3, 8
	rest 16
	note G_3, 8
	note G_3, 4
	note G_3, 4
	note G_3, 8
	note G_3, 4
	note G_3, 4
	note G_3, 8
	note G_3, 8
	rest 8
	note F_3, 64
	note G_3, 8
	note G_3, 8
	note G_3, 8
	note A_3, 8
	note C_4, 8
	rest 8
	note G_3, 8
	note A_3, 8
	note C_4, 8
	rest 8
	note G_3, 8
	note A_3, 8
	note C_4, 8
	rest 8
	volume 15
	note G_3, 8
	note A_3, 8
	number_of_note_tied 2
	note C_4, 8
	note C_4, 64
	note C_5, 8
	note C_5, 8
	volume 12
	dotted_note_set
	rest 8
	note C_5, 8
	note C_5, 8
	volume 8
	dotted_note_set
	rest 8
	note C_5, 8
	note C_5, 8
	volume 5
	dotted_note_set
	rest 8
	note C_5, 8
	note C_5, 8
	volume 2
	dotted_note_set
	rest 8
	note C_5, 8
	note C_5, 8
	music_end

music_staff_roll_triangle:
	tempo 5
	triangle_note_length $30
	base_note B_2
	pitch_envelope $10
	rest 16
	note E_5, 8
	note Db5, 8
	rest 8
	note Db5, 8
	note B_4, 16
	note E_5, 4
	note E_5, 4
	note E_5, 4
	rest 4
	note Db5, 4
	note Db5, 4
	note Db5, 4
	rest 4
	note Bb4, 4
	note Bb4, 4
	note Bb4, 4
	rest 4
	note E_5, 4
	note Db5, 4
	note B_4, 4
	note Ab4, 4

@loop_1:
	pitch_envelope $00
	note Bb3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	rest 16
	note Bb3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	rest 8
	note Bb3, 8
	note C_4, 8
	note Eb4, 8
	pitch_envelope $10
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note Bb3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	rest 16
	note Bb3, 8
	note C_4, 8
	rest 8
	note C_4, 8
	rest 8
	note Bb3, 8
	note C_4, 8
	note Eb4, 8
	pitch_envelope $10
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note F_3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 16
	note F_3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 8
	note F_3, 8
	note Bb3, 8
	note D_4, 8
	pitch_envelope $10
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note F_3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 16
	note F_3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 8
	note F_3, 8
	pitch_envelope $10
	note E_5, 16
	note E_5, 16
	loop 1, @loop_1

@loop_2:
	note C_4, 8
	rest 8
	note E_5, 8
	note C_4, 8
	rest 8
	note C_4, 8
	note E_5, 8
	rest 8
	note C_4, 8
	rest 8
	note E_5, 8
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note E_5, 8
	note C_4, 8
	loop 5, @loop_2
	pitch_envelope $00

@loop_3:
	note Ab3, 8
	note Ab3, 4
	note Ab3, 4
	loop 7, @loop_3

@loop_4:
	note Bb3, 8
	note Bb3, 4
	note Bb3, 4
	loop 7, @loop_4

@loop_5:
	note Ab3, 8
	note Ab3, 4
	note Ab3, 4
	loop 7, @loop_5

@loop_6:
	note Bb3, 8
	note Bb3, 4
	note Bb3, 4
	loop 3, @loop_6
	note B_3, 8
	note B_3, 4
	note B_3, 4
	note B_3, 8
	note B_3, 4
	note B_3, 4
	pitch_envelope $15
	note E_5, 4
	note E_5, 4
	note E_5, 4
	note E_5, 4
	note Db5, 4
	note Db5, 4
	note Db5, 4
	note Db5, 4
	pitch_envelope $00

@loop_7:
	note C_4, 8
	note C_4, 4
	note C_4, 4
	loop 23, @loop_7
	note C_3, 8
	note C_3, 8
	note C_3, 8
	note E_3, 8
	rest 8
	note C_3, 8
	note C_3, 8
	note E_3, 8
	rest 8
	note C_3, 8
	note C_3, 8
	note E_3, 8
	rest 8
	note C_3, 8
	note C_3, 8
	note E_3, 8

@loop_8:
	pitch_envelope $10
	note E_5, 4
	note Db5, 4
	note B_4, 4
	loop 4, @loop_8
	note Ab4, 4
	pitch_envelope $00
	note E_3, 8
	note E_3, 8
	music_end

music_staff_roll_noise:
	tempo 5
	volume_envelope volume_decay, 10, 2
	volume 15

@loop_1:
	noise_note 13, 8
	noise_note 13, 4
	noise_note 13, 4
	volume_envelope volume_decay, 8, 4
	pitch_envelope $FE
	noise_note 2, 8
	pitch_envelope $00
	volume_envelope volume_decay, 10, 2
	noise_note 13, 4
	noise_note 13, 4
	loop 87, @loop_1
	noise_note 12, 8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 12, 8
	rest 8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 12, 8
	rest 8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 12, 8
	rest 8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 12, 8
	music_end

music_staff_roll_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
