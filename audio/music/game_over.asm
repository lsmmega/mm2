music_game_over:
	music_header
	.WORD music_game_over_pulse_1
	.WORD music_game_over_pulse_2
	.WORD music_game_over_triangle
	.WORD music_game_over_noise
	.WORD music_game_over_modulator

music_game_over_pulse_1:
	tempo 6
	volume 15
	duty_cycle 0
	base_note Eb3
	volume_envelope volume_decay, 1, 47
	note Eb4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 16
	note E_4, 4
	note Gb4, 4
	rest 4
	number_of_note_tied 3
	note Ab4, 4
	note Ab4, 16
	modulator 0
	note Ab4, 32
	music_end

music_game_over_pulse_2:
	tempo 6
	duty_cycle 1
	base_note Eb3
	volume 15
	volume_envelope volume_decay, 1, 47
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 16
	note Db4, 4
	note Eb4, 4
	rest 4
	number_of_note_tied 3
	note F_4, 4
	note F_4, 16
	modulator 0
	note F_4, 32
	music_end

music_game_over_triangle:
	tempo 6
	triangle_note_length $30
	base_note Eb3
	note Ab3, 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	rest 4
	note Ab3, 8
	pitch_envelope $10
	note Ab5, 4
	note Eb5, 8
	pitch_envelope $00
	note A_3, 4
	note B_3, 8
	triangle_note_length $7F
	number_of_note_tied 2
	note Db4, 4
	number_of_note_tied 2
	note Db4, 8
	note Db4, 16
	triangle_note_length $30
	pitch_envelope $10
	note Ab5, 4
	note Gb5, 4
	note D_5, 16
	music_end

music_game_over_noise:
	tempo 6
	volume_envelope volume_decay, 15, 3
	volume 15
	rest 8
	rest 4
	noise_note 13, 8
	noise_note 13, 8
	noise_note 13, 8
	rest 64
	music_end

music_game_over_modulator:
	modulator_set 3, 2, 1, volume_decay, 0, 0
