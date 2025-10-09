sfx_22:
	sfx_priority 10
	.BYTE sfx_pulse_1 | sfx_pulse_2 | sfx_triangle | sfx_noise

;1
;sfx_pulse_1
	duty_cycle 2
	pitch_envelope $20
	volume 15
	sfx_note nAb4

;sfx_pulse_2
	duty_cycle 0
	pitch_envelope $20
	volume 15
	sfx_note nAb3

;sfx_triangle
	triangle_note_length $7F
	pitch_envelope $20
	sfx_note nC_3

;sfx_noise
	sfx_frames 10
	volume 10
	noise_duty_cycle 1
	sfx_noise_note 5

;2
;sfx_pulse_1
	pitch_envelope $15
	sfx_note nDb5

;sfx_pulse_2
	pitch_envelope $15
	sfx_note nDb4

;sfx_triangle
	pitch_envelope $15
	sfx_note nD_2

;sfx_noise
	sfx_frames 58
	noise_duty_cycle 0
	sfx_noise_note 7
	sfx_end
