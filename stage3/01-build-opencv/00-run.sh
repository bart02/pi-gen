#!/bin/bash -e

if [ ! -e "files" ]; then
    mkdir files
fi

if [ ! -f "files/opencv.zip" ]; then
    wget -O "files/opencv.zip" https://github.com/opencv/opencv/archive/3.4.7.zip
fi
if [ ! -f "files/opencv_contrib.zip" ]; then
    wget -O "files/opencv_contrib.zip" https://github.com/opencv/opencv_contrib/archive/3.4.7.zip
fi

install -v -o 1000 -g 1000 -d "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/cv"
install -v -o 1000 -g 1000 -m 755 "files/opencv_contrib.zip" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/cv/"
install -v -o 1000 -g 1000 -m 755 "files/opencv.zip" "${ROOTFS_DIR}/home/${FIRST_USER_NAME}/cv/"
