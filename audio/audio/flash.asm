music_flash:
	music_pointers
	dw music_flash_pulse1
	dw music_flash_pulse2
	dw music_flash_triangle
	dw music_flash_noise
	dw music_flash_modulation

music_flash_pulse1:
	tempo 6
	tempo_number = even
	volume $d
	volume_envelope $86, $10
	base_note B_1

music_flash_pulse1_loop1:
	duty_cycle 0
	current_base_note = $17
	note E_2, 16
	note G_2, 4
	rest, 4
	note B_2, 4
	rest, 4
	dotted_set
	note D_3, 8
	dotted_set
	note C#3, 8
	note A_2, 8
	dotted_set
	note C_3, 8
	dotted_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest, 4
	note G_2, 4
	rest, 4
	note E_2, 4
	note D_2, 4
	rest, 4
	note E_2, 4
	rest, 8
	note F#3, 4
	note F#3, 4
	note F#3, 4
	note G_3, 4
	rest, 8
	note F#3, 4
	note F#3, 4
	note F#3, 4
	note G_3, 4
	dotted_set
	rest, 16
	note F#3, 4
	note F#3, 4
	note F#3, 4
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	note B_3, 4
	note A_3, 4
	rest, 4
	note G_3, 4
	rest, 4
	note F#3, 8
	loop 2, music_flash_pulse1_loop1
	note E_2, 16
	note G_2, 4
	rest, 4
	note B_2, 4
	rest, 4
	dotted_set
	note D_3, 8
	dotted_set
	note C#3, 8
	note A_2, 8
	dotted_set
	note C_3, 8
	dotted_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest, 4
	note G_2, 4
	rest, 4
	note E_2, 4
	note D_2, 4
	rest, 4
	note E_2, 4

music_flash_pulse1_loop2:
	rest, 8
	note F#3, 4
	note F#3, 4
	note F#3, 4
	note G_3, 4
	loop 1, music_flash_pulse1_loop2
	rest, 16
	note A_3, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	rest, 4
	note A_3, 4
	note B_3, 16
	rest, 16
	base_note B_2

music_flash_pulse1_main_loop:
	duty_cycle 1
	volume $d
	volume_envelope $92, $10
	current_base_note = $23
	rest, 8
	note E_3, 8
	note B_3, 8
	note A_3, 8
	note B_3, 16
	note A_3, 8
	note G_3, 8
	note A_3, 8
	note B_3, 8
	rest, 8
	number_of_note_connect 1
	note E_3, 16
	modulation $01
	note E_3, 16
	modulation $00
	note G_3, 8
	note F#3, 8
	rest, 8
	note F#3, 8
	rest, 8
	note F#3, 8
	note E_3, 8
	note D_3, 8
	number_of_note_connect 1
	note E_3, 8
	note E_3, 32
	rest, 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	rest, 8
	note E_3, 8
	note B_3, 8
	note A_3, 8
	note B_3, 16
	note A_3, 8
	note G_3, 8
	note A_3, 8
	note B_3, 8
	rest, 8
	number_of_note_connect 1
	note E_3, 16
	modulation $01
	note E_3, 16
	modulation $00
	note G_3, 8
	note F#3, 8
	rest, 8
	note F#3, 8
	rest, 8
	note G_3, 8
	note A_3, 8
	note F#3, 8
	number_of_note_connect 1
	note E_3, 8
	number_of_note_connect 1
	note E_3, 16
	modulation $01
	note E_3, 16
	modulation $00
	rest, 8
	note E_3, 8
	note G_3, 8
	note B_3, 8
	duty_cycle 3
	volume_envelope $a2, $10
	number_of_note_connect 1
	note D_4, 32
	modulation $01
	note D_4, 32
	modulation $00
	number_of_note_connect 1
	note C#4, 16
	modulation $01
	note C#4, 16
	modulation $00
	number_of_note_connect 1
	note C_4, 16
	modulation $01
	note C_4, 16
	modulation $00
	duty_cycle 2
	note G_3, 8
	dotted_set
	note E_3, 16
	rest, 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	note A#3, 8
	note B_3, 8
	note A#3, 8
	note B_3, 8
	note A_3, 8
	note G_3, 8
	note E_3, 8
	note D_3, 8
	duty_cycle 3
	number_of_note_connect 1
	note D_4, 32
	modulation $01
	note D_4, 32
	modulation $00
	number_of_note_connect 1
	note C#4, 16
	modulation $01
	note C#4, 16
	modulation $00
	number_of_note_connect 1
	note C_4, 16
	modulation $01
	note C_4, 16
	modulation $00
	duty_cycle 2
	note G_3, 8
	dotted_set
	note E_3, 16
	rest, 8
	note E_3, 8
	note G_3, 8
	note A_3, 8
	note E_4, 8
	note B_3, 8
	note B_3, 8
	note B_3, 8
	note D#4, 8
	note F#4, 8
	note A_4, 8
	note B_4, 8
	loop 0, music_flash_pulse1_main_loop

