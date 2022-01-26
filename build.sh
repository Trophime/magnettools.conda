#! /bin/bash

# Build MagnetTools
# pwd
# echo "PREFIX=${PREFIX}"
# ls
# cd magnettools

echo "PREFIX=${PREFIX}"

mkdir -p build
cd build
cmake .. \
      -DMAGNETTOOLS_ENABLE_OPTIONALDEPS=ON \
      -DMAGNETTOOLS_ENABLE_PYTHON=ON \
      -DMAGNETTOOLS_PYTHON_VERSION=3 \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=$PREFIX/lib \
      -DCMAKE_INSTALL_INCLUDEDIR=$PREFIX/include

make 
make install

# # Build MagnetTools Python wrapper
# cd ../Python
# swig -python -shadow -c++ MagnetType.i
# python setup.py build
# python setup.py install --prefix=$PREFIX
