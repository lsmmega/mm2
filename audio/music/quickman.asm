music_quickman:
	music_header
	.WORD music_quickman_pulse_1
	.WORD music_quickman_pulse_2
	.WORD music_quickman_triangle
	.WORD music_quickman_noise
	.WORD music_quickman_modulator

music_quickman_pulse_1:
	tempo 6

@loop_5:
	volume 12
	duty_cycle 3
	volume_envelope volume_decay, 2, 10
	base_note G_2

@loop_1:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_1

@loop_2:
	note F_3, 8
	note Bb3, 4
	note D_3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb2, 4
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	loop 1, @loop_2

@loop_3:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_3
	note F_3, 8
	note Bb3, 4
	note D_3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb2, 4
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	note Bb2, 4
	note C_3, 4
	note D_3, 4
	note F_3, 4
	rest 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	rest 16
	volume_envelope volume_decay, 1, 18
	volume 14
	note Bb2, 8
	note B_2, 8
	number_of_note_tied 2
	note C_3, 32
	modulator 1
	note C_3, 64
	modulator 0
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Eb3, 8
	note F_3, 8
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Eb3, 8
	note D_3, 8
	dotted_note_set
	note C_3, 16
	note C_3, 8
	note D_3, 4
	note C_3, 4
	dotted_note_set
	note Bb2, 16
	note Bb2, 16
	note B_2, 16
	number_of_note_tied 2
	note C_3, 32
	modulator 1
	note C_3, 64
	modulator 0
	dotted_note_set
	note D_3, 8
	dotted_note_set
	note Eb3, 8
	note F_3, 8
	number_of_note_tied 2
	note G_3, 16
	modulator 1
	note G_3, 16
	modulator 0
	note G_4, 4
	note F_4, 4
	note Eb4, 4
	note F_4, 4
	note Eb4, 4
	note D_4, 4
	note Eb4, 4
	note D_4, 4
	note C_4, 4
	note D_4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note Bb3, 4
	note Ab3, 4
	note Bb3, 4
	note Ab3, 4
	note G_3, 4
	note Ab3, 4
	note G_3, 4
	note F_3, 4
	note G_3, 4
	note F_3, 4
	note Eb3, 4
	volume_envelope volume_decay, 1, 47
	note G_3, 32
	dotted_note_set
	note G_3, 8
	dotted_note_set
	note Ab3, 8
	note C_4, 8
	note Bb3, 32
	note G_3, 16
	note Bb3, 16
	note B_3, 32
	dotted_note_set
	note B_3, 8
	dotted_note_set
	note D_4, 8
	note F_4, 8
	note Eb4, 32
	note Eb4, 8
	note D_4, 8
	note C_4, 8
	note Bb3, 8
	note Ab3, 32
	note Ab3, 8
	note G_3, 8
	note F_3, 16
	note Bb3, 32
	note Bb3, 8
	note Ab3, 8
	note G_3, 16

@loop_4:
	note C_4, 4
	note F_4, 4
	note C_4, 4
	note Ab3, 4
	loop 3, @loop_4
	volume_envelope volume_decay, 7, 7
	note C_4, 16
	note C_4, 8
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 8
	note C_4, 8
	note Eb4, 4
	note E_4, 4
	loop 0, @loop_5

music_quickman_pulse_2:
	tempo 6

@loop_8:
	volume 8
	duty_cycle 3
	dotted_note_set
	rest 4
	base_note G_2
	volume_envelope volume_decay, 1, 16

@loop_1:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_1

@loop_2:
	note F_3, 8
	note Bb3, 4
	note D_3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb2, 4
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	loop 1, @loop_2

@loop_3:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_3
	note F_3, 8
	note Bb3, 4
	note D_3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb2, 4
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	note Bb2, 4
	note C_3, 4
	note D_3, 4
	note F_3, 4
	rest 4
	note Bb3, 4
	note D_4, 4
	note F_4, 4
	rest 16
	rest 8
	rest 2
	volume 9
	volume_envelope volume_decay, 1, 18
	duty_cycle 0

