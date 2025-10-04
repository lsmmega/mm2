music_get_weapon:
	music_header
	.WORD $0000
	.WORD $0000
	.WORD music_get_weapon_triangle
	.WORD music_get_weapon_noise
	.WORD music_get_weapon_modulator

music_get_weapon_triangle:
	tempo 5
	triangle_note_length $30
	base_note B_2

@loop_1:
	pitch_envelope $10
	note C_4, 8
	rest 8
	note E_5, 16
	rest 8
	note C_4, 4
	note C_4, 4
	note E_5, 16
	note C_4, 8
	rest 8
	note E_5, 16
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note C_4, 4
	note E_5, 16
	loop 0, @loop_1

music_get_weapon_noise:
	tempo 5
	volume 15
	volume_envelope volume_decay, 3, 2
	pitch_envelope $FF

@loop_1:
	rest 16
	noise_note 4, 16
	loop 0, @loop_1

music_get_weapon_modulator:
