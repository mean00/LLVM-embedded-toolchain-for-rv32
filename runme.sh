cmake  -G Ninja -DCMAKE_CXX_COMPILER_LAUNCHER=ccache ..
ninja 
#ninja -v   >& build_log
ninja package-llvm-toolchain
