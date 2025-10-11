sfx_teleport_out:
	sfx_priority 15
	.BYTE sfx_pulse_1 | sfx_pulse_2

;1
;sfx_pulse_1
@loop_1:
	pitch_envelope $C1
	volume 15
	sfx_note nC_7

;sfx_pulse_2
	sfx_frames 3
	pitch_envelope $C1
	volume 15
	sfx_note nBb6
	loop 1, @loop_1

;2
;sfx_pulse_1
	duty_cycle 2
	volume 15
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 15
	sfx_note nBb3

;3
;sfx_pulse_1
	volume 12
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 12
	sfx_note nBb3

;4
;sfx_pulse_1
	volume 9
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 9
	sfx_note nBb3

;5
;sfx_pulse_1
	volume 6
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 6
	sfx_note nBb3

;6
;sfx_pulse_1
	volume 4
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 4
	sfx_note nBb3

;6
;sfx_pulse_1
	volume 2
	sfx_note nC_3

;sfx_pulse_2
	sfx_frames 8
	volume 3
	sfx_note nBb3
	sfx_end
