rom_obj := \
	audio.o  \
	header.o \
	stages.o \
	bank00.o \
	bank01.o \
	bank02.o \
	bank03.o \
	bank04.o \
	bank05.o \
	bank06.o \
	bank07.o \
	bank08.o \
	bank09.o \
	bank0A.o \
	bank0B.o \
	bank0D.o \
	bank0E.o \
	bank0F.o

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