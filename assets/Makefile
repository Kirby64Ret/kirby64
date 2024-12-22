MATCHING ?= 1

K64_BUILD_DIR := ../build
BUILD_DIR := $(K64_BUILD_DIR)/assets
DUMMY != mkdir -p $(BUILD_DIR)
TARGET = $(BUILD_DIR)/game_assets.o

FILETABLES := filetable_models.mk \
			  filetable_image.mk \
			  filetable_animations.mk \
			  filetable_misc.mk

-include $(FILETABLES)

V := @

BANK_LINKSCRIPTS := $(BUILD_DIR)/bank0.ld \
					$(BUILD_DIR)/bank1.ld \
					$(BUILD_DIR)/bank2.ld \
					$(BUILD_DIR)/bank3.ld \
					$(BUILD_DIR)/bank4.ld \
					$(BUILD_DIR)/bank5.ld \
					$(BUILD_DIR)/bank6.ld \
					$(BUILD_DIR)/bank7.ld
BANK_FILETABLES := $(foreach file, $(BANK_LINKSCRIPTS), $(file:.ld=.filetable.c))
BANK_HEADERS := $(foreach file, $(BANK_LINKSCRIPTS), $(file:.ld=.h))

default: all
all: $(TARGET)

FIXDIR := $(shell pwd)/..
INCLUDE_CFLAGS := -I $(FIXDIR)/include -I $(FIXDIR)/include/libc -I $(FIXDIR)/src -I .
TARGET_CFLAGS := -nostdinc -I include/libc -DTARGET_N64 -DF3DEX_GBI_2
GCC_CFLAGS = -Wall $(TARGET_CFLAGS) $(INCLUDE_CFLAGS) -march=vr4300 -mtune=vr4300 -mfix4300 -mabi=32 -mno-shared -G 0 -fno-PIC -mno-abicalls -fno-zero-initialized-in-bss -fno-toplevel-reorder -Wno-missing-braces
ASFLAGS = -mtune=vr4300 -march=vr4300 --no-pad-sections -mabi=32 -mips3 $(INCLUDE_FLAGS)
# I can't find a cleaner cross-platform option to fill these 11 bytes
MATCH_ASSETS := --pad-to=0x019e1260 --gap-fill=0x00

ifeq ($(shell type mips-linux-gnu-cpp >/dev/null 2>/dev/null; echo $$?), 0)
	CROSS := mips-linux-gnu-
else
	CROSS := mips64-elf-
endif

ALL_FILES := $(MODEL_FILES) $(IMAGE_FILES) $(ANIM_FILES) $(MISC_FILES)

_BIN2C := $(foreach file,$(ALL_FILES), $(file:.bin=.o))
_PNG2C := $(foreach file,$(_BIN2C), $(file:.png=.o))
_C2C := $(foreach file,$(_PNG2C), $(file:.c=.o))
O_FILES := $(foreach file, $(_C2C), $(BUILD_DIR)/$(file))

clean:
	rm -f -r $(BUILD_DIR)

clean-tables:
	rm -f $(BUILD_DIR)/*.{c,h,ld}
	rm -f $(TARGET)

## in memoriam:
#$(shell \
		echo $(shell \
				jq -c ".[\"assets/$<\"].meta.realdims" ../assets_image.json \
		  		| tr "[]," " " \
			) \
			$(shell echo $< \
				| tr "." " " \
				| awk '{ \
					split(toupper($$2),a,/[0-9].*/,seps); \
					print "-f",a[1],"-s",seps[1] \
				}' \
			) \
		| awk '{ \
			if ($$1!="null") { \
				print "-W",$$1,"-H",$$2,$$3,$$4,$$5,$$6\
			} else {\
				print $$2,$$3,$$4,$$5\
			}\
		}'\
	)
# Destroyed for being too incompatible despite being almost entirely POSIX commands

_BG_IMGS := $(wildcard image/**/**/*background*.png) $(wildcard image/**/*background*.png)
BG_OBJECTS := $(foreach file, $(_BG_IMGS), $(BUILD_DIR)/$(file:.png=.o))
$(BG_OBJECTS): $(BUILD_DIR)/%.o: %.png
	$(V)mkdir -p $(@D)
ifeq ($(MATCHING), 1)
	$(V)../tools/rgb2c -G $(lastword $(subst ., ,$*)) -B $(shell ../tools/img_getprop $<) -o RAW $< > $(@:.o=.bin)
else
	$(V)../tools/rgb2c -G $(lastword $(subst ., ,$*)) -B -o RAW $< > $(@:.o=.bin)
endif
	$(V)$(CROSS)ld -r -b binary -o $@ $(@:.o=.bin)

$(BUILD_DIR)/%.o: %.png
	@printf "    [Asset:PNG] $<\n"
	$(V)mkdir -p $(@D)
	$(V)../tools/rgb2c -G $(lastword $(subst ., ,$*)) -o RAW $< > $(@:.o=.bin)
	$(V)$(CROSS)ld -r -b binary -o $@ $(@:.o=.bin)

$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.bin
	@printf "    [Asset:BIN] $<\n"
	$(V)mkdir -p $(@D)
	$(V)$(CROSS)ld -r -b binary -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@printf "    [Asset:CC] $<\n"
	$(V)mkdir -p $(@D)
	$(V)$(CROSS)gcc -c $(GCC_CFLAGS) -D__sgi -o $@ $<

$(BUILD_DIR)/%.o: %.s
	@printf "    [Asset:ASM] $<\n"
	$(V)mkdir -p $(@D)
	$(V)$(CROSS)as $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.bin
	@printf "    [Asset:BIN] $<\n"
	$(V)mkdir -p $(@D)
	$(V)$(CROSS)ld -r -b binary -o $@ $<

$(BUILD_DIR)/%.ld: $(FILETABLES) $(O_FILES)
	$(V)python3 tools/make_file_ldscript.py $@

$(BUILD_DIR)/%.filetable.c: $(BUILD_DIR)/%.ld
	$(V)python3 tools/make_bank_filetable.py $(CROSS) $(BUILD_DIR)/ $@

$(BUILD_DIR)/%.h: $(BUILD_DIR)/%.filetable.c
	$(V)python3 tools/make_bank_header.py $(BUILD_DIR)/ $@

$(BUILD_DIR)/assets.ld: assets.ld $(BANK_LINKSCRIPTS) bank_header.ld.in
	$(V)cp bank_header.ld.in $(BUILD_DIR)
	$(CROSS)cpp -P -I$(K64_BUILD_DIR) -MMD -MP -MT $@ -MF $@.d -o $@ $< -DBUILD_DIR=$(K64_BUILD_DIR) -Umips

$(TARGET): $(BUILD_DIR)/assets.ld $(BANK_HEADERS)
	$(V)$(CROSS)ld -L $(K64_BUILD_DIR) -T $< -o $(BUILD_DIR)/$(@F).elf
	$(CROSS)objcopy $(MATCH_ASSETS) $(BUILD_DIR)/$(@F).elf $(BUILD_DIR)/$(@F).bin -O binary
	$(CROSS)ld -r -b binary -o $@ $(BUILD_DIR)/$(@F).bin

.PHONY: all clean default diff test distclean
.SECONDARY:

# Remove built-in rules, to improve performance
MAKEFLAGS += --no-builtin-rules

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
