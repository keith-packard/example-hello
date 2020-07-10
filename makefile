# Copyright © 2020 Keith Packard #
# SPDX-License-Identifier: Apache-2.0 #

SOURCE ?= .

METAL_FEATURES = stdio,exit

FREEDOM_METAL ?= $(SOURCE)/../../freedom-metal-next
BSP ?= $(SOURCE)/../../bsp/qemu-sifive-e31
DEVICETREE ?= $(FREEDOM_METAL)/test/qemu_sifive_e31.dts

RISCV_LIBC ?= picolibc

PROGRAM = hello.elf

SRC_C = $(notdir $(wildcard $(SOURCE)/*.c))
SRC_S = $(notdir $(wildcard $(SOURCE)/*.S))

include $(FREEDOM_METAL)/freedom-metal.make
