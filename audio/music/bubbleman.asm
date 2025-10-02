music_bubbleman:
	music_header
	.WORD music_bubbleman_pulse_1
	.WORD music_bubbleman_pulse_2
	.WORD music_bubbleman_triangle
	.WORD music_bubbleman_noise
	.WORD music_bubbleman_modulator

music_bubbleman_pulse_1:
	tempo 5

@loop_1:
	duty_cycle 0
	base_note G_1
	volume 13
	volume_envelope volume_decay, 1, 18
	note G_2, 32
	note Ab2, 16
	note Bb2, 8
	note G_2, 64
	rest 8
	note F_2, 32
	note F_2, 16
	note G_2, 8
	note A_1, 8
	duty_cycle 3
	base_note G_2
	note G_4, 8
	note G_4, 8
	pitch_envelope $25
	note F_4, 8
	rest 8
	pitch_envelope $00
	note G_4, 8
	note G_4, 8
	pitch_envelope $25
	note F_4, 8
	rest 8
	pitch_envelope $00
	loop 1, @loop_1

@loop_5:
	duty_cycle 2

@loop_2:
	base_note G_1
	note C_3, 16
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note C_3, 8
	rest 8
	note Bb2, 8
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note C_3, 8
	loop 1, @loop_2

@loop_3:
	note D_3, 16
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	rest 8
	note C_3, 8
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	loop 1, @loop_3

@loop_4:
	note C_3, 16
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note C_3, 8
	rest 8
	note Bb2, 8
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note C_3, 8
	loop 1, @loop_4
	note D_3, 16
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	rest 8
	note C_3, 8
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	note B_2, 16
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	rest 8
	note B_2, 8
	pitch_envelope $10
	note C_4, 8
	pitch_envelope $00
	note D_3, 8
	duty_cycle 3
	volume 13
	volume_envelope volume_decay, 1, 18
	base_note G_2
	number_of_note_tied 2
	note Eb4, 16
	modulator 1
	note Eb4, 16
	modulator 0
	note Eb4, 8
	note F_4, 8
	rest 8
	note G_4, 8
	rest 8
	note F_4, 8
	rest 8
	note Eb4, 8
	rest 8
	note Eb4, 8
	note F_4, 16
	note D_4, 8
	note Eb4, 8
	rest 8
	note D_4, 8
	rest 8
	note C_4, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 8
	modulator 1
	note Bb3, 16
	rest 8
	dotted_note_set
	note Bb4, 16
	modulator 0
	note Ab4, 16
	number_of_note_tied 2
	note G_4, 16
	modulator 1
	note G_4, 16
	modulator 0
	note G_4, 8
	note F_4, 8
	note Eb4, 8
	note Bb4, 8
	rest 8
	note Ab4, 8
	rest 8
	dotted_note_set
	note G_4, 16
	note C_5, 8
	number_of_note_tied 2
	note B_4, 8
	modulator 1
	note B_4, 32
	modulator 0
	base_note G_3
	rest 8
	note G_4, 8
	note B_4, 8
	number_of_note_tied 2
	note D_5, 8
	modulator 1
	note D_5, 64
	modulator 0
	base_note G_2
	note G_3, 16
	rest 8
	note F_3, 8
	number_of_note_tied 2
	note F_3, 8
	modulator 1
	note F_3, 16
	modulator 0
	note Eb3, 8
	rest 8
	note F_3, 8
	number_of_note_tied 2
	note F_3, 8
	modulator 1
	note F_3, 16
	modulator 0
	note C_3, 8
	note Eb3, 8
	note F_3, 8
	note G_3, 16
	note F_3, 8
	note Bb3, 16
	note Ab3, 16
	note G_3, 16
	note F_3, 16
	note Eb3, 16
	note D_3, 16
	rest 8
	note G_3, 16
	rest 8
	note F_3, 8
	number_of_note_tied 2
	note F_3, 8
	modulator 1
	note F_3, 16
	modulator 0
	note Eb3, 8
	rest 8
	note F_3, 8
	number_of_note_tied 2
	note F_3, 8
	modulator 1
	note F_3, 16
	modulator 0
	note C_3, 8
	note Eb3, 8
	note F_3, 8
	note G_3, 16
	note F_3, 8
	note Bb3, 16
	note Ab3, 16
	note G_3, 16
	note B_3, 16
	note D_4, 16
	note F_4, 16
	note G_4, 8
	loop 0, @loop_5

