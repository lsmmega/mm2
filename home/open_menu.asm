_home_open_menu:
	LDX #$0F

@loop:
	LDA aobject_attributes, X
	BMI @weapon_object_exist
	DEX
	CPX #$01
	BNE @loop
	LDA z:zobject_tile_update_size
	BEQ @no_object_tile_update
	JSR _nmi_wait_0e

@no_object_tile_update:
	LDA aobject_ppu_address
	PHA
	LDA aobject_ppu_address + 1
	PHA
	track_queue track_open_menu
	farjsr _open_menu
	PLA
	STA aobject_ppu_address + 1
	PLA
	STA aobject_ppu_address
	bankswitch $0E

@weapon_object_exist:
	RTS
