music_password:
	music_header
	.WORD music_password_pulse_1
	.WORD music_password_pulse_2
	.WORD music_password_triangle
	.WORD music_password_noise
	.WORD music_password_modulator

music_password_pulse_1:
	tempo 6

@loop_1:
	volume 14
	duty_cycle 3
	base_note Eb3
	volume_envelope volume_attack, 7, 1
	note Ab4, 16
	note Ab4, 16
	triplet_note_set
	note Gb4, 16
	note Gb4, 16
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note Gb4, 16
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	rest 16
	modulator 1
	note E_4, 16
	modulator 0
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note Gb4, 8
	note Ab4, 16
	note Ab4, 16
	triplet_note_set
	note Gb4, 16
	note Gb4, 16
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	note Gb4, 16
	triplet_note_set
	note Gb4, 8
	triplet_note_set
	rest 16
	modulator 1
	note F_4, 16
	modulator 0
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note Gb4, 8
	loop 0, @loop_1

music_password_pulse_2:
	tempo 6

@loop_1:
	duty_cycle 1
	base_note Eb3
	volume_envelope volume_attack, 8, 1
	volume 10
	volume_envelope volume_attack, 8, 1
	note Db4, 16
	note Db4, 16
	triplet_note_set
	note C_4, 16
	note C_4, 16
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note B_3, 16
	triplet_note_set
	note B_3, 8
	triplet_note_set
	rest 16
	modulator 1
	note Ab3, 16
	modulator 0
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Eb4, 8
	loop 0, @loop_1

music_password_triangle:
	tempo 6
	triangle_note_length $55
	base_note Eb3

@loop_1:
	triplet_note_set
	note A_3, 16
	triplet_note_set
	note A_3, 8
	triplet_note_set
	note A_3, 8
	triplet_note_set
	note A_4, 8
	triplet_note_set
	note A_3, 8
	loop 1, @loop_1
	triplet_note_set
	note Ab3, 16
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Ab4, 8
	triplet_note_set
	note Ab3, 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db5, 8
	triplet_note_set
	note Db4, 8
	triplet_note_set
	note Db4, 8
	pitch_envelope $10
	triplet_note_set
	note Ab5, 8
	triplet_note_set
	note F_5, 8
	pitch_envelope $00
	loop 0, @loop_1

music_password_noise:
	tempo 6
	volume 15
	volume_envelope volume_decay, 8, 2

@loop_1:
	triplet_note_set
	noise_note 13, 8
	triplet_note_set
	noise_note 13, 8
	triplet_note_set
	noise_note 13, 8
	volume_envelope volume_decay, 4, 5
	triplet_note_set
	noise_note 8, 8
	volume_envelope volume_decay, 8, 2
	triplet_note_set
	noise_note 13, 8
	triplet_note_set
	noise_note 13, 8
	loop 0, @loop_1

music_password_modulator:
	modulator_set 0, 0, 0, volume_decay, 0, 0
	modulator_set 3, 2, 1, volume_decay, 0, 0
