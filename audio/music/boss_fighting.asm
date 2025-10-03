music_boss_fighting:
	music_header
	.WORD music_boss_fighting_pulse_1
	.WORD music_boss_fighting_pulse_2
	.WORD music_boss_fighting_triangle
	.WORD music_boss_fighting_noise
	.WORD music_boss_fighting_modulator

music_boss_fighting_pulse_1:
	tempo 6
	volume 12
	duty_cycle 3
	base_note G_1
	volume_envelope volume_decay, 1, 96
	modulator 1
	note Eb2, 64
	note Gb2, 64
	note A_2, 64
	note C_3, 32
	note A_2, 4
	note C_3, 4
	note Eb3, 4
	note C_3, 4
	note Eb3, 4
	note C_3, 4
	note Eb3, 4
	note Gb3, 4
	modulator 0

@loop_1:
	volume_envelope volume_decay, 2, 6
	base_note G_2
	duty_cycle 3
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	rest 8
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	rest 4
	note C_4, 4
	note C_4, 4
	volume_envelope volume_decay, 2, 3
	note C_4, 8
	rest 4
	note C_4, 4
	rest 16
	note G_4, 8
	rest 4
	note G_4, 4
	note F_4, 8
	note G_4, 8
	volume_envelope volume_decay, 2, 6
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	rest 8
	note Bb3, 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	rest 4
	note Bb3, 4
	note Bb3, 4
	volume_envelope volume_decay, 2, 3
	note Bb3, 8
	rest 4
	note Bb3, 4
	rest 16
	note G_4, 8
	rest 4
	note G_4, 4
	note F_4, 8
	note G_4, 8
	volume_envelope volume_decay, 2, 6
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note A_3, 4
	rest 8
	note A_3, 4
	note A_3, 4
	rest 4
	note A_3, 4
	rest 4
	note A_3, 4
	note A_3, 4
	volume_envelope volume_decay, 2, 3
	note A_3, 8
	rest 4
	note A_3, 4
	rest 16
	note G_4, 8
	rest 4
	note G_4, 4
	note F_4, 8
	note G_4, 8
	volume_envelope volume_decay, 2, 6
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	rest 8
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	modulator 1
	note G_3, 16
	note B_3, 16
	note D_4, 16
	note G_4, 16
	modulator 0
	loop 0, @loop_1

music_boss_fighting_pulse_2:
	tempo 6
	volume 11
	duty_cycle 0
	volume_envelope volume_decay, 1, 10
	base_note G_2
	note C_3, 16
	rest 4
	note A_3, 4
	note Gb3, 4
	note Eb3, 4
	note C_3, 32
	note Eb3, 16
	rest 4
	note C_4, 4
	note A_3, 4
	note Gb3, 4
	note Eb3, 32
	note Gb3, 16
	rest 4
	note Eb4, 4
	note C_4, 4
	note A_3, 4
	note Gb3, 32
	note A_3, 16
	rest 4
	note Gb4, 4
	note Eb4, 4
	note A_3, 4
	note C_4, 32

@loop_1:
	base_note G_2
	duty_cycle 3
	volume_envelope volume_decay, 2, 6
	note G_3, 4
	note G_3, 4
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_3, 4
	rest 8
	note G_3, 4
	note G_3, 4
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_3, 4
	volume_envelope volume_decay, 2, 3
	note G_3, 8
	rest 4
	note G_3, 4
	rest 16
	note Eb4, 8
	rest 4
	note Eb4, 4
	note D_4, 8
	note Eb4, 8
	loop 1, @loop_1
	duty_cycle 3
	volume_envelope volume_decay, 2, 6
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	rest 8
	note F_3, 4
	note F_3, 4
	rest 4
	note F_3, 4
	rest 4
	note F_3, 4
	note F_3, 4
	volume_envelope volume_decay, 2, 3
	note F_3, 8
	rest 4
	note F_3, 4
	rest 16
	note Eb4, 8
	rest 4
	note Eb4, 4
	note D_4, 8
	note Eb4, 8
	volume_envelope volume_decay, 2, 6
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	rest 4
	note D_3, 4
	note D_3, 4
	rest 8
	note D_3, 4
	note D_3, 4
	rest 4
	note D_3, 4
	rest 4
	note D_3, 4
	note D_3, 4
	modulator 1
	note D_3, 16
	note G_3, 16
	note B_3, 16
	note D_4, 16
	modulator 0
	loop 0, @loop_1

music_boss_fighting_triangle:
	tempo 6
	triangle_note_length $30
	base_note G_2

@loop_1:
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note Bb3, 4
	loop 13, @loop_1
	triangle_note_length $20
	pitch_envelope $15
	note G_3, 4
	note G_3, 4
	note F_3, 4
	note F_3, 4
	note Eb3, 4
	note Eb3, 4
	note Db3, 4
	note Db3, 4
	triangle_note_length $50
	pitch_envelope $00

@loop_2:
	triangle_note_length $40
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 4
	note Eb4, 8
	note F_4, 4
	note C_4, 4
	rest 4
	note Bb3, 4
	note C_4, 4
	note B_3, 4
	note F_3, 8
	note Gb3, 4
	note G_3, 4
	loop 6, @loop_2
	note G_3, 4
	note G_3, 4
	note G_4, 4
	rest 4
	note F_4, 4
	note G_4, 4
	rest 4
	note G_3, 4
	rest 4
	note G_3, 4
	note G_4, 4
	rest 4
	note F_4, 4
	note G_4, 4
	note Eb4, 4
	note D_4, 4
	loop 0, @loop_2

music_boss_fighting_noise:
	tempo 6
	volume_envelope volume_decay, 1, 8
	volume 15

@loop_1:
	volume_envelope volume_decay, 15, 2
	noise_note 13, 16
	noise_note 13, 16
	noise_note 13, 16
	volume_envelope volume_decay, 1, 4
	noise_note 8, 16
	loop 1, @loop_1

@loop_2:
	volume_envelope volume_decay, 10, 2
	noise_note 12, 8
	noise_note 12, 8
	volume_envelope volume_decay, 4, 4
	noise_note 8, 8
	volume_envelope volume_decay, 10, 2
	noise_note 12, 8
	loop 2, @loop_2
	volume_envelope volume_decay, 4, 4
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	noise_note 9, 4
	noise_note 8, 4
	noise_note 8, 4
	noise_note 8, 4
	noise_note 8, 4

@loop_3:
	volume_envelope volume_decay, 13, 3
	noise_note 13, 4
	noise_note 13, 4
	rest 4
	noise_note 13, 4
	volume_envelope volume_decay, 4, 4
	noise_note 8, 8
	volume_envelope volume_decay, 10, 2
	noise_note 13, 4
	noise_note 13, 4
	loop 0, @loop_3

music_boss_fighting_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
