#!/bin/sh
# Compiler and linker flags for the libultraship backend, in one place so the
# build script and any future Makefile agree.
#
#   lus_flags.sh --cflags
#   lus_flags.sh --libs
#
# libultraship is built out of tree (see tools/pc/build_lus.sh). Its static
# library pulls in ImGui, prism, monocypher, stb and thread-pool, all of which
# CMake fetched into $LUS_BUILD/_deps, plus the system SDL3, spdlog, tinyxml2,
# libzip, nlohmann-json and OpenGL.
set -e

LUS_ROOT=${LUS_ROOT:-/workspace/jr3dful/libultraship}
LUS_BUILD=${LUS_BUILD:-/workspace/lus-build}
DEPS="$LUS_BUILD/_deps"

case "$1" in
--cflags)
    # ENABLE_OPENGL and the CVAR_* defines are set by libultraship's own CMake
    # on its target; a consumer that includes its headers needs the ones that
    # appear in header bodies. ENABLE_OPENGL is the one that decides whether
    # Fast3dWindow declares the OpenGL backend at all.
    echo "-std=gnu++20 -DENABLE_OPENGL -DSPDLOG_COMPILED_LIB -DSPDLOG_FMT_EXTERNAL" \
         "-DSPDLOG_ACTIVE_LEVEL=SPDLOG_LEVEL_TRACE" \
         "-I$LUS_ROOT/include -I$LUS_ROOT/src -I$LUS_BUILD/src" \
         "-I$DEPS/imgui-src -I$DEPS/imgui-src/backends" \
         "-I$DEPS/stb -I$DEPS/threadpool-src/include" \
         "-I$DEPS/prism-src -I$DEPS/prism-src/lib -I$DEPS/prism-src/src" \
         "-I$DEPS/monocypher-src/src -I$DEPS/monocypher-src/src/optional" \
         "-I/usr/local/include"
    ;;
--libs)
    # --start-group because libultraship.a, ImGui.a, prism and stb reference
    # each other and a single pass leaves undefined symbols.
    echo "-Wl,--start-group" \
         "$LUS_BUILD/src/libultraship.a" \
         "$(find "$LUS_BUILD" -name 'libImGui.a' -o -name 'libstb.a' \
                  -o -name 'libprism.a' -o -name 'libmonocypher.a' \
                  -o -name 'libstorm.a' | tr '\n' ' ')" \
         "-Wl,--end-group" \
         "-L/usr/local/lib -lSDL3 -lspdlog -lfmt -ltinyxml2 -lzip -lGL -ldl -lpthread" \
         "-Wl,-rpath,/usr/local/lib"
    ;;
*)
    echo "usage: $0 --cflags|--libs" >&2
    exit 1
    ;;
esac
