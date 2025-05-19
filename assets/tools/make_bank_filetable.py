import sys, subprocess
from subprocess import PIPE
from khelpers import filename_d
from elftools.elf.elffile import ELFFile
import elftools

CROSS = sys.argv[1]
BUILD_DIR = sys.argv[2]
outfile = sys.argv[3]

oo = outfile.replace("/", " ").replace("."," ").split()
bank = ""
for i in oo:
	if "bank" in i:
		bank = i[-1]
		break


fheader = """\
#include "types.h"
#include "segments.h"
#include "bank%s.h"

"""

bheader = """\n
struct BankHeader %s = {
    /* geo table RAM   0x0  */ &%s,
    /* geo table ROM   0x4  */ %s,
    /* image table RAM 0x8  */ &%s,
    /* image table ROM 0xC  */ &%s,
    /* anim table ROM  0x10 */ &%s,
    /* anim table RAM  0x14 */ &%s,
    /* misc table RAM  0x18 */ &%s,
    /* misc table ROM  0x1C */ &%s,
};

"""

totSize = 0
"""
	text    data     bss     dec     hex filename
	 248     128     192     568     238 build/us/%.o
"""
def get_data_size(filname):
	ofile = BUILD_DIR+filname.replace(".ci",".XX").replace(".c",".o").replace(".bin",".o").replace(".s",".o").replace(".png", ".o")
	# print(ofile)
	ofile = ofile.replace(".XX", ".ci")

	with open(ofile, 'rb') as elf:
		e = ELFFile(elf)
		data_section = e.get_section_by_name('.data')
		if data_section:
			return data_section['sh_size']
		else:
			return 0

def write_table(filetype, fil, bank):
	global totSize
	if filetype == "geo":
		fil.write(fheader % bank)
		fil.write("u32 *bank_%s_geo_table[] = {\n" % bank)
	elif filetype == "image":
		totSize = 0
		fil.write("u32 bank_%s_image_table[] = {\n" % bank)
	elif filetype == "anim":
		totSize = 0
		fil.write("u32 bank_%s_anim_table[] = {\n" % bank)
	elif filetype == "misc":
		totSize = 0
		fil.write("u32 bank_%s_misc_table[] = {\n" % bank)
	else:
		print("what")
		exit(1)

	if filetype == "geo":
		fil.write("    NULL,\n    NULL,\n")
	else:
		fil.write("    0,\n    0,\n")

	fl = []
	with open(filename_d[filetype]) as f:
		fl = f.readlines()

	inRange = False

	geoCount = 1
	filecount = 1
	for line in fl:
		if filetype.upper() in line:
			if str(bank) in line:
				inRange = True
			else:
				inRange = False
			continue
		if line == "\n":
			continue
		if inRange:
			lfile = line.strip().split()[0]
			sz = get_data_size(lfile)

			totSize += sz
			if filetype != "geo":
				fil.write("    "+str(hex(totSize))+",\n")
				filecount += 1
			else:
				fil.write("    "+"bank_%s_index_%d_geo_start,\n" % (bank, geoCount))
				fil.write("    "+"bank_%s_index_%d_geo_end,\n" % (bank, geoCount))
				geoCount += 1


	fil.write("};\n")


with open(outfile, "w+") as f:
	write_table("geo", f, bank)
	write_table("image", f, bank)
	write_table("anim", f, bank)
	write_table("misc", f, bank)
	f.write(bheader % (
		"bank_%s_filetable" % bank,
		"bank_%s_geo_table" % bank,
		str(-1),

		"bank_%s_image_table" % bank,
		"bank_%s_index_1_image_start" % bank,

		"bank_%s_anim_table" % bank,
		"bank_%s_index_1_anim_start" % bank,

		"bank_%s_misc_table" % bank,
		"bank_%s_index_1_misc_start" % bank,
	))


