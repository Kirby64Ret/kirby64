#!/bin/sh
# Put the resources libultraship needs into port/assets.
#
# THIS IS NOT OPTIONAL AND IT IS NOT ABOUT GAME ART. Fast3D loads its own
# shaders through the ResourceManager -- gfx_opengl.cpp asks for
# "shaders/opengl/default.shader.glsl" and calls abort() if the resource is
# missing ("Failed to load default fragment shader, missing f3d.o2r?"). A port
# that mounts no archive cannot draw a single triangle, and the failure looks
# like a renderer bug rather than a missing file.
#
# Upstream ports get this from a prebuilt f3d.o2r. Here the file is copied out
# of the libultraship checkout into a folder archive, which LUS mounts exactly
# the same way and which is far easier to keep in step with a local LUS build.
#
# Game assets are separate and go in port/o2r/ -- see the archive_paths() note
# in src/pc/pc_backend_lus.cpp for why they must NOT share a directory.
set -e
cd /home/user/kirby64_decomp

LUS_ROOT=${LUS_ROOT:-/workspace/jr3dful/libultraship}

mkdir -p port/assets/shaders/opengl port/o2r

cp "$LUS_ROOT/src/fast/shaders/opengl/default.shader.glsl" \
   port/assets/shaders/opengl/default.shader.glsl

echo "staged:"
find port/assets -type f | sed 's/^/  /'
echo "port/o2r is where a Torch-built kirby64.o2r goes (currently $(ls port/o2r | wc -l) file(s))"
