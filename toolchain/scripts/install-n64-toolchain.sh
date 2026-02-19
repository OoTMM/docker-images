#!/bin/bash

mkdir -p /tmp/n64-toolchain
cd /tmp/n64-toolchain
curl -L -O -# 'https://practicerom.com/public/packages/debian/dists/unstable/main/binary-all/mips64-ultra-elf-newlib_0.r233.fadb9fa-1_all.deb'
curl -L -O -# 'https://practicerom.com/public/packages/debian/dists/unstable/main/binary-all/mips64-ultra-elf-gcc-libs_0.r233.fadb9fa-1_all.deb'
curl -L -O -# 'https://practicerom.com/public/packages/debian/dists/unstable/main/binary-amd64/mips64-ultra-elf-binutils_0.r233.fadb9fa-1_amd64.deb'
curl -L -O -# 'https://practicerom.com/public/packages/debian/dists/unstable/main/binary-amd64/mips64-ultra-elf-gcc_0.r233.fadb9fa-1_amd64.deb'

apt install -y --no-install-recommends ./*.deb
cd -
rm -rf /tmp/n64-toolchain
