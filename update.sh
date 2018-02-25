#!/usr/bin/env bash

set -e

echo "update start!"

pwd
cd llvm
svn up

cd tools/clang
svn up
cd -

cd tools/clang/tools/extra
svn up
cd -

cd tools/lld
svn up
cd -

cd tools/polly
svn up
cd -

cd projects/compiler-rt
svn up
cd -

cd projects/openmp
svn up
cd -

cd projects
cd libcxx
svn up
cd -
cd libcxxabi
svn up
cd -
cd test-suite
svn up

echo "update end!"

exit 0