music_bubbleman_pulse_2:
	tempo 5

@loop_1:
	volume 7
	duty_cycle 2
	base_note G_1
	volume_envelope volume_decay, 2, 18
	rest 4
	note Eb2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note G_3, 8
	note C_3, 8
	note Eb3, 8
	note Ab2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note D_2, 8
	note F_3, 8
	note D_3, 8
	note D_2, 8
	note F_3, 8
	note Bb2, 8
	note D_3, 8
	note G_2, 4
	duty_cycle 3
	volume 13
	base_note G_2
	note D_4, 8
	note D_4, 8
	rest 16
	note D_4, 8
	note D_4, 8
	rest 16
	loop 1, @loop_1

@loop_3:
	pitch_envelope $00
	volume 8
	duty_cycle 2
	base_note G_1
	rest 4
	note Eb2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note G_3, 8
	note C_3, 8
	note Eb3, 8
	note Ab2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note D_2, 8
	note F_3, 8
	note D_3, 8
	note D_2, 8
	note F_3, 8
	note Bb2, 8
	note D_3, 8
	note G_2, 8
	note F_3, 8
	note D_3, 8
	note D_2, 8
	note D_3, 8
	note F_3, 8
	note D_2, 8
	note D_3, 8
	note F_3, 8
	note Eb2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note G_3, 8
	note C_3, 8
	note Eb3, 8
	note Ab2, 8
	note G_3, 8
	note Eb3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note Eb2, 8
	note Eb3, 8
	note G_3, 8
	note D_2, 8
	note F_3, 8
	note D_3, 8
	note D_2, 8
	note F_3, 8
	note Bb2, 8
	note D_3, 8
	note G_2, 8
	note F_3, 8
	note D_3, 8
	note D_2, 8
	note D_3, 8
	note F_3, 8
	note D_2, 8
	note D_3, 8
	note F_3, 4
	duty_cycle 3
	volume 8
	volume_envelope volume_decay, 1, 18
	base_note G_2
	dotted_note_set
	rest 8
	note Eb4, 32
	note Eb4, 8
	note F_4, 8
	rest 8
	note G_4, 8
	rest 8
	note F_4, 8
	rest 8
	note Eb4, 8
	rest 8
	note Eb4, 8
	note F_4, 16
	note D_4, 8
	note Eb4, 8
	rest 8
	note D_4, 8
	rest 8
	note C_4, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 8
	note Bb3, 16
	rest 8
	dotted_note_set
	note Bb4, 16
	note Ab4, 16
	note G_4, 32
	note G_4, 8
	note F_4, 8
	note Eb4, 8
	note Bb4, 8
	rest 8
	note Ab4, 8
	rest 8
	dotted_note_set
	note G_4, 16
	note C_5, 8
	number_of_note_tied 2
	note B_4, 8
	note B_4, 32
	base_note G_3
	rest 8
	note G_4, 8
	note B_4, 4
	note D_5, 64

@loop_2:
	base_note G_2
	note Eb3, 16
	rest 8
	note D_3, 8
	dotted_note_set
	note D_3, 16
	note C_3, 8
	rest 8
	note D_3, 8
	dotted_note_set
	note D_3, 16
	note Ab2, 8
	note C_3, 8
	note D_3, 8
	note Ab4, 4
	note Eb4, 4
	note C_4, 4
	note C_5, 4
	note Ab4, 4
	note Eb4, 4
	note C_4, 4
	note C_5, 4
	note Ab4, 4
	note Eb4, 4
	note C_4, 4
	note C_5, 4
	note Ab4, 4
	note Eb4, 4
	note C_4, 4
	note C_5, 4
	note G_4, 4
	note D_4, 4
	note B_3, 4
	note G_3, 4
	note G_4, 4
	note D_4, 4
	note B_3, 4
	note G_3, 4
	note G_4, 4
	note D_4, 4
	note B_3, 4
	note G_3, 4
	note G_4, 4
	note D_4, 4
	note B_3, 4
	note G_3, 4
	loop 1, @loop_2
	loop 0, @loop_3

