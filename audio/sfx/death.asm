sfx_death:
	sfx_priority 15
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
	duty_cycle 2
	pitch_envelope $2F
	volume 15
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	duty_cycle 0
	pitch_envelope $2F
	volume 15
	sfx_note nBb5

;2
;sfx_pulse_1
	volume 12
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	volume 12
	sfx_note nBb5

;3
;sfx_pulse_1
	volume 9
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	volume 9
	sfx_note nBb5

;4
;sfx_pulse_1
	volume 6
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	volume 6
	sfx_note nBb5

;5
;sfx_pulse_1
	volume 4
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	volume 4
	sfx_note nBb5

;6
;sfx_pulse_1
	volume 2
	sfx_note nC_6

;sfx_pulse_2
	sfx_frames 16
	volume 2
	sfx_note nBb5
	sfx_end
