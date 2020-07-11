# Copyright © 2020 Keith Packard #
# SPDX-License-Identifier: Apache-2.0 #

SOURCE ?= .

METAL_FEATURES = stdio,exit

ESDK_SETTINGS_GENERATOR ?= $(SOURCE)/../../scripts/esdk-settings-generator
FREEDOM_METAL ?= $(SOURCE)/../../freedom-metal-next
DEVICETREE ?= $(FREEDOM_METAL)/test/qemu_sifive_e31.dts

RISCV_LIBC ?= picolibc

PROGRAM = hello.elf

SRC_C = $(notdir $(wildcard $(SOURCE)/*.c))
SRC_S = $(notdir $(wildcard $(SOURCE)/*.S))

include $(FREEDOM_METAL)/freedom-metal.make
