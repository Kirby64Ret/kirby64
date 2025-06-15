CC := gcc
IGNORED := -Wno-implicit-function-declaration
CFLAGS := -O2 -I . $(IGNORED) -Wall -Wextra -Wno-unused-parameter -pedantic
PROGRAMS := n64graphics n64crc patch_libultra_math gfxdis_f3dex2 rgb2c

gfxdis_f3dex2_SOURCES := gfxdis/gfxdis.c gfxdis/main.c
gfxdis_f3dex2_CFLAGS := -DF3DEX_GBI_2 -Igfxdis/include/ -Igfxdis/ -O2 -std=gnu99 -Wno-pedantic

n64crc_SOURCES := n64crc.c
n64crc_CFLAGS := -O2 # faster compile time

n64graphics_SOURCES := n64graphics.c utils.c
n64graphics_CFLAGS  := -DN64GRAPHICS_STANDALONE

rgb2c_SOURCES := modern_rgb2c/rgb2c.c modern_rgb2c/readtex2.c modern_rgb2c/ci_texconv.c modern_rgb2c/loadblock_widthpad.c modern_rgb2c/lodepng.c
rgb2c_CFLAGS  := -Imodern_rgb2c/

patch_libultra_math_SOURCES := patch_libultra_math.c

# who cares if you have armips, just use our version
CXX_PROGRAMS := armips_bin/armips extract_assets img_getprop

default: all

level_settings/convert: $(wildcard level_settings/*.c)
	$(CC) $(CFLAGS) -o $@ $^

all: $(PROGRAMS) $(CXX_PROGRAMS) level_settings/convert

armips_bin/:
	cmake -S armips -B $@

armips_bin/armips: armips_bin/
	+make -C $< 

extract_assets: new_asset_extractor/extract_assets.cpp new_asset_extractor/src/format.cc
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic n64graphics.c -lm -o _0.o -lm
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic utils.c -lm -o _1.o -lm
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic new_asset_extractor/png_wrapper.c -lm -o _2.o -lm
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic new_asset_extractor/lodepng.c -lm -o _3.o -lm
	c++ -I ./new_asset_extractor/include -I ./new_asset_extractor/ -Wall -Wextra -pedantic -g -ggdb3 -std=c++17 -fopenmp -o $@ _0.o _1.o _2.o _3.o $^

img_getprop: new_asset_extractor/img_getprop.cpp new_asset_extractor/src/format.cc
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic n64graphics.c -lm -o _0.o -lm
	cc -c -I . -Wall -Wextra -Wno-unused-parameter -pedantic utils.c -lm -o _1.o -lm
	c++ -I ./new_asset_extractor/ -I ./new_asset_extractor/include -Wall -Wextra -pedantic -g -ggdb3 -std=c++17 -fopenmp -o $@ _0.o _1.o $^

clean:
	$(RM) $(PROGRAMS) $(CXX_PROGRAMS) level_settings/convert _0.o _1.o _2.o _3.o

define COMPILE
$(1): $($1_SOURCES)
	$(CC) $(CFLAGS) $$^ -lm -o $$@ $($1_CFLAGS)
endef

$(foreach p,$(PROGRAMS),$(eval $(call COMPILE,$(p))))
