#
# Kernel build script.
# Copyright (c) 2026, Apollo Telephone Laboratories, et al.
# Provided under the BSD-3 clause
#

.PHONY: all
all: nucleus machine

.PHONY: nucleus
nucleus:
	cd nucleus; $(MAKE)

.PHONY: machine
machine:
	cd arch/$(CONFIG_ARCH)/$(CONFIG_CHIP); $(MAKE)
