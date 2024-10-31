# New Makefile

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR = build
VERSION = us

GRUCODE := F3DEX2_2.04H
LOCAL_ARMIPS=tools/armips_bin/armips

VERBOSE := 1

GAME_ASSETS := $(BUILD_DIR)/assets/game_assets.o

# check that either QEMU_IRIX is set or qemu-irix package installed
ifndef QEMU_IRIX
  QEMU_IRIX := $(shell which qemu-irix)
  ifeq (, $(QEMU_IRIX))
    $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
  endif
endif

V := @
ifeq (VERBOSE, 1)
	V=
endif

##################### Compiler Options #######################
# IRIX_ROOT := tools/ido5.3_compiler
IRIX_ROOT := tools/ido7.1
# CC        := $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc
CC := tools/ido-7.1recomp/cc


ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-linux-gnu-
else ifeq ($(shell type mips64-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-linux-gnu-
else ifeq ($(shell type mips-n64-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-n64-
else
  CROSS := mips64-elf-
endif

GCC := $(CROSS)gcc

AS = $(CROSS)as
# CC = $(CROSS)gcc
CPP     := $(CROSS)cpp -P -Wno-trigraphs
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy
PYTHON := python3

TEXTURES_DIR := textures

# UNNAMED_SYMS := -T unnamed_syms.txt

INCLUDE_FLAGS := -I$(BUILD_DIR) -Iinclude
ASFLAGS = -mtune=vr4300 -march=vr4300 --no-pad-sections -mabi=32 -mips3 $(INCLUDE_FLAGS)
# CFLAGS  = -Wall -O2 -mtune=vr4300 -march=vr4300 -G 0 -c -Wab,-r4300_mul
LDFLAGS = --no-check-sections -mips3 --accept-unknown-input-arch \
					-T libultra_unused.txt $(UNNAMED_SYMS) -T rcp_syms.txt \
					-Map $(BUILD_DIR)/$(TARGET).map \
					-T funcstodo.txt \
					-T datatodo.txt \
					-T ramvals.txt \
					-T $(BUILD_DIR)/$(LD_SCRIPT)
# 					-T undefined_syms.txt \
# 					-T undefined_funcs_auto.txt \
# 					-T undefined_syms_auto.txt
PRELIM_OBJCOPY_FLAGS = --pad-to=0x101000 --gap-fill=0x00
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

####################### Other Tools #########################

# N64 tools
TOOLS_DIR = tools
N64CRC = tools/n64crc
N64GRAPHICS = $(TOOLS_DIR)/n64graphics

ASSET_DIRS := $(wildcard assets/geo/bank_0/**) \
              $(wildcard assets/geo/bank_1/**) \
              $(wildcard assets/geo/bank_2/**) \
              $(wildcard assets/geo/bank_7/**) \
              $(wildcard assets/geo/bank_3/**)

ASM_DIRS := asm asm/data $(wildcard asm/data/ovl*)
            
SRC_DIRS := src src/main src/os $(wildcard src/ovl*)

BIN_DIRS := bin/geo bin/image bin/misc bin/anim

DATA_DIRS := actors
DATA_FILES := $(foreach dir,$(DATA_DIRS),$(wildcard $(dir)/*.c))

LEVEL_DIRS = $(wildcard assets/misc/bank_7/*)
LEVEL_FILES = $(foreach dir, $(LEVEL_DIRS), $(wildcard $(dir)/level.bin))
LEVEL_S_FILES = $(foreach file, $(LEVEL_FILES), $(file:.bin=.s))
LEVEL_O_FILES = $(foreach file, $(LEVEL_S_FILES), $(BUILD_DIR)/$(file:.s=.o))

TEXTURES_DIR = textures

MIPSISET := -mips2 -32


S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(C_FILES)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

MODEL_FILES := $(foreach dir,$(ASSET_DIRS),$(wildcard $(dir)/geo.bin))
MODEL_C_FILES := $(foreach file,$(MODEL_FILES),$(file:.bin=.c))


UCODE_BASE_DIR := ucode
UCODES := L3DEX2_2.04H S2DEX2_2.04

UCODE_DIRS := $(foreach ucode,$(UCODES) $(GRUCODE),$(UCODE_BASE_DIR)/$(ucode))
UCODE_TEXT_FILES := $(foreach ucode,$(UCODES),$(UCODE_BASE_DIR)/$(ucode)/$(ucode).code)
UCODE_DATA_FILES := $(foreach ucode,$(UCODES),$(UCODE_BASE_DIR)/$(ucode)/$(ucode).data)

UCODE_TEXT_O_FILES := $(addprefix $(BUILD_DIR)/,$(UCODE_TEXT_FILES:.code=.code.o)) $(BUILD_DIR)/$(UCODE_BASE_DIR)/$(GRUCODE)/$(GRUCODE).code.o
UCODE_DATA_O_FILES := $(addprefix $(BUILD_DIR)/,$(UCODE_DATA_FILES:.data=.data.o)) $(BUILD_DIR)/$(UCODE_BASE_DIR)/$(GRUCODE)/$(GRUCODE).data.o

BUILD_ASM_DIRS := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/**/))

SOUND_BINS := $(wildcard assets/sound/*.bin)
MISC_SPLAT_BINS := $(wildcard assets/*.bin)
# Object files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
           $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o)) \
           $(BUILD_DIR)/assets/boot.o \
           $(foreach file,$(SOUND_BINS),$(BUILD_DIR)/$(file:.bin=.o)) \
           $(foreach file,$(MISC_SPLAT_BINS),$(BUILD_DIR)/$(file:.bin=.o))


ASSET_O_FILES := $(foreach file,$(MODEL_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

D_FILES := $(O_FILES:.o=.d)

ACTOR_FILES := $(foreach file,$(DATA_FILES),$(BUILD_DIR)/$(file:.c=.o))


# FLAGS
OPT_FLAGS := -O2
INCLUDE_CFLAGS := -I include -I $(BUILD_DIR) -I $(BUILD_DIR)/include -I $(BUILD_DIR)/assets -I src -I .
TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
CFLAGS = -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed $(OPT_FLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) $(MIPSISET)
GCC_CFLAGS = -Wall $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -march=vr4300 -mtune=vr4300 -mfix4300 -mabi=32 -mno-shared -G 0 -fno-PIC -mno-abicalls -fno-zero-initialized-in-bss -fno-toplevel-reorder -Wno-missing-braces

CC_CHECK := gcc -fsyntax-only -fsigned-char -m32 $(CC_CFLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB $(VERSION_CFLAGS) $(GRUCODE_CFLAGS)

CC_TEST := gcc -Wall


######################## Targets #############################

NOEXTRACT ?= 0


ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/, assets/sound $(LEVEL_DIRS) $(ASSET_DIRS) $(SRC_DIRS) $(INCLUDE_DIRS) $(ASM_DIRS) $(TEXTURES_DIR)/raw $(TEXTURES_DIR)/standalone $(UCODE_DIRS))
DUMMY != mkdir -p $(ALL_DIRS)

# Checking if submodules exist
DUMMY != ls libreultra >/dev/null || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Missing submodule libreultra. Please run 'git submodule update --init')
endif

DUMMY != ls f3dex2 >/dev/null || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Missing submodule f3dex2. Please run 'git submodule update --init')
endif


# hardcoded compiler for ml.c until i figure out why it's breaking recomp
$(BUILD_DIR)/src/ovl0/memory_layer.o: CC = $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc

default: all

TARGET = kirby.us
LD_SCRIPT = kirby.ld
# TEXTURE_DIR = textures
# RAW_TEXTURE_FILES := $(addprefix $(BUILD_DIR)/,$(patsubst %.png,%,$(wildcard $(TEXTURES_DIR)/raw/*.png)))

$(BUILD_DIR)/data/kirby.066630.o: $(GAME_ASSETS)

libreultra/build/2.0I/libultra_rom.a:
	$(MAKE) -C libreultra -j4

libreultra/build/2.0I/libn_audio.a:
	$(MAKE) -C libreultra naudio -j4

all: $(BUILD_DIR)/$(TARGET).z64
	@sha1sum -c $(TARGET).sha1

clean:
	rm -rf build/

distclean:
	rm -rf build/
	tools/extract_assets --clean
	$(MAKE) -C tools clean
	$(MAKE) -C libreultra clean
	$(MAKE) -C f3dex2 clean
	rm -rf f3dex2/$(GRUCODE)
	# TODO: remove these
	rm -rf assets/geo
	rm -rf assets/image
	rm -rf assets/anim
	rm -rf assets/misc

softclean:
	rm -rf build/us/src/
	rm -rf build/us/asm/

# $(BUILD_DIR)/src/ovl0/ovl0_8.o: OPT_FLAGS += -framepointer
$(BUILD_DIR)/src/ovl7/yakulib.o: OPT_FLAGS = -O2 -Olimit 1000
$(BUILD_DIR)/src/ovl1/ovl1_5.o: OPT_FLAGS = -O2
$(BUILD_DIR)/src/ovl3/ovl3_1.o: OPT_FLAGS = -O2 -Wo,-loopunroll
# $(BUILD_DIR)/src/ovl7/yakulib.o: CC = $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc

# $(BUILD_DIR)/src/ovl1/save_file.o: OPT_FLAGS += -Wo,-loopunroll,0


# $(BUILD_DIR):
# 	@echo "Creating Build Folder Structure..."
# 	mkdir -p $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS)) $(BUILD_DIR)/assets/sound

# assets/misc/%.s: assets/misc/%.bin
# 	python3 tools/level_settings/helper.py $<

$(BUILD_DIR)/libultra.a: libreultra/build/2.0I/libultra_rom.a
	cp $< $@
	$(TOOLS_DIR)/patch_libultra_math $@

$(BUILD_DIR)/libn_audio.a: libreultra/build/2.0I/libn_audio.a
	cp $< $@
	$(TOOLS_DIR)/patch_libultra_math $@

$(BUILD_DIR)/$(UCODE_BASE_DIR)/$(GRUCODE)/$(GRUCODE).%.o: $(BUILD_DIR)/$(GRUCODE)/$(GRUCODE).%
	$(OBJCOPY) -I binary -O elf32-big $< $@

$(BUILD_DIR)/%.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(BUILD_DIR)/%.o: %.s
	$(CPP) $(GCC_CFLAGS) -o $(@:.o=.i) $<
	$(AS) $(ASFLAGS) -o $@ $(@:.o=.i)

$(BUILD_DIR)/%.o: %.c
	@$(CC_CHECK) -Wno-unknown-pragmas -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/data/%.o: data/%.c
# 	$(CC_TEST) -c $(INCLUDE_CFLAGS) -o $@ $<
	$(GCC) -c $(GCC_CFLAGS) -D__sgi -o $@ $<

# assets/geo/%.c: assets/geo/%.bin
# 	python3 tools/decompile_geos.py $<

# $(BUILD_DIR)/assets/geo/%.o: assets/geo/%.c
# 	$(GCC) -c $(GCC_CFLAGS) -D__sgi -o $@ $<

# $(BUILD_DIR)/assets/geo/%.o: assets/geo/%.s
# 	$(AS) -c $(ASFLAGS) -o $@ $<

$(GAME_ASSETS): assets/assets.ld
	$(MAKE) -C assets

# $(BUILD_DIR)/assets/misc/%.o: assets/misc/%.s
# 	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/$(UCODE_BASE_DIR)/%.o : $(UCODE_BASE_DIR)/%
	$(OBJCOPY) -I binary -O elf32-big $< $@

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT) $(UCODE_LD) rcp_syms.txt undefined_syms.txt unnamed_syms.txt $(GAME_ASSETS)
	$(CPP) $(VERSION_CFLAGS) $(INCLUDE_CFLAGS) -MMD -MP -MT $@ -MF $@.d -o $@ $< \
	-DBUILD_DIR=$(BUILD_DIR) -Umips

$(BUILD_DIR)/$(TARGET).elf: $(GAME_ASSETS) $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BUILD_DIR)/libultra.a $(BUILD_DIR)/libn_audio.a $(UCODE_TEXT_O_FILES) $(UCODE_DATA_O_FILES)
	$(V)$(LD) -L $(BUILD_DIR) $(LDFLAGS) -o $@ $(LIBS) -ln_audio

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $< $(BUILD_DIR)/$(@F).bin -O binary $(PRELIM_OBJCOPY_FLAGS)
	$(LD) -r -b binary -o $(BUILD_DIR)/$(@F).elf.1 $(BUILD_DIR)/$(@F).bin
	$(OBJCOPY) $(BUILD_DIR)/$(@F).elf.1 $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@
	@python3 tools/progress2.py -m


$(GLOBAL_ASM_O_FILES): CC := $(PYTHON) tools/asm-processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

setup:
	$(MAKE) -C libreultra -j4
	$(MAKE) -C libreultra naudio -j4
	$(MAKE) -C tools -j4
	$(MAKE) -C f3dex2 $(GRUCODE) PARENT_OUTPUT_DIR=../$(BUILD_DIR)/ ARMIPS=../$(LOCAL_ARMIPS)
	tools/extract_assets baserom.$(VERSION).z64
	./splat/split.py kirby64.yaml

.PHONY: all clean default diff test distclean

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

-include $(D_FILES)
-include $(BUILD_DIR)/$(LD_SCRIPT).d

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

