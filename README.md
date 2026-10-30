# Kirby 64: The Crystal Shards

This repository contains a work-in-progress decompilation effort for Kirby 64.

### **This repository does not contain game assets. The original game is required to build this project.**

## REPO GOALS
 - I intend for this to be _moddable_ over a _complete_ decomp. Percentage is a number that can go up any time, but what's the point if nobody can read the codebase?
 - Therefore I value things like
   - Correct Names
     - In most cases jargon is preferred because it will refer to something you can easily look up
   - Explicit Emulator/Console Testing to see what various variables and structures do

## Installation
 - First, get Linux, or [Windows Subsystem for Linux](https://aka.ms/wslinstall) if you use Windows
 - Next, grab dependencies by running `sudo apt update && sudo apt install python3 git gcc-mips-linux-gnu`
   - **ALERT**: Ubuntu 26 seems to no longer have `gcc-mips-linux-gnu`. Install the libdragon toolchain `.deb` file from their [releases page]() instead
 - Grab the qemu-irix deb from [here](https://github.com/n64decomp/qemu-irix/releases) and install it with `sudo dpkg -i path/to/qemu(press tab here to autocomplete the name)` (Use `alien` on Fedora or `debtap` on Arch to convert)
 - Next, clone the repo by running `git clone https://github.com/Kirby64Ret/kirby64 --recursive`
 - Get `uv` (the Python Everything App) with `python3 -m pip install uv`
   - Or use the relevant instructions for your distribution/package manager at the [installation page](https://docs.astral.sh/uv/getting-started/installation/#pypi). **Running the standalone installer is not recommended.**
 - Grab the rest of the dependencies for your distro by using [this wiki page](https://github.com/HackerN64/HackerSM64/wiki/Installing-Dependencies).
 - Put your copy of the game into this folder, with the name `baserom.us.z64`
 - Run `make setup` to get assets extracted, then `make` to build

---

## Want to contribute? 😳
Pull requests are welcome! Everything is fair game to work on, as long as it aligns with the goals!

I work on this decomp in a very sporadic way, so the best (and easiest!!) way to contribute is to essentially clean up after me. This involves:
 - Fixing warnings
 - Helping with documentation
 - Finding interesting functions in the codebase to work on
 - Writing modding tools for this repo or to be maintained separately

## Progress! Everybody loves progress!
 - ~7% by the Kirby 64 Contributors
 - Claude added additional 50% in [This PR](https://github.com/Kirby64Ret/kirby64/pull/61)
 - Claude added additional 100% in a private fork (60% unmatched)
 - **Total**: 157% decompiled (97% matched)

