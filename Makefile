CROSS_COMPILE ?= riscv64-unknown-elf-
CCLD = $(CROSS_COMPILE)gcc
CCLDFLAGS = -g -Os -march=rv64g -fpic -Wall -fno-common -fno-builtin -ffreestanding -nostdinc -fno-strict-aliasing -fno-stack-protector -fno-toplevel-reorder -Wstrict-prototypes -Wno-format-nonliteral -Wno-format-security -nostdlib -T payload.lds -Wl,-N
OBJCOPY = $(CROSS_COMPILE)objcopy

all: payload.bin

payload.elf: payload.c
	$(CCLD) $(CCLDFLAGS) $< -o $@

payload.bin: payload.elf
	$(OBJCOPY) -O binary $< $@

run: payload.bin
	sunxi-fel write 0x20000 payload.bin && sunxi-fel exec 0x20000
