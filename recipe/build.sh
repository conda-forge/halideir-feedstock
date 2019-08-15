export DMLC_CORE_PATH=$PREFIX

CFLAGS=$CFLAGS -Isrc

make -j$CPU_COUNT DMLC_CORE_PATH=$PREFIX DLPACK_INCLUDE_PATH=$PREFIX CFLAGS=$CFLAGS

cp lib/* $PREFIX/lib/.

mkdir $PREFIX/lib/arithmetic
mkdir $PREFIX/include/arithmetic
cp build/arithmetic/* $PREFIX/lib/arithmetic/.
cp src/arithmetic/*.h $PREFIX/include/arithmetic/.

mkdir $PREFIX/lib/ir
mkdir $PREFIX/include/ir
cp build/ir/* $PREFIX/lib/ir/.
cp src/ir/*.h $PREFIX/include/ir/.

mkdir $PREFIX/lib/base
mkdir $PREFIX/include/base
cp build/base/* $PREFIX/lib/base/.
cp src/base/*.h $PREFIX/include/base/.

mkdir $PREFIX/lib/tvm
mkdir $PREFIX/lib/tvm/node
mkdir $PREFIX/include/tvm
mkdir $PREFIX/include/tvm/node
cp build/tvm/node/* $PREFIX/lib/tvm/node/.
cp src/tvm/node/*.h $PREFIX/include/tvm/node/.
