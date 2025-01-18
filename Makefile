cfg := \
	mm2.cfg

ines_asm := \
	ines.asm \
	constants/boolean.asm \
	constants/ines.asm

map := \
	mm2.map

obj := \
	ines.o \
	stages.o

rom := \
	mm2.nes

stages_asm := \
	stages.asm \
	constants/block_attributes.asm \
	constants/palettes.asm \
	constants/scrolling.asm \
	stages/blocksets/32x32/*.asm \
	stages/blocksets/palette_set/*.asm \
	stages/palettes/*.asm \
	stages/scrolling/*.asm \
	stages/tilesets/index/*.asm

.PHONY: all mm2 clean

all: mm2

mm2: $(rom)

%.nes: $(cfg) $(obj)
	ld65 $(obj) -C $(cfg) -m $(map) -o $(rom)

ines.o: $(ines_asm)
	ca65 $< -o $@

stages.o: $(stages_asm)
	ca65 $< -o $@

clean:
	$(RM) $(map) \
	      $(obj) \
	      $(rom)