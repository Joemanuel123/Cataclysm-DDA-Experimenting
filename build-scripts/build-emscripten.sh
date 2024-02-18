#!/bin/bash
set -exo pipefail

emsdk install 3.1.51
emsdk activate 3.1.51 ccache-git-emscripten-64bit

make -j`nproc` NATIVE=emscripten BACKTRACE=0 TILES=1 TESTS=0 RUNTESTS=0 RELEASE=1 CCACHE=1 LINTJSON=0 cataclysm-tiles.js
