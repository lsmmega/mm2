sfx_fly_boy:
	sfx_priority 6
	.BYTE sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_2
@loop_1:
	duty_cycle 3
	pitch_envelope $B1
	volume 15
	sfx_modulator_set 5, 7, 2, volume_decay, 5, 2
	sfx_note nA_2

;sfx_triangle
	pitch_envelope $81
	triangle_note_length $81
	sfx_note nC_3

;sfx_noise
	sfx_frames 4
	noise_duty_cycle 1
	sfx_noise_note 2
	loop 1, @loop_1
	sfx_end
