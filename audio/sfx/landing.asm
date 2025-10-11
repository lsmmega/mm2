sfx_landing:
	sfx_priority 2
	.BYTE sfx_pulse_2

;1
;sfx_pulse_2
@loop_1:
	sfx_frames 4
	duty_cycle 1
	pitch_envelope $8B
	volume 15
	sfx_modulator_set 2, 6, 1, volume_decay, 1, 2
	sfx_note nA_5
	loop 1, @loop_1
	sfx_end
