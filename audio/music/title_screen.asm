music_title_screen:
	music_header
	.WORD music_title_screen_pulse_1
	.WORD music_title_screen_pulse_2
	.WORD music_title_screen_triangle
	.WORD music_title_screen_noise
	.WORD music_title_screen_modulator

music_title_screen_pulse_1:
	tempo 5

@loop_1:
	volume 12
	duty_cycle 0
	base_note B_2
	volume_envelope volume_decay, 1, 26
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note C_4, 4
	note C_4, 4
	note C_4, 8
	note D_4, 8
	rest 8
	number_of_note_tied 2
	note Bb3, 32
	modulator 1
	note Bb3, 32
	modulator 0
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
	number_of_note_tied 2
	note Bb3, 32
	modulator 1
	note Bb3, 32
	modulator 0
	note Bb3, 8
	note Ab3, 16
	note Ab3, 8
	note Bb3, 8
	rest 8
	note Bb3, 8
	rest 8
	number_of_note_tied 2
	note C_4, 8
	modulator 1
	note C_4, 32
	modulator 0
	duty_cycle 2
	volume_envelope volume_decay, 7, 3
	base_note B_3
	note G_5, 4
	note F_5, 4
	note Eb5, 4
	note F_5, 4
	note Eb5, 4
	note D_5, 4
	note Db5, 4
	note C_5, 4
	loop 1, @loop_1
	volume_envelope volume_decay, 1, 4
	base_note B_2
	duty_cycle 3
	note C_4, 8
	note C_4, 8
	note G_3, 8
	note E_3, 8
	note E_4, 8
	note C_4, 8
	note G_3, 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note D_4, 8
	note E_4, 8
	note C_4, 16
	rest 8
	note Bb3, 8
	note Bb3, 8
	note A_3, 8
	note F_3, 8
	note D_4, 16
	note Bb3, 8
	note G_3, 8
	note Bb3, 4
	note Bb3, 4
	note F_3, 4
	note D_4, 4
	note Bb3, 4
	note F_4, 4
	note D_4, 4
	note Bb4, 4
	note F_4, 8
	note Bb3, 16
	rest 8
	note A_3, 8

@loop_2:
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note E_3, 4
	note C_3, 8
	loop 1, @loop_2
	note A_3, 4
	note C_4, 4
	note Ab4, 4
	note A_4, 4
	note Ab4, 4
	note A_4, 4
	note Ab4, 4
	note A_4, 4
	note E_4, 4
	note C_4, 4
	rest 8
	duty_cycle 3
	note A_3, 16
	rest 8
	triplet_note_set
	note C_3, 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Ab4, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	note Ab3, 8
	rest 8
	note Bb3, 16
	rest 8
	volume_envelope volume_decay, 1, 26
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
	number_of_note_tied 2
	note Bb3, 32
	modulator 1
	note Bb3, 32
	modulator 0
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
	number_of_note_tied 2
	note Bb3, 32
	note Bb3, 32
	rest 8
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
	note G_4, 8
	note A_4, 8
	note C_5, 8
	music_end

music_title_screen_pulse_2:
	tempo 5

@loop_1:
	volume 12
	duty_cycle 0
	base_note B_2
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
	note Eb3, 16
	note Eb3, 8
	note F_3, 8
	rest 8
	note F_3, 8
	rest 8
	number_of_note_tied 2
	note G_3, 8
	note G_3, 32
	duty_cycle 2
	volume 6
	base_note B_3
	volume_envelope volume_decay, 7, 3
	rest 4
	note G_5, 4
	note F_5, 4
	note Eb5, 4
	note F_5, 4
	note Eb5, 4
	note D_5, 4
	note Db5, 4
	loop 1, @loop_1
	volume_envelope volume_decay, 1, 4
	base_note B_2
	volume 12
	duty_cycle 3
	note G_3, 8
	volume 7
	rest 8
	note C_4, 8
	note G_3, 8
	note E_3, 8
	note E_4, 8
	note C_4, 8
	note G_3, 8
	note G_4, 16
	note F_4, 8
	note E_4, 8
	note D_4, 8
	volume 12
	note G_3, 16
	rest 8
	note F_3, 8
	volume 7
	rest 8
	note Bb3, 8
	note A_3, 8
	note F_3, 8
	note D_4, 16
	note Bb3, 8
	note G_3, 8
	note Bb3, 4
	note Bb3, 4
	note F_3, 4
	note D_4, 4
	note Bb3, 4
	note F_4, 4
	note D_4, 4
	note Bb4, 4
	volume 12
	note F_3, 16
	rest 8
	note E_3, 8
	volume 7
	rest 4