@loop_4:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_4

@loop_5:
	note F_3, 8
	note Bb3, 4
	note D_3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb2, 4
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	loop 1, @loop_5

@loop_6:
	note G_3, 8
	note C_4, 4
	note Eb3, 4
	rest 4
	note C_4, 4
	rest 4
	note C_3, 4
	rest 4
	note C_4, 4
	rest 4
	note G_3, 4
	note Eb3, 8
	note C_4, 8
	loop 1, @loop_6
	rest 4
	note Bb3, 4
	rest 4
	note F_3, 4
	note D_3, 8
	note Bb3, 8
	duty_cycle 3
	volume_envelope volume_decay, 1, 15
	rest 4
	note G_4, 4
	note F_4, 4
	note Eb4, 4
	note F_4, 4
	note Eb4, 4
	note D_4, 4
	note Eb4, 4
	note D_4, 4
	note C_4, 4
	note D_4, 4
	note C_4, 4
	note Bb3, 4
	note C_4, 4
	note Bb3, 4
	note Ab3, 4
	note Bb3, 4
	note Ab3, 4
	note G_3, 4
	note Ab3, 4
	note G_3, 4
	note F_3, 4
	note G_3, 4
	note F_3, 4
	base_note G_2
	volume_envelope volume_decay, 1, 47
	volume 10
	note Eb3, 32
	dotted_note_set
	note Eb3, 8
	dotted_note_set
	note F_3, 8
	note G_3, 8
	note D_3, 32
	note D_3, 16
	note G_3, 16
	note G_3, 32
	dotted_note_set
	note G_3, 8
	dotted_note_set
	note B_3, 8
	note D_4, 8
	note C_4, 32
	note C_4, 8
	rest 4
	note D_4, 8
	note C_4, 8
	note Bb3, 4
	note F_3, 32
	note F_3, 8
	note Eb3, 8
	note Db3, 16
	note G_3, 32
	note G_3, 8
	note F_3, 8
	note Eb3, 16

@loop_7:
	note Ab3, 4
	note C_4, 4
	note Ab3, 4
	note F_3, 4
	loop 3, @loop_7
	volume_envelope volume_decay, 7, 7
	note Ab3, 16
	note Ab3, 8
	rest 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	note Ab3, 8
	note Ab3, 8
	note G_3, 4
	note Ab3, 4
	loop 0, @loop_8

music_quickman_triangle:
	tempo 6
	triangle_note_length $28
	base_note G_2

@loop_1:
	note C_4, 8
	note G_3, 8
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 8
	note G_3, 4
	note G_3, 8
	note Bb3, 8
	loop 1, @loop_1

@loop_2:
	note Bb3, 8
	note F_3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 8
	note F_3, 4
	note F_3, 8
	note Bb3, 8
	loop 1, @loop_2

@loop_3:
	note C_4, 8
	note G_3, 8
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 8
	note G_3, 4
	note G_3, 8
	note Bb3, 8
	loop 1, @loop_3
	note Bb3, 8
	note F_3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 8
	note F_3, 4
	note F_3, 8
	note Bb3, 8
	pitch_envelope $12
	note G_4, 4
	note G_4, 4
	note G_4, 4
	note G_4, 4
	rest 4
	note E_4, 4
	note E_4, 4
	note E_4, 4
	rest 4
	note C_5, 4
	note C_5, 4
	note C_5, 4
	note Bb4, 4
	note Bb4, 4
	note B_4, 4
	note B_4, 4
	pitch_envelope $00

@loop_4:
	note C_4, 8
	note G_3, 8
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 8
	note G_3, 4
	note G_3, 8
	note Bb3, 8
	loop 1, @loop_4

@loop_5:
	note Bb3, 8
	note F_3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 8
	note F_3, 4
	note F_3, 8
	note Bb3, 8
	loop 1, @loop_5

@loop_6:
	note C_4, 8
	note G_3, 8
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 8
	note G_3, 4
	note G_3, 8
	note Bb3, 8
	loop 1, @loop_6

