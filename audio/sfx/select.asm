sfx_select:
	sfx_priority 14
	.BYTE sfx_pulse_2

;1
;sfx_pulse_2
	sfx_frames 5
	volume 15
	duty_cycle 3
	sfx_note nAb4

;2
;sfx_pulse_2
	sfx_frames 8
	volume 15
	sfx_modulator_set 7, 0, 0, volume_decay, 0, 0
	duty_cycle 1
	sfx_note nDb4
	sfx_end
