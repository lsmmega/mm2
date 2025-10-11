sfx_red_liquid_1:
	sfx_priority 13
	.BYTE sfx_pulse_2

;1
;sfx_pulse_2
@loop_1:
	sfx_frames 3
	duty_cycle 2
	pitch_envelope $C1
	volume 15
	sfx_note nA_6
	loop 1, @loop_1

;2
;sfx_pulse_2
	sfx_frames 8
	pitch_envelope $F8
	volume 15
	sfx_note nA_5

;3
;sfx_pulse_2
	sfx_frames 8
	volume 12
	sfx_note nA_5

;4
;sfx_pulse_2
	sfx_frames 8
	volume 10
	sfx_note nA_5

;5
;sfx_pulse_2
	sfx_frames 8
	volume 6
	sfx_note nA_5

;6
;sfx_pulse_2
	sfx_frames 8
	volume 4
	sfx_note nA_5

;7
;sfx_pulse_2
	sfx_frames 8
	volume 3
	sfx_note nBb5
	sfx_end
