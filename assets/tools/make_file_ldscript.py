import sys, os

from khelpers import filename_d

def write_section(filetype, fil, bank):
	if filetype == "geo":
		fil.write("""#include "bank_header.ld.in"\n\n""")

	fil.write(f"{filetype.upper()}_INIT({bank})\n")

	fl = []
	with open(filename_d[filetype]) as f:
		fl = f.readlines()

	inRange = False
	fileCount = 1

	for i, line in enumerate(fl):
		if filetype.upper() in line:
			if str(bank) in line:
				inRange = True
			else:
				inRange = False
			continue
		if line == "\n":
			continue
		if inRange:
			ls = line.split("/")
			fil.write(
				f"{filetype.upper()}({bank}, {fileCount}, assets/{os.path.splitext(line.split()[0])[0]}.o)\n"
			)
			fileCount += 1
	if filetype != "geo":
		fil.write("FILLER(%s, %s)\n" % (filetype, bank))


output_filename: str = sys.argv[1]
filename_split = output_filename.replace(".", " ").replace("/"," ").split()
bank = ""
for i in filename_split:
	if "bank" in i:
		bank = i[-1]
		break

if bank == "":
	print("NO BANK")
	exit(1)

with open(output_filename, "w+") as f:
	write_section("geo", f, bank)
	write_section("image", f, bank)
	write_section("anim", f, bank)
	write_section("misc", f, bank)
