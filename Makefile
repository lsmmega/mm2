rom_obj := \
	audio.o  \
	data.o   \
	gfx.o    \
	header.o \
	home.o   \
	main.o   \
	stages.o

mm2_obj := $(rom_obj:.o=.o)

.phony: all mm2 clean

all: mm2

mm2: mm2.nes

mm2.nes: $(mm2_obj) \
	mm2.cfg

%.o: %.asm
	ca65 -o $@ $<

%.nes: $(rom_obj)
	ld65 $(rom_obj) -C mm2.cfg -o $@

clean:
	$(RM) $(rom_obj) \
	mm2.nes