@loop_7:
	note Bb3, 8
	note F_3, 8
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 8
	note F_3, 4
	note F_3, 8
	note Bb3, 8
	loop 1, @loop_7
	note Ab3, 8
	rest 4
	note Ab3, 4
	note C_4, 8
	note Eb4, 4
	note C_4, 4
	rest 4
	note Ab3, 4
	note Eb4, 4
	note C_4, 4
	note Ab4, 8
	note Eb4, 4
	note C_4, 4
	note Bb3, 8
	rest 4
	note Bb3, 4
	note D_4, 8
	note F_4, 4
	note D_4, 4
	rest 4
	note Bb3, 4
	note F_4, 4
	note D_4, 4
	note Bb4, 8
	note F_4, 4
	note D_4, 4
	note B_3, 8
	rest 4
	note B_3, 4
	note D_4, 8
	note G_4, 4
	note D_4, 4
	rest 4
	note B_3, 4
	note G_4, 4
	note D_4, 4
	note B_4, 8
	note G_4, 4
	note D_4, 4
	note C_4, 8
	rest 4
	note C_4, 4
	note Eb4, 8
	note G_4, 4
	note Eb4, 4
	rest 4
	note C_4, 4
	note G_4, 4
	note Eb4, 4
	note C_5, 8
	note G_4, 4
	note Eb4, 4
	note Db3, 8
	rest 4
	note Db3, 4
	note F_3, 8
	note Ab3, 4
	note F_3, 4
	rest 4
	note Ab3, 4
	note F_3, 4
	note Db3, 4
	note Db4, 8
	note Ab3, 4
	note F_3, 4
	note Eb3, 8
	rest 4
	note Eb3, 4
	note G_3, 8
	note Bb3, 4
	note G_3, 4
	rest 4
	note Bb3, 4
	note G_3, 4
	note Eb3, 4
	note Eb4, 8
	note Bb3, 4
	note G_3, 4
	note F_3, 8
	rest 4
	note F_3, 4
	note Ab3, 8
	note C_4, 4
	note Ab3, 4
	rest 4
	note C_4, 4
	note Ab3, 4
	note F_3, 4
	note F_4, 8
	note C_4, 4
	note Ab3, 4
	note F_3, 16
	note F_3, 8
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 8
	note F_3, 8
	note Bb3, 4
	note B_3, 4
	loop 0, @loop_1

music_quickman_noise:
	tempo 6
	volume_envelope volume_decay, 10, 4
	volume 15
	noise_duty_cycle 1

@loop_1:
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	rest 4
	noise_note 11, 4
	noise_duty_cycle 0
	pitch_envelope $33
	volume 15
	noise_note 7, 8
	pitch_envelope $00
	noise_duty_cycle 1
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	rest 4
	noise_note 11, 4
	noise_note 11, 4
	noise_duty_cycle 0
	pitch_envelope $33
	volume 15
	noise_note 7, 4
	noise_note 7, 8
	pitch_envelope $00
	noise_duty_cycle 1
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	loop 6, @loop_1
	rest 64

@loop_2:
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	rest 4
	noise_note 11, 4
	noise_duty_cycle 0
	pitch_envelope $33
	volume 15
	noise_note 7, 8
	pitch_envelope $00
	noise_duty_cycle 1
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	rest 4
	noise_note 11, 4
	noise_note 11, 4
	noise_duty_cycle 0
	pitch_envelope $33
	volume 15
	noise_note 7, 4
	noise_note 7, 8
	pitch_envelope $00
	noise_duty_cycle 1
	volume 10
	noise_note 11, 4
	noise_note 11, 4
	loop 14, @loop_2
	pitch_envelope $33
	noise_note 7, 4
	rest 4
	rest 8
	noise_note 7, 8
	rest 4
	noise_note 7, 4
	rest 4
	noise_note 7, 4
	noise_note 7, 4
	rest 4
	noise_note 7, 4
	rest 4
	rest 8
	loop 0, @loop_1

music_quickman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
