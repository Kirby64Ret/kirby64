import sys, subprocess
from subprocess import PIPE
from khelpers import filename_d

BUILD_DIR = sys.argv[1]
outfile = sys.argv[2]

oo = outfile.replace("/", " ").replace("."," ").split()
bank = ""
for i in oo:
	if "bank" in i:
		bank = i[-1]
		break


fheader = """\
#include "types.h"
#ifndef BANK_%s_H
#define BANK_%s_H

"""

def write_header(filetype, fil, bank):
	fl = []
	with open(filename_d[filetype]) as f:
		fl = f.readlines()

	inRange = False

	geoCount = 1
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
			fil.write("extern u32 "+"bank_%s_index_%d_geo_start[];\n" % (bank, geoCount))
			fil.write("extern u32 "+"bank_%s_index_%d_geo_end[];\n" % (bank, geoCount))
			geoCount += 1




with open(outfile, "w+") as f:
	f.write(fheader % (bank, bank))

	write_header("geo", f, bank)

	f.write("extern struct BankHeader bank_%s_filetable;\n" % bank)
	f.write("extern u32 bank_%s_index_1_image_start[];\n" % bank)
	f.write("extern u32 bank_%s_index_1_anim_start[];\n" % bank)
	f.write("extern u32 bank_%s_index_1_misc_start[];\n" % bank)

	f.write("#endif")
	
	


