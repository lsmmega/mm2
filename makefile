mm2: asm6

asm6: 
	$(MAKE) -C tools/
	tools/asm6 main.asm test.nes