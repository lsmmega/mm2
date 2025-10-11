sfx_refill:
	sfx_priority 12
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
@loop_1:
	sfx_modulator_set 2, 1, 1, volume_decay, 0, 0
	volume 15
	duty_cycle 1
	sfx_note nC_5

;sfx_pulse_2
	sfx_frames 4
	duty_cycle 1
	sfx_modulator_set 2, 1, 1, volume_decay, 0, 0
	volume 15
	sfx_note nE_5
	loop 2, @loop_1
	sfx_end
