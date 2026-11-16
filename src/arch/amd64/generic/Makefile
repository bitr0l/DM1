#
# Kernel AMD64 build script.
# Copyright (c) 2026, Apollo Telephone Laboratories, et al.
# Provided under the BSD-3 clause.
#

include ../../../mk/common.mk

ASMFILES = $(shell find . -name "*.S")
ASMOFILES = $(ASMFILES:.S=.S.o)
MISC_OFILES = $(shell find $(GLOBAL_ROOT) -name "*.o")

REAL_ROOT = $(GLOBAL_ROOT)/..
KERNEL_OUT = $(REAL_ROOT)/out/dm1.sys
LD = ld.lld

CFLAGS =				\
	$(SYS_CFLAGS)

.PHONY: all
all: $(ASMOFILES)
	$(PROMPT) "LD" $(KERNEL_OUT).elf
	$(LD) -Thost/link.ld $(COMMON_LINK_FLAGS) $(MISC_OFILES) -o $(KERNEL_OUT).elf
	$(PROMPT) "OBJCOPY" $(KERNEL_OUT)
	llvm-objcopy -O binary $(KERNEL_OUT).elf $(KERNEL_OUT)

%.S.o: %.S
	$(PROMPT) "AS" $<
	$(CC) -c $(CFLAGS) $< -o $@
