# Kirby 64: The Crystal Shards

This repository contains a work-in-progress decompilation effort for Kirby 64.

You will need an original copy of the ROM to proceed.

## Installing
 - First, get Linux, or [Windows Subsystem for Linux](https://aka.ms/wslinstall) if you use Windows
 - Next, clone the repo by running `sudo apt update && sudo apt install git gcc-mips-linux-gnu && git clone https://github.com/farisawan-2000/kirby64 --recursive`
 - Get the GitPython submodule by doing `pip3 install gitpython`
 - Grab the qemu-irix deb from [here](https://github.com/n64decomp/qemu-irix/releases) and install it with `sudo dpkg -i path/to/qemu(press tab here to autocomplete the name)`
 - Now just follow the instructions for SM64 decomp [here](https://github.com/n64decomp/sm64/tree/master/README.md), but before you go, keep reading.
 - Once dependencies are installed, run `make setup` to get assets extracted, then `make` to build!

## Contributing
 - Pull requests are welcome! Everything is fair game to work on, including tons of easy functions that make for an easy PR! ;)
---

## TODO (Required)
 - Disassemble every asset that's extracted, or convert them into images and build them
 - Work on ASM shiftability and struct documentation (Asset shiftability is done!)
 
## TODO (Necessary)
 - Actually decompile the code
 - Clean up `undefined_syms.txt`

## TODO (Want to contribute? 😳)
 - Document Kirby's action states (Might require PJ64 Debugger)
