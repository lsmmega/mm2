sfx_force_beam:
	sfx_priority 14
	.BYTE sfx_pulse_2 | sfx_noise

;1
;sfx_pulse_2
	pitch_envelope $35
	duty_cycle 0
	volume 15
	sfx_note nE_4

;sfx_noise
	sfx_frames 6
	volume 7
	sfx_noise_note 12

;2
;sfx_pulse_2
	pitch_envelope $FC
	sfx_modulator_set 2, 2, 1, volume_decay, 0, 0
	sfx_note_tied

;sfx_noise
	sfx_frames 32
	volume 10
	sfx_noise_note 11

;3
;sfx_pulse_2
	pitch_envelope $F9
	sfx_note_tied

;sfx_noise
	sfx_frames 32
	volume 10
	sfx_noise_note 11
	sfx_end
