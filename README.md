# Kirby 64: The Crystal Shards

This repository contains a work-in-progress decompilation effort for Kirby 64.

### **This repository does not contain game assets. The original game is required to build this project.**

## Installation
 - First, get Linux, or [Windows Subsystem for Linux](https://aka.ms/wslinstall) if you use Windows
 - Next, grab dependencies by running `sudo apt update && sudo apt install git gcc-mips-linux-gnu`
 - Next, clone the repo by running `git clone https://github.com/Kirby64Ret/kirby64 --recursive`
 - Get `uv` (the Python Everything App) using the relevant instructions for your distribution, or using one of the package managers listed at the [installation page](https://docs.astral.sh/uv/getting-started/installation/#pypi). Running the standalone installer is not recommended.
 - Grab the rest of the dependencies for your distro by using [this wiki page](https://github.com/HackerN64/HackerSM64/wiki/Installing-Dependencies).
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

