sfx_megaman_hit:
	sfx_priority 13
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 3
	volume 15
	sfx_modulator_set 5, 3, 2, volume_decay, 7, 0
	pitch_envelope $5F
	sfx_note nB_4

;sfx_noise
	sfx_frames 5
	sfx_modulator_set 2, 3, 1, volume_decay, 7, 0
	pitch_envelope $5F
	volume 15
	sfx_noise_note 5

;2
;sfx_pulse_2
	volume 8
	sfx_note nDb5

;sfx_noise
	sfx_frames 13
	sfx_modulator_set 2, 3, 1, volume_decay, 7, 0
	pitch_envelope $F1
	noise_duty_cycle 1
	sfx_noise_note 10
	sfx_end
