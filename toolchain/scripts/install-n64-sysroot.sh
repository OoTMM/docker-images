#!/bin/bash

SYSROOT_DIR=/usr/mips64-ultra-elf/n64-sysroot
SYSROOT_INCLUDE_DIR=$SYSROOT_DIR/usr/local/include

cd /tmp
git clone --depth=50 https://github.com/decompals/ultralib
mkdir -p $SYSROOT_INCLUDE_DIR
cp -r ultralib/include/* $SYSROOT_INCLUDE_DIR
rm -rf ultralib
