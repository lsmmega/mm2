sfx_mega_buster:
	sfx_priority 3
	.BYTE sfx_pulse_2

;1
;sfx_pulse_2
	sfx_frames 16
	duty_cycle 1
	volume 15
	sfx_modulator_set 2, 4, 2, volume_decay, 0, 0
	pitch_envelope $E0
	sfx_note nAb3
	sfx_end
