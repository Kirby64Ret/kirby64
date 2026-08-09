#!/bin/sh
# Build libultraship out of tree.
#
# WHAT IT TOOK, recorded because none of it is obvious and all of it is
# environment-specific:
#
#   1. SDL3. This LUS commit (6f42b9c) migrated to SDL3 and SDL3 is not in
#      apt on Ubuntu 24.04. It is built from source to /usr/local; see
#      tools/pc/build_sdl3.sh.
#
#   2. libzip's CMake package. Debian/Ubuntu ships libzip-dev without
#      libzip-tools, but libzip-targets.cmake imports libzip::zipcmp,
#      libzip::zipmerge and libzip::ziptool as IMPORTED executables and
#      hard-errors if /usr/bin/zipcmp does not exist. LUS never runs them.
#      Three stub files at those paths are enough:
#          for t in zipcmp zipmerge ziptool; do
#              printf '#!/bin/sh\nexit 1\n' > /usr/bin/$t; chmod +x /usr/bin/$t
#          done
#
#   3. stb_image.h. cmake/dependencies/common.cmake downloads it from
#      https://github.com/nothings/stb/raw/<sha>/stb_image.h, which this
#      environment's egress proxy answers with 403 while allowing
#      raw.githubusercontent.com. file(DOWNLOAD) does not fail the configure
#      on error -- it writes a zero-byte file -- so the failure surfaces three
#      minutes later as "stbi_uc was not declared in this scope". The LUS
#      checkout is patched to use raw.githubusercontent.com and to check the
#      download status. That patch lives in the libultraship working copy, not
#      here; it is one line plus an error check.
#
# Everything else (ImGui, prism, thread-pool, monocypher) FetchContent-clones
# from github.com over git, which this environment does allow.
set -e

LUS_ROOT=${LUS_ROOT:-/workspace/jr3dful/libultraship}
LUS_BUILD=${LUS_BUILD:-/workspace/lus-build}

cmake -S "$LUS_ROOT" -B "$LUS_BUILD" -G Ninja \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=/usr/local \
      -DGBI_UCODE=F3DEX_GBI_2
cmake --build "$LUS_BUILD" -j"$(nproc)"

ls -l "$LUS_BUILD/src/libultraship.a"
