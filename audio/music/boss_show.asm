music_boss_show:
	music_header
	.WORD music_boss_show_pulse_1
	.WORD music_boss_show_pulse_2
	.WORD music_boss_show_triangle
	.WORD $0000
	.WORD music_boss_show_modulator

music_boss_show_pulse_1:
	tempo 6
	duty_cycle 0
	volume 10
	volume_envelope volume_attack, 10, 2
	base_note B_2
	note C_4, 4
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	note Bb3, 8
	number_of_note_tied 2
	note C_4, 4
	note C_4, 32
	note D_4, 4
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	note C_4, 8
	number_of_note_tied 2
	note D_4, 4
	note D_4, 32
	note Eb4, 4
	note Eb4, 4
	rest 4
	note Eb4, 4
	rest 16
	note Gb4, 4
	note Gb4, 4
	rest 4
	note Gb4, 4
	rest 16
	rest 4
	note G_4, 4
	rest 4
	number_of_note_tied 2
	note F_4, 4
	note F_4, 4
	note Eb4, 4
	note F_4, 4
	note Gb4, 4
	volume_envelope volume_decay, 8, 2
	note G_4, 2
	note Ab4, 2
	note G_4, 2
	note Ab4, 2
	note G_4, 2
	note Ab4, 2
	number_of_note_tied 2
	note G_4, 2
	modulator 1
	volume_envelope volume_attack, 10, 2
	note G_4, 16
	music_end

music_boss_show_pulse_2:
	tempo 6
	duty_cycle 1
	volume 10
	base_note B_1
	volume_envelope volume_attack, 10, 2
	note Eb3, 4
	note Eb3, 4
	note Eb3, 4
	rest 4
	note Eb3, 4
	note D_3, 8
	number_of_note_tied 2
	note Eb3, 4
	note Eb3, 32
	note F_3, 4
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	note Eb3, 8
	number_of_note_tied 2
	note F_3, 4
	note F_3, 32
	note G_3, 4
	note G_3, 4
	rest 4
	note G_3, 4
	rest 16
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 16
	rest 4
	note B_3, 4
	rest 4
	note Ab3, 4
	note Ab3, 4
	note G_3, 4
	note Ab3, 4
	note Ab3, 4
	modulator 1
	note D_4, 32
	music_end

music_boss_show_triangle:
	tempo 6
	triangle_note_length $81
	base_note B_2
	note C_4, 32
	rest 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	dotted_note_set
	note B_3, 8
	note Bb3, 32
	rest 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	note Bb3, 4
	dotted_note_set
	note A_3, 8
	note Ab3, 4
	note Ab3, 4
	rest 4
	note Ab3, 4
	pitch_envelope $10
	rest 4
	note E_5, 4
	note E_5, 8
	pitch_envelope $00
	note D_4, 4
	note D_4, 4
	rest 4
	note D_4, 4
	pitch_envelope $10
	rest 4
	note E_5, 4
	note E_5, 8
	pitch_envelope $00
	modulator 1
	note G_3, 64
	music_end

music_boss_show_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
