music_boss_defeated:
	music_header
	.WORD music_boss_defeated_pulse_1
	.WORD music_boss_defeated_pulse_2
	.WORD music_boss_defeated_triangle
	.WORD $0000
	.WORD music_boss_defeated_modulator

music_boss_defeated_pulse_1:
	tempo 6
	volume 15
	base_note Eb3
	volume_envelope volume_decay, 1, 9
	rest 64
	note Db4, 4
	note Db4, 4
	rest 8
	note Eb4, 4
	note Eb4, 4
	rest 8
	note E_4, 4
	note E_4, 4
	rest 8
	note Gb4, 4
	note E_4, 4
	note Gb4, 4
	dotted_note_set
	note Ab4, 64
	music_end

music_boss_defeated_pulse_2:
	tempo 6
	volume 15
	base_note Eb3
	volume_envelope volume_decay, 1, 9
	rest 64
	note A_3, 4
	note A_3, 4
	rest 8
	note B_3, 4
	note B_3, 4
	rest 8
	note Db4, 4
	note Db4, 4
	rest 8
	note Eb4, 4
	note Db4, 4
	note Eb4, 4
	dotted_note_set
	note E_4, 64
	music_end

music_boss_defeated_triangle:
	tempo 6
	triangle_note_length $30
	base_note Eb3
	pitch_envelope $10
	note Ab5, 8
	note Ab5, 8
	note Ab5, 4
	note F_5, 4
	rest 4
	note Eb5, 8
	note Eb5, 8
	note Eb5, 4
	note Db5, 4
	rest 4
	note Bb4, 4
	rest 4
	pitch_envelope $00
	triangle_note_length $81
	note Gb3, 4
	note Gb3, 4
	rest 8
	note Ab3, 4
	note Ab3, 4
	rest 8
	note A_3, 4
	note A_3, 4
	rest 8
	note B_3, 4
	note A_3, 4
	note B_3, 4
	dotted_note_set
	note B_3, 64
	music_end

music_boss_defeated_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