music_flash_pulse2:
	tempo 6
	tempo_number = even
	duty_cycle 0
	base_note B_1

music_flash_pulse2_loop1:
	volume_envelope $e0, $10
	volume $8
	current_base_note = $17
	rest, 8
	note E_2, 16
	note G_2, 4
	rest, 4
	note B_2, 4
	rest, 4
	dotted_set
	note D_3, 8
	dotted_set
	note C#3, 8
	note A_2, 8
	dotted_set
	note C_3, 8
	dotted_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest, 4
	note G_2, 4
	rest, 4
	note E_2, 4
	note D_2, 4
	rest, 4
	note E_2, 4
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest, 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest, 16
	rest, 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest, 4
	note G_3, 4
	rest, 4
	note G_3, 4
	note F#3, 4
	rest, 4
	note E_3, 4
	rest, 4
	note D_3, 8
	loop 2, music_flash_pulse2_loop1
	rest, 8
	note E_2, 16
	note G_2, 4
	rest, 4
	note B_2, 4
	rest, 4
	dotted_set
	note D_3, 8
	dotted_set
	note C#3, 8
	note A_2, 8
	dotted_set
	note C_3, 8
	dotted_set
	note B_2, 8
	note G_2, 8
	note A_2, 4
	rest, 4
	note G_2, 4
	rest, 4
	note E_2, 4
	note D_2, 4
	rest, 4
	note E_2, 4
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest, 8
	note D_3, 4
	note D_3, 4
	note D_3, 4
	note E_3, 4
	rest, 16
	note F#3, 4
	note F#3, 4
	rest, 4
	note F#3, 4
	rest, 4
	note F#3, 4
	rest, 4
	note F#3, 4
	note G_3, 16
	rest, 16

music_flash_pulse2_main_loop:
	base_note B_2

music_flash_pulse2_loop2:
	volume $7
	current_base_note = $23
	note G_3, 4
	note A_3, 4
	rest, 4
	note G_3, 4
	rest, 4
	note G_3, 4
	note A_3, 4
	note G_3, 4
	note F#3, 4
	note G_3, 4
	rest, 4
	note F#3, 4
	rest, 4
	note F#3, 4
	note G_3, 4
	note F#3, 4
	note D_3, 4
	note E_3, 4
	rest, 4
	note E_3, 4
	rest, 4
	note D_3, 4
	note E_3, 8
	note D_3, 4
	note E_3, 4
	rest, 4
	note E_3, 4
	rest, 4
	note D_3, 4
	note E_3, 8
	loop 3, music_flash_pulse2_loop2

music_flash_pulse2_loop3:
	duty_cycle 3
	volume $a
	volume_envelope $a2, $10
	note B_3, 64
	note A#3, 32
	note A_3, 32
	volume_envelope $86, $10
	duty_cycle 0
	rest, 8
	note G_3, 8
	note A_3, 8
	note G_3, 8
	note B_3, 8
	note G_3, 8
	rest, 8
	note G_3, 8
	note A_3, 8
	note G_3, 8
	note B_3, 8
	note G_3, 8
	rest, 8
	note G_3, 8
	note F#3, 8
	note G_3, 8
	loop 1, music_flash_pulse2_loop3
	loop 0, music_flash_pulse2_main_loop

music_flash_triangle:
	tempo 6
	tempo_number = even
	triangle_linear $25
	base_note B_2
	triangle_linear $30

music_flash_triangle_loop1:
	current_base_note = $23
	note E_3, 16
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	dotted_set
	note D_4, 8
	dotted_set
	note C#4, 8
	note A_3, 8
	dotted_set
	note C_4, 8
	dotted_set
	note B_3, 8
	note G_3, 8
	note A_3, 4
	rest, 4
	note G_3, 4
	rest, 4
	note E_3, 4
	note D_3, 4
	rest, 4
	note E_3, 8
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note F#3, 4
	rest, 4
	note F#3, 8
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	note D_3, 16
	loop 2, music_flash_triangle_loop1
	note E_3, 16
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	dotted_set
	note D_4, 8
	dotted_set
	note C#4, 8
	note A_3, 8
	dotted_set
	note C_4, 8
	dotted_set
	note B_3, 8
	note G_3, 8
	note A_3, 4
	rest, 4
	note G_3, 4
	rest, 4
	note E_3, 4
	note D_3, 4
	rest, 4
	note E_3, 8
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note E_3, 4
	rest, 4
	note E_3, 8
	note D_3, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	rest, 4
	note D_3, 4
	note E_3, 4
	pitch_envelope $10
	note B_4, 4
	note B_4, 4
	note F#3, 4
	note F_3, 4
	note E_3, 4
	note D#3, 4
	note D_3, 4

