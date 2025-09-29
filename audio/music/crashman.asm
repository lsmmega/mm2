music_crashman:
	music_header
	.WORD music_crashman_pulse_1
	.WORD music_crashman_pulse_2
	.WORD music_crashman_triangle
	.WORD music_crashman_noise
	.WORD music_crashman_modulator

music_crashman_pulse_1:
	tempo 6
	volume 12
	volume_envelope volume_decay, 1, 10
	duty_cycle 1
	base_note B_1
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	note G_2, 8
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 8
	note F_2, 8
	base_note B_2
	note G_4, 4
	rest 4
	note G_4, 16
	base_note B_1
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 8
	base_note B_2
	note G_4, 4
	note G_4, 4
	rest 4
	note G_4, 4
	note A_4, 4
	note Bb4, 4
	note A_4, 4
	note G_4, 4
	base_note B_1
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 16

@loop_1:
	base_note B_2
	note G_4, 4
	rest 4
	loop 4, @loop_1
	rest 4
	note G_4, 4
	note A_4, 4
	note Bb4, 4
	note A_4, 4
	note G_4, 4

@loop_2:
	volume_envelope volume_decay, 1, 8
	note D_4, 4
	rest 16
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	note Eb4, 8
	note D_4, 4
	rest 16
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	rest 8
	note G_4, 4
	rest 4
	note G_4, 16
	loop 1, @loop_2
	volume_envelope volume_decay, 1, 16
	volume 13
	duty_cycle 2
	note B_3, 8
	rest 8
	note B_3, 8
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note A_3, 4
	note G_3, 4
	dotted_note_set
	note A_3, 8
	note G_3, 16
	rest 16
	note G_3, 8
	note A_3, 8
	note G_3, 8
	note B_3, 8
	rest 8
	note B_3, 8
	rest 4
	note B_3, 4
	note C_4, 8
	note B_3, 8
	rest 8
	number_of_note_tied 3
	note D_4, 16
	modulator 1
	note D_4, 16
	pitch_envelope $06
	note D_4, 16
	pitch_envelope $00
	modulator 0
	note G_4, 4
	rest 4
	note G_4, 16
	note D_4, 8
	rest 8
	note D_4, 8
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	note C_4, 4
	note B_3, 4
	dotted_note_set
	note C_4, 8
	note B_3, 16
	rest 16
	note B_3, 8
	note C_4, 8
	note B_3, 8
	note D_4, 8
	rest 8
	note D_4, 8
	rest 4
	note D_4, 4
	note E_4, 8
	note D_4, 8
	rest 8
	number_of_note_tied 3
	note F_4, 16
	modulator 1
	note F_4, 16
	pitch_envelope $06
	note F_4, 16
	pitch_envelope $00
	modulator 0
	note G_4, 4
	rest 4
	note G_4, 16
	note G_4, 8
	rest 8
	note G_4, 8
	rest 4
	note G_4, 4
	note G_4, 4
	rest 4
	note G_4, 4
	rest 4
	note G_4, 4
	note E_4, 4
	note D_4, 4
	dotted_note_set
	note E_4, 8
	note D_4, 16
	rest 16
	note D_4, 8
	note E_4, 8
	note D_4, 8
	note G_4, 8
	rest 8
	note G_4, 8
	rest 4
	note G_4, 4
	note A_4, 8
	note G_4, 8
	rest 8
	number_of_note_tied 2
	note Bb4, 16
	note Bb4, 16
	pitch_envelope $06
	note Bb4, 16
	pitch_envelope $00
	modulator 0
	note G_4, 4
	rest 4
	note G_4, 16
	base_note B_3
	note B_4, 8
	rest 8
	note B_4, 8
	rest 4
	note B_4, 4
	note B_4, 4
	rest 4
	note B_4, 4
	rest 4
	note B_4, 4
	note A_4, 4
	note G_4, 4
	dotted_note_set
	note A_4, 8
	note G_4, 16
	rest 16
	note G_4, 8
	note A_4, 8
	note G_4, 8
	note B_4, 8
	rest 8
	note B_4, 8
	rest 4
	note B_4, 4
	note C_5, 8
	note B_4, 8
	rest 8
	number_of_note_tied 3
	note D_5, 16
	modulator 1
	note D_5, 8
	note D_5, 16
	modulator 0
	note G_4, 4
	note B_4, 4
	note D_5, 4
	note G_5, 4
	note B_4, 4
	note D_5, 4
	note G_5, 4
	note B_5, 4
	base_note B_2
	duty_cycle 1
	volume 12

