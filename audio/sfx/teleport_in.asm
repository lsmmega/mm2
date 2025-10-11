sfx_teleport_in:
	sfx_priority 14
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	duty_cycle 3
	pitch_envelope $25
	sfx_modulator_set 3, 2, 1, volume_decay, 4, 2
	volume 15
	sfx_note nGb5 + 2

;sfx_noise
	sfx_frames 4
	volume 5
	sfx_noise_note 10

;2
;sfx_pulse_2
	pitch_envelope $F0
	sfx_note nGb5 + 2

;sfx_noise
	sfx_frames 5
	volume 3
	sfx_noise_note 10
	sfx_end
