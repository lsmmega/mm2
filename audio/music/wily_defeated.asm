music_wily_defeated:
	music_header
	.WORD music_wily_defeated_pulse_1
	.WORD music_wily_defeated_pulse_2
	.WORD music_wily_defeated_triangle
	.WORD music_wily_defeated_noise
	.WORD music_wily_defeated_modulator

music_wily_defeated_pulse_1:
	tempo 6
	volume 15
	duty_cycle 0
	base_note B_2
	volume_envelope volume_decay, 1, 47
	dotted_note_set
	note C_4, 32
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note C_4, 8
	dotted_note_set
	note D_4, 32
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note D_4, 8
	dotted_note_set
	note E_4, 32
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note E_4, 8
	note F_4, 32
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note E_4, 8
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note A_4, 8
	dotted_note_set
	note G_4, 64
	music_end

music_wily_defeated_pulse_2:
	tempo 6
	duty_cycle 1
	base_note B_2
	volume 15
	volume_envelope volume_decay, 1, 47
	dotted_note_set
	note G_3, 32
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note G_3, 8
	triplet_note_set
	note E_4, 8
	dotted_note_set
	note G_4, 32
	triplet_note_set
	note G_4, 8
	triplet_note_set
	note F_4, 8
	triplet_note_set
	note E_4, 8
	dotted_note_set
	note C_4, 32
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note B_3, 8
	triplet_note_set
	note C_4, 8
	note D_4, 32
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note C_4, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note A_3, 8
	triplet_note_set
	note D_4, 8
	triplet_note_set
	note F_4, 8
	dotted_note_set
	note E_4, 64
	music_end

music_wily_defeated_triangle:
	tempo 6
	triangle_note_length $50
	base_note B_3

@loop_1:
	note C_4, 8
	note C_4, 8
	note C_4, 8
	note C_4, 4
	note C_4, 4
	rest 4
	note C_4, 8
	note C_4, 4
	note C_4, 8
	note C_4, 8
	loop 3, @loop_1
	dotted_note_set
	note C_4, 64
	music_end

music_wily_defeated_noise:
	tempo 6

@loop_1:
	volume_envelope volume_decay, 15, 3
	volume 15
	noise_note 12, 4
	noise_note 12, 4
	noise_note 12, 8
	loop 15, @loop_1
	music_end

music_wily_defeated_modulator:
	modulator_set 3, 2, 1, volume_decay, 0, 0