@loop_3:
	note D_4, 4
	rest 16
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	note Eb4, 8
	note D_4, 4
	rest 16
	rest 4
	note D_4, 4
	rest 4
	note F_4, 16
	note E_4, 8
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	note D_4, 4
	rest 4
	rest 8
	note G_4, 4
	rest 4
	note G_4, 16
	loop 1, @loop_3

@loop_4:
	note E_4, 16
	note E_4, 8
	rest 4
	note E_4, 4
	note E_4, 8
	note C_4, 16
	note E_4, 8
	number_of_note_tied 2
	note D_4, 16
	modulator 1
	note D_4, 16
	modulator 0
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	note D_4, 8
	note D_4, 4
	loop 2, @loop_4
	note E_4, 16
	note E_4, 8
	rest 4
	note E_4, 4
	note E_4, 8
	note G_4, 16
	note E_4, 8
	note D_4, 4
	note D_4, 4
	rest 4
	note G_4, 4
	note G_4, 4
	rest 4
	note B_4, 4
	note B_4, 4
	rest 32
	loop 0, @loop_2
	music_end

music_crashman_pulse_2:
	tempo 6
	volume_envelope volume_decay, 1, 10
	duty_cycle 1
	volume 6
	base_note B_1
	rest 4
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	note G_2, 8
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 8
	note F_2, 4
	note D_4, 4
	rest 4
	note D_4, 16
	rest 4
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	note G_2, 4
	rest 4
	note G_2, 4
	note G_2, 4
	rest 4
	note G_2, 8
	note E_2, 4
	base_note B_2
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note Gb4, 4
	note G_4, 4
	note Gb4, 4
	note D_4, 4
	base_note B_1
	rest 4
	note G_2, 8
	rest 16
	note E_2, 8
	note F_2, 16
	note Gb2, 8
	rest 4
	base_note B_2

@loop_1:
	note D_4, 4
	rest 4
	loop 4, @loop_1
	rest 4
	note D_4, 4
	note Gb4, 4
	note G_4, 4
	note Gb4, 4
	note D_4, 4

@loop_2:
	note B_3, 4
	rest 16
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	note C_4, 8
	note B_3, 4
	rest 16
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	rest 8
	note D_4, 4
	rest 4
	note D_4, 16
	loop 1, @loop_2

@loop_3:
	volume 7
	volume_envelope volume_decay, 2, 13
	duty_cycle 0
	note D_4, 8
	note B_3, 8
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note G_4, 8
	rest 4
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note B_3, 8
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note G_4, 4
	note D_4, 4
	note B_3, 4
	note D_4, 4
	note B_3, 4
	note G_3, 4
	note D_3, 4
	note D_4, 8
	note B_3, 8
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note G_4, 8
	rest 4
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note B_3, 8
	note D_4, 8
	note B_3, 4
	note D_4, 4
	rest 4
	note G_4, 4
	volume_envelope volume_decay, 1, 5
	volume 10
	duty_cycle 1
	note D_4, 4
	rest 4
	note D_4, 16
	loop 3, @loop_3

@loop_4:
	note B_3, 4
	rest 16
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	note C_4, 8
	note B_3, 4
	rest 16
	rest 4
	note B_3, 4
	rest 4
	note D_4, 16
	note C_4, 8
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	note B_3, 4
	rest 4
	rest 8
	note D_4, 4
	rest 4
	note D_4, 16
	loop 1, @loop_4

@loop_5:
	note C_4, 16
	note C_4, 8
	rest 4
	note C_4, 4
	note C_4, 8
	note A_3, 16
	note C_4, 8
	number_of_note_tied 2
	note B_3, 16
	note B_3, 16
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note B_3, 8
	note B_3, 4
	loop 2, @loop_5
	note C_4, 16
	note C_4, 8
	rest 4
	note C_4, 4
	note C_4, 8
	note E_4, 16
	note C_4, 8
	note B_3, 4
	note B_3, 4
	rest 4
	note D_4, 4
	note D_4, 4
	rest 4
	note G_4, 4
	note G_4, 4
	rest 32
	loop 0, @loop_2
	music_end

music_crashman_triangle:
	tempo 6
	triangle_note_length $25
	base_note B_2

@loop_1:
	note G_3, 8
	rest 8
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note F_3, 16
	note Gb3, 8
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_3, 4
	pitch_envelope $10
	note G_4, 4
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note F_3, 8
	note F_4, 8
	note Gb3, 8
	note Gb4, 8
	loop 2, @loop_1
	note G_3, 8
	rest 8
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note F_3, 16
	note Gb3, 8
	note G_3, 8
	note G_3, 8
	note G_3, 8
	note G_3, 8
	note G_3, 8
	note G_3, 4
	pitch_envelope $10
	note E_5, 4
	note E_5, 4
	note E_5, 4
	note Db5, 4
	note Db5, 4
	note B_4, 4
	note B_4, 4

@loop_2:
	pitch_envelope $00
	note G_3, 8
	rest 8
	pitch_envelope $10
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note F_3, 16
	note Gb3, 8
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_3, 4
	pitch_envelope $10
	note G_4, 4
	note G_4, 8
	pitch_envelope $00
	note E_3, 8
	note F_3, 8
	note F_4, 8
	note Gb3, 8
	note Gb4, 8
	loop 15, @loop_2

@loop_3:
	dotted_note_set
	note F_3, 8
	dotted_note_set
	note A_3, 8
	note C_4, 8
	rest 4
	note E_4, 4
	note C_4, 4
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note F_3, 4
	note E_3, 4
	dotted_note_set
	note G_3, 8
	dotted_note_set
	note B_3, 8
	note D_4, 8
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note G_3, 8
	note G_3, 4
	loop 2, @loop_3
	dotted_note_set
	note F_3, 8
	dotted_note_set
	note A_3, 8
	note C_4, 8
	rest 4
	note E_4, 4
	note C_4, 4
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note F_3, 4
	note E_3, 4
	note G_3, 4
	note G_3, 4
	rest 4
	note B_3, 4
	note B_3, 4
	rest 4
	note D_4, 4
	note D_4, 4
	pitch_envelope $10
	rest 4
	note E_5, 4
	note E_5, 4
	note E_5, 4
	note Db5, 4
	note Db5, 4
	note B_4, 4
	note B_4, 4
	pitch_envelope $00
	loop 0, @loop_2

music_crashman_noise:
	tempo 6
	volume 10

@loop_1:
	volume_envelope volume_decay, 15, 3
	noise_note 12, 16
	volume_envelope volume_decay, 4, 3
	noise_note 10, 16
	loop 13, @loop_1
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 8
	pitch_envelope $15
	rest 16
	noise_note 10, 16

@loop_2:
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 8
	noise_note 10, 8
	noise_note 10, 16
	loop 7, @loop_2

@loop_3:
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	noise_note 10, 8
	noise_note 10, 8
	noise_note 10, 4
	noise_note 10, 4
	rest 4
	noise_note 10, 4
	loop 2, @loop_3
	rest 16
	noise_note 10, 16
	rest 16
	noise_note 10, 16
	noise_note 12, 4
	noise_note 12, 4
	rest 4
	noise_note 11, 4
	noise_note 11, 4
	rest 4
	noise_note 10, 4
	noise_note 10, 4
	rest 16
	noise_note 10, 16
	loop 0, @loop_2

music_crashman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
