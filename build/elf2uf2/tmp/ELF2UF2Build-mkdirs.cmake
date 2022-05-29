# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "B:/Git-repos/pico-sdk/tools/elf2uf2"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2/tmp"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2/src/ELF2UF2Build-stamp"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2/src"
  "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2/src/ELF2UF2Build-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "B:/Git-repos/pico-dev/WS2812B/build/elf2uf2/src/ELF2UF2Build-stamp/${subDir}")
endforeach()
