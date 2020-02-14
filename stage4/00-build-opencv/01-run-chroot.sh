#!/bin/bash -e

cd "/home/${FIRST_USER_NAME}/cv"
unzip opencv.zip
unzip opencv_contrib.zip
rm -f opencv.zip opencv_contrib.zip

cd "/home/${FIRST_USER_NAME}/cv/opencv-3.4.7/"
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=/home/${FIRST_USER_NAME}/cv/opencv_contrib-3.4.7/modules -D ENABLE_NEON=ON -D ENABLE_VFPV3=ON -D BUILD_TESTS=OFF -D INSTALL_PYTHON_EXAMPLES=OFF -D OPENCV_ENABLE_NONFREE=ON -D CMAKE_SHARED_LINKER_FLAGS='-latomic' -D BUILD_EXAMPLES=OFF ..
make -j4
make install
ldconfig

rm -rf "/home/${FIRST_USER_NAME}/cv/"
