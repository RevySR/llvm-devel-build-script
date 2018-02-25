#!/usr/bin/env bash

set -e

echo "init llvm"

svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm

cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
cd -

cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra
cd -

cd llvm/tools
svn co http://llvm.org/svn/llvm-project/lld/trunk lld
cd -

cd llvm/tools
svn co http://llvm.org/svn/llvm-project/polly/trunk polly
cd -

cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt
cd -

cd llvm/projects
svn co http://llvm.org/svn/llvm-project/openmp/trunk openmp
cd -

cd llvm/projects
svn co http://llvm.org/svn/llvm-project/libcxx/trunk libcxx
svn co http://llvm.org/svn/llvm-project/libcxxabi/trunk libcxxabi
cd -

cd llvm/projects
svn co http://llvm.org/svn/llvm-project/test-suite/trunk test-suite
cd -

echo "init llvm finish"

exit 0