music_flash_triangle_loop2:
music_flash_triangle_main_loop:
	base_note B_2
	triangle_linear $30
	pitch_envelope $00
	current_base_note = $23
	note E_3, 8
	note E_3, 8
	rest, 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	note G_3, 4
	note E_3, 8
	note E_3, 8
	note E_3, 8
	rest, 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	note G_3, 4
	note E_3, 8
	note D_3, 8
	note D_3, 8
	rest, 8
	note D_3, 8
	note D_3, 4
	note F#3, 4
	rest, 4
	note A_3, 4
	rest, 4
	note F#3, 4
	note D_3, 8
	note E_3, 8
	note E_3, 8
	rest, 8
	note E_3, 8
	note E_3, 4
	note G_3, 4
	rest, 4
	note B_3, 4
	rest, 4
	note G_3, 4
	note E_3, 8
	loop 1, music_flash_triangle_loop2

music_flash_triangle_loop3:
	pitch_envelope $00
	base_note B_2
	current_base_note = $23
	note G_3, 4
	rest, 4
	note G_3, 8
	note G_3, 4
	rest, 4
	note G_3, 8
	note G_3, 4
	rest, 4
	note G_3, 8
	note G_3, 4
	rest, 4
	note G_3, 8
	note F#3, 4
	rest, 4
	note F#3, 8
	note F#3, 4
	rest, 4
	note F#3, 8
	note F_3, 4
	rest, 4
	note F_3, 8
	note F_3, 4
	rest, 4
	note F_3, 8
	rest, 8
	note E_3, 8
	note F#3, 8
	note E_3, 8
	note G_3, 8
	note E_3, 8
	rest, 8
	note E_3, 8
	pitch_envelope $10
	note D_5, 8
	note D_5, 8
	note A#3, 8
	note A#3, 8
	note E_5, 4
	note E_5, 4
	note A#3, 8
	note A_3, 8
	note A_3, 8
	loop 1, music_flash_triangle_loop3
	loop 0, music_flash_triangle_main_loop

music_flash_noise:
	tempo 6
	tempo_number = even

music_flash_noise_loop1:
	volume_envelope $84, $a0
	volume $f
	pitch_envelope $05
	noise_note 9, 4
	pitch_envelope $00
	volume_envelope $82, $60
	volume $6
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 4
	loop 59, music_flash_noise_loop1
	volume_envelope $81, $10
	volume $9
	pitch_envelope $12
	noise_note 9, 4
	noise_note 9, 4
	rest, 4
	noise_note 9, 4
	rest, 4
	noise_note 9, 4
	rest, 4
	noise_note 9, 4
	noise_note 12, 4
	noise_note 12, 4
	noise_note 11, 4
	noise_note 11, 4
	noise_note 10, 4
	noise_note 10, 4
	noise_note 9, 4
	noise_note 9, 4

music_flash_noise_loop2:
music_flash_noise_main_loop:
	volume $e
	pitch_envelope $10
	volume_envelope $82, $a0
	noise_note 11, 16
	volume_envelope $84, $60
	dotted_set
	noise_note 2, 8
	volume_envelope $82, $a0
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 4
	noise_note 11, 8
	volume_envelope $84, $60
	noise_note 2, 16
	loop 7, music_flash_noise_loop2

music_flash_noise_loop3:
	volume_envelope $82, $a0
	noise_note 11, 8
	noise_note 11, 8
	loop 2, music_flash_noise_loop3
	volume_envelope $84, $60
	noise_note 2, 16

music_flash_noise_loop4:
	volume_envelope $82, $a0
	noise_note 11, 4
	rest, 4
	noise_note 11, 8
	volume_envelope $84, $60
	noise_note 2, 16
	loop 5, music_flash_noise_loop4

music_flash_noise_loop5:
	volume_envelope $82, $a0
	noise_note 11, 8
	noise_note 11, 8
	loop 2, music_flash_noise_loop5
	volume_envelope $84, $60
	noise_note 2, 16

music_flash_noise_loop6:
	volume_envelope $82, $a0
	noise_note 11, 8
	noise_note 11, 8
	volume_envelope $84, $60
	noise_note 2, 16
	loop 3, music_flash_noise_loop6
	volume_envelope $84, $a0
	volume $8
	noise_note 12, 8
	noise_note 12, 8
	noise_note 11, 8
	noise_note 11, 8
	noise_note 10, 4
	noise_note 10, 4
	noise_note 10, 8
	noise_note 9, 8
	noise_note 9, 8
	loop 0, music_flash_noise_main_loop

music_flash_modulation:
;modulation_$00
	pitch_bend 0, 0, 0
	volume_modulation $80, $00

;modulation_$01
	pitch_bend 2, 3, 2
	volume_modulation $80, $00