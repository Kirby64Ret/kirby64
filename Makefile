# Makefile to rebuild SM64 split image

################ Target Executable and Sources ###############

# BUILD_DIR is location where all build artifacts are placed
BUILD_DIR_BASE = build
VERSION = us
BUILD_DIR = $(BUILD_DIR_BASE)/$(VERSION)


# check that either QEMU_IRIX is set or qemu-irix package installed
ifndef QEMU_IRIX
  QEMU_IRIX := $(shell which qemu-irix)
  ifeq (, $(QEMU_IRIX))
    $(error Please install qemu-irix package or set QEMU_IRIX env var to the full qemu-irix binary path)
  endif
endif


##################### Compiler Options #######################
# IRIX_ROOT := tools/ido5.3_compiler
IRIX_ROOT := tools/ido7.1
CC        := $(QEMU_IRIX) -silent -L $(IRIX_ROOT) $(IRIX_ROOT)/usr/bin/cc


ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips-linux-gnu-
else ifeq ($(shell type mips64-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  CROSS := mips64-linux-gnu-
else
  CROSS := mips64-elf-
endif

AS = $(CROSS)as
# CC = $(CROSS)gcc
CPP     := cpp -P -Wno-trigraphs
LD = $(CROSS)ld
OBJDUMP = $(CROSS)objdump
OBJCOPY = $(CROSS)objcopy
PYTHON := python3

TEXTURES_DIR := textures

INCLUDE_FLAGS := -I$(BUILD_DIR)
ASFLAGS = -mtune=vr4300 -march=vr4300 -mabi=32 -mips3 $(INCLUDE_FLAGS)
# CFLAGS  = -Wall -O2 -mtune=vr4300 -march=vr4300 -G 0 -c -Wab,-r4300_mul
LDFLAGS = -T $(BUILD_DIR)/$(LD_SCRIPT) -mips3 --accept-unknown-input-arch --no-check-sections -T undefined_syms.txt -Map $(BUILD_DIR)/$(TARGET).map
OBJCOPY_FLAGS = --pad-to=0x2000000 --gap-fill=0xFF

####################### Other Tools #########################

# N64 tools
TOOLS_DIR = tools
N64CRC = tools/n64crc
N64GRAPHICS = $(TOOLS_DIR)/n64graphics
EMULATOR = mupen64plus
EMU_FLAGS = --noosd
LOADER = loader64
LOADER_FLAGS = -vwf
FixPath = $(subst /,/,$1)

ASM_DIRS := asm data $(wildcard asm/ovl*) asm/ovl0/lib asm/data asm/banks $(wildcard data/ovl*)
SRC_DIRS := src $(wildcard src/ovl*) data 

BIN_DIRS := bin/geo bin/image bin/misc bin/anim

DATA_DIRS := actors
DATA_FILES := $(foreach dir,$(DATA_DIRS),$(wildcard $(dir)/*.c))

TEXTURES_DIR = textures

MIPSISET := -mips2 -32

GLOBAL_ASM_C_FILES != grep -rl 'GLOBAL_ASM(' $(wildcard src/*/*.c)
GLOBAL_ASM_O_FILES = $(foreach file,$(GLOBAL_ASM_C_FILES),$(BUILD_DIR)/$(file:.c=.o))

S_FILES := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

BUILD_ASM_DIRS := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/**/))

# Object files
O_FILES := $(foreach file,$(C_FILES),$(BUILD_DIR)/$(file:.c=.o)) \
           $(foreach file,$(S_FILES),$(BUILD_DIR)/$(file:.s=.o))

ACTOR_FILES := $(foreach file,$(DATA_FILES),$(BUILD_DIR)/$(file:.c=.o))


# FLAGS
OPT_FLAGS := -O2
INCLUDE_CFLAGS := -I include -I $(BUILD_DIR) -I $(BUILD_DIR)/include -I src -I .
TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
CFLAGS = -Wab,-r4300_mul -non_shared -G0 -Xcpluscomm -Xfullwarn -signed $(OPT_FLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) $(MIPSISET)

CC_CHECK := gcc -fsyntax-only -fsigned-char $(CC_CFLAGS) $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -std=gnu90 -Wall -Wextra -Wno-format-security -Wno-main -DNON_MATCHING -DAVOID_UB $(VERSION_CFLAGS) $(GRUCODE_CFLAGS)

CC_TEST := gcc -Wall

######################## Targets #############################

NOEXTRACT ?= 0
# ifeq ($(NOEXTRACT),0)
DUMMY != ./extract_assets.py $(VERSION) >&2 || echo FAIL
ifeq ($(DUMMY),FAIL)
  $(error Failed to extract assets)
endif


ALL_DIRS = $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(INCLUDE_DIRS) $(ASM_DIRS) $(TEXTURES_DIR)/raw $(TEXTURES_DIR)/standalone)
DUMMY != mkdir -p $(BUILD_DIR)/$(ALL_DIRS)

DUMMY != make -C libreultra -j4

default: all

# file dependencies generated by splitter
MAKEFILE_SPLIT = Makefile.split
include $(MAKEFILE_SPLIT)

all: $(BUILD_DIR)/$(TARGET).z64

hexdump: $(BUILD_DIR)/$(TARGET).hex

clean:
	rm -rf build/

softclean:
	rm -rf build/us/src/
	rm -rf build/us/asm/

$(BUILD_DIR):
	mkdir $(BUILD_DIR) $(addprefix $(BUILD_DIR)/,$(SRC_DIRS) $(ASM_DIRS))

# $(BUILD_DIR)/actors/%.o: $(BUILD_DIR)/actors/%.c
# 	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
# 	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/libultra.a: libreultra/build/2.0I/libultra_rom.a
	cp $< $@

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/data/%.o: data/%.c
# 	$(CC_TEST) -c $(INCLUDE_CFLAGS) -o $@ $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.c
	@$(CC_CHECK) -MMD -MP -MT $@ -MF $(BUILD_DIR)/$*.d $<
	$(CC) -c $(CFLAGS) -o $@ $<

$(BUILD_DIR)/$(LD_SCRIPT): $(LD_SCRIPT)
	$(CPP) $(VERSION_CFLAGS) -DBUILD_DIR=$(BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $<

$(BUILD_DIR)/$(TARGET).elf: $(O_FILES) $(BUILD_DIR)/$(LD_SCRIPT) $(BUILD_DIR)/libultra.a
	$(LD) -L $(BUILD_DIR) $(LDFLAGS) -o $@ $(O_FILES) $(LIBS) -lultra

# final z64 updates checksum
$(BUILD_DIR)/$(TARGET).z64: $(BUILD_DIR)/$(TARGET).elf
	$(OBJCOPY) $< $@ -O binary $(OBJCOPY_FLAGS)
	$(N64CRC) $@
	@python3 tools/progress2.py -m
	@sha1sum -c $(TARGET).sha1

$(BUILD_DIR)/$(TARGET).hex: $(BUILD_DIR)/$(TARGET).z64
	xxd $< > $@

$(BUILD_DIR)/$(TARGET).objdump: $(BUILD_DIR)/$(TARGET).elf
	$(OBJDUMP) -D $< > $@

$(GLOBAL_ASM_O_FILES): CC := $(PYTHON) tools/asm_processor/build.py $(CC) -- $(AS) $(ASFLAGS) --

test: $(BUILD_DIR)/$(TARGET).z64
	$(EMULATOR) $(EMU_FLAGS) $<

load: $(BUILD_DIR)/$(TARGET).z64
	$(LOADER) $(LOADER_FLAGS) $<

.PHONY: all clean default diff test

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules


print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

