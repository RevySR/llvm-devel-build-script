#!/usr/bin/env bash

set -e

# check env

echo "check tool"
which svn
which gcc || which clang
echo "check done!"

echo "check llvm source exist"

if [ ! -d "llvm" ]; then
    bash ./download.sh
else
    bash ./update.sh
fi

sudo rm -rf build
echo "build start"

mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=prefix=/opt/llvm ../llvm

make -j 4
echo "build end!"

echo "install start"
sudo make install
echo "install end!"

exit 0
