# Kirby 64: The Crystal Shards

This repository contains a work-in-progress decompilation effort for Kirby 64.

### **This repository does not contain game assets. The original game is required to build this project.**

## Installation
 - First, get Linux, or [Windows Subsystem for Linux](https://aka.ms/wslinstall) if you use Windows
 - Next, clone the repo by running `sudo apt update && sudo apt install git gcc-mips-linux-gnu && git clone https://github.com/Kirby64Ret/kirby64 --recursive`
 - Install the relevant Python packages by running `pip3 install gitpython splat64[mips]`
   - **Warning:** For Arch Linux (and newer versions of Debian apparently), if it complains about `externally-managed-environment`, install gitpython from your package repos, and install `splat64[mips]` from pip using `--break-system-packages` at your own risk (in my experience nothing actually breaks)
 - Grab all the dependencies for your distro by using [this wiki page](https://github.com/HackerN64/HackerSM64/wiki/Installing-Dependencies).
 - Put your copy of the game into this folder, with the name `baserom.us.z64`
 - Run `make setup` to get assets extracted, then `make` to build

---

## TODO (Required)
 - Disassemble every asset that's extracted, or convert them into images and build them
 - Test out full code shiftability

## TODO (Necessary)
 - Actually decompile the code lol

## TODO (Want to contribute? 😳)
Pull requests are welcome! Everything is fair game to work on, as long as it increases the decomp percentage!

I work on this decomp in a very messy way, so the best way to contribute is to essentially clean up after me. This involves:

 - Fixing warnings
 - Helping with documentation
 - Finding interesting functions to work on

