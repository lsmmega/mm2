cfg := \
	mm2.cfg

home_asm := \
	home.asm \
	constants/block_attributes.asm \
	home/*.asm

ines_asm := \
	ines.asm \
	constants/boolean.asm \
	constants/ines.asm

map := \
	mm2.map

obj := \
	home.o \
	ines.o \
	stages.o

rom := \
	mm2.nes

stages_asm := \
	stages.asm \
	constants/block_attributes.asm \
	constants/palettes.asm \
	constants/scroll.asm \
	stages/air_wily2/*.asm \
	stages/bubble_wily4/*.asm \
	stages/crash/*.asm \
	stages/flash_wily6/*.asm \
	stages/heat_wily1/*.asm \
	stages/metal/*.asm \
	stages/quick_wily5/*.asm \
	stages/wood_wily3/*.asm

.PHONY: all mm2 clean

all: mm2

mm2: $(rom)

%.nes: $(cfg) $(obj)
	ld65 $(obj) -C $(cfg) -m $(map) -o $(rom)

home.o: $(home_asm)
	ca65 $< -o $@

ines.o: $(ines_asm)
	ca65 $< -o $@

stages.o: $(stages_asm)
	ca65 $< -o $@

clean:
	$(RM) $(map) \
	      $(obj) \
	      $(rom)