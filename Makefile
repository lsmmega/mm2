asm := \
	constants/*.asm

cfg := \
	mm2.cfg

map := \
	mm2.map

obj := \
	ines.o

rom := \
	mm2.nes

.PHONY: all mm2 clean

all: mm2

mm2: $(rom)

%.nes: $(cfg) $(obj)
	ld65 $(obj) -C $(cfg) -m $(map) -o $(rom)

%.o: %.asm $(asm)
	ca65 $< -o $@

clean:
	$(RM) $(map) \
	      $(obj) \
	      $(rom)