@loop_2:
	note A_3, 4
	note C_4, 4
	note A_3, 4
	note E_3, 4
	note C_3, 8
	loop 1, @loop_2
	note A_3, 4
	note C_4, 4
	note Ab4, 4
	note A_4, 4
	note Ab4, 4
	note A_4, 4
	note Ab4, 4
	note A_4, 4
	note E_4, 4
	note C_4, 4
	rest 4
	volume 12
	duty_cycle 3
	note E_3, 16
	rest 8
	triplet_note_set
	note Eb3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note Eb4, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note C_5, 8
	note Eb3, 8
	note Eb3, 8
	note Eb3, 8
	note Eb3, 8
	rest 8
	note F_3, 16
	rest 8
	volume_envelope volume_decay, 1, 26
	duty_cycle 0
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
	rest 8
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
	note E_4, 8
	note F_4, 8
	note G_4, 8
	music_end

music_title_screen_triangle:
	tempo 5
	triangle_note_length $30
	base_note B_2

@loop_1:
	note C_4, 8
	note C_4, 4
	note C_4, 4
	loop 29, @loop_1
	note C_4, 8
	note G_3, 8
	note A_3, 8
	note C_4, 8

@loop_2:
	note C_4, 8
	note C_4, 4
	note C_4, 4
	loop 29, @loop_2
	note C_4, 8
	note G_3, 8
	note A_3, 8
	note C_4, 8
	triangle_note_length $30
	note E_3, 16
	pitch_envelope $14
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	note C_4, 8
	rest 8
	pitch_envelope $00
	note E_3, 8
	pitch_envelope $14
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note D_3, 16
	pitch_envelope $14
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	note C_4, 8
	rest 8
	pitch_envelope $00
	note D_3, 8
	pitch_envelope $14
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note C_3, 8
	rest 8
	pitch_envelope $14
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	rest 8
	note C_4, 8
	note C_4, 8
	note E_5, 8
	note C_4, 8
	rest 8
	pitch_envelope $00
	note C_3, 8
	pitch_envelope $14
	note E_5, 8
	note E_5, 8
	pitch_envelope $00
	note C_3, 8
	rest 8
	pitch_envelope $14
	note E_5, 8
	rest 8
	note Gb3, 8
	note Gb3, 8
	note E_5, 16
	note E_5, 4
	note E_5, 4
	note E_5, 8
	note D_5, 4
	note D_5, 4
	note D_5, 8
	note C_5, 4
	note C_5, 4
	note C_5, 8
	note E_5, 4
	note E_5, 4
	note D_5, 4
	note B_4, 4
	pitch_envelope $00

@loop_3:
	note C_4, 8
	note C_4, 4
	note C_4, 4
	loop 23, @loop_3
	note C_4, 8
	note C_4, 8
	note D_4, 8
	note E_4, 8
	rest 8
	note C_4, 8
	note D_4, 8
	note E_4, 8
	rest 8
	note C_4, 8
	note D_4, 8
	note E_4, 8
	rest 8
	note C_4, 8
	note D_4, 8
	note E_4, 8
	music_end

music_title_screen_noise:
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
	loop 59, @loop_1
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

music_title_screen_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 2, volume_decay, 0, 0