music_bubbleman_triangle:
	tempo 5
	triangle_note_length $35
	base_note G_2
	note Eb3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note G_4, 8
	note C_4, 8
	note Eb4, 8
	note Ab3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note D_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note F_4, 8
	note Bb3, 8
	note D_4, 8
	note G_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note D_4, 8
	note F_4, 8
	note D_3, 8
	note D_4, 8
	note F_4, 8
	note Eb3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note G_4, 8
	note C_4, 8
	note Eb4, 8
	note Ab3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note D_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note F_4, 8
	note Bb3, 8
	note D_4, 8
	note G_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note D_4, 8
	pitch_envelope $10
	note C_5, 4
	note C_5, 4
	note C_5, 4
	note C_5, 4
	note A_4, 4
	note A_4, 4
	note Gb4, 4
	note Gb4, 4
	pitch_envelope $00

@loop_1:
	note Eb3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note G_4, 8
	note C_4, 8
	note Eb4, 8
	note Ab3, 8
	note G_4, 8
	note Eb4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note Eb3, 8
	note Eb4, 8
	note G_4, 8
	note D_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note F_4, 8
	note Bb3, 8
	note D_4, 8
	note G_3, 8
	note F_4, 8
	note D_4, 8
	note D_3, 8
	note D_4, 8
	note F_4, 8
	note D_3, 8
	note D_4, 8
	note F_4, 8
	loop 3, @loop_1
	note C_4, 8
	note Eb4, 8
	note D_4, 8
	note C_4, 8
	note Bb3, 16
	rest 8
	note Ab3, 8
	rest 8
	note Bb3, 8
	note Bb3, 16
	rest 8
	note Ab3, 8
	note C_4, 8
	note D_4, 8

@loop_2:
	note Ab3, 8
	loop 7, @loop_2

@loop_3:
	note B_3, 8
	loop 7, @loop_3
	note C_4, 8
	note Eb4, 8
	note D_4, 8
	note C_4, 8
	note Bb3, 16
	rest 8
	note Ab3, 8
	rest 8
	note Bb3, 8
	note Bb3, 16
	rest 8
	note Ab3, 8
	note C_4, 8
	note D_4, 8
	note Ab3, 8
	note C_4, 8
	note Eb4, 8
	note Ab3, 8
	note C_4, 8
	note Eb4, 8
	note Ab3, 8
	note C_4, 8
	note D_4, 8
	note G_3, 8
	note B_3, 8
	note D_4, 8
	note G_3, 8
	note B_3, 8
	note D_4, 8
	note G_4, 8
	loop 0, @loop_1

music_bubbleman_noise:
	tempo 5
	volume_envelope volume_decay, 1, 8
	volume 8

@loop_1:
	volume_envelope volume_decay, 7, 2
	noise_note 12, 8
	loop 23, @loop_1
	volume_envelope volume_decay, 4, 4
	pitch_envelope $FF
	noise_note 4, 8
	noise_note 4, 8
	rest 16
	noise_note 4, 8
	noise_note 4, 8
	rest 16
	pitch_envelope $00

@loop_2:
	volume_envelope volume_decay, 7, 2
	noise_note 12, 8
	loop 23, @loop_2
	volume_envelope volume_decay, 4, 4
	pitch_envelope $FF
	noise_note 4, 8
	noise_note 4, 8
	rest 16
	noise_note 4, 4
	noise_note 4, 4
	noise_note 4, 4
	noise_note 4, 4
	noise_note 4, 4
	noise_note 4, 4
	noise_note 5, 4
	noise_note 5, 4
	pitch_envelope $00

@loop_3:
	volume 13
	volume_envelope volume_decay, 7, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 4, 4
	pitch_envelope $FF
	noise_note 4, 8
	pitch_envelope $00
	volume_envelope volume_decay, 7, 2
	noise_note 12, 8
	loop 0, @loop_3

music_bubbleman_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 2, volume_decay, 0, 0
