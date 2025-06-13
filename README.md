# Kirby 64: The Crystal Shards

This repository contains a work-in-progress decompilation effort for Kirby 64.

You will need an original copy of the ROM to proceed.

## Exclusive Dependencies
 - Works best on the latest version of Ubuntu, Fedora, or Arch. PR's to support other Linux versions are welcome, but as of current those three are the only ones we can reliably test.
 - Python 3.10 with `pip`
 - `jq`

## Installation
 - First, get Linux, or [Windows Subsystem for Linux](https://aka.ms/wslinstall) if you use Windows
 - Next, clone the repo by running `sudo apt update && sudo apt install git gcc-mips-linux-gnu && git clone https://github.com/Kirby64Ret/kirby64 --recursive`
 - Install the relevant Python packages by running `pip3 install gitpython splat64[mips]`
   - **Warning:** For Arch Linux (and newer versions of Debian apparently, if it complains about `externally-managed-environment`, install gitpython from your package repos, and install `splat64[mips]` from pip using `--break-system-packages` at your own risk (in my tests it works fine))
 - Grab the qemu-irix deb from [here](https://github.com/n64decomp/qemu-irix/releases) and install it with `sudo dpkg -i path/to/qemu(press tab here to autocomplete the name)` (Use `alien` on Fedora or `debtap` on Arch to convert)
 - Now just follow the instructions for SM64 decomp [here](https://github.com/n64decomp/sm64/tree/master/README.md), but before you go, keep reading.
 - Once dependencies are installed, run `make setup` to get assets extracted, then `make` to build!

## Contributing
 - Pull requests are welcome! Everything is fair game to work on, including tons of easy functions that make for an easy PR! ;)
---

## TODO (Required)
 - Disassemble every asset that's extracted, or convert them into images and build them
 - Work on ASM shiftability and struct documentation (Asset shiftability is done!)
 
## TODO (Necessary)
 - Actually decompile the code lol

## TODO (Want to contribute? 😳)
 - Document Kirby's action states (Might require PJ64 Debugger)
