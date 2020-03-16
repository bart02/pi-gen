#!/bin/bash -e

if [ ! -e "/dev/random" ]; then
    mknod -m 644 /dev/random c 1 8
    chown root:root /dev/random
fi
if [ ! -e "/dev/urandom" ]; then
    mknod -m 644 /dev/urandom c 1 9
    chown root:root /dev/urandom
fi

pip3 install numpy
