#!/bin/bash -e

TARGET_COLLECT_DIR="Image"

function END()
{
    exit $ERROR
}

if [ -e $TARGET_COLLECT_DIR ]; then
    echo "Found the directory $TARGET_COLLECT_DIR. Removing it now."
    rm -rf $TARGET_COLLECT_DIR
fi

if [ -e RK3288UbootLoader.bin ]; then
    echo "Found RK3288UbootLoader.bin Removing it now."
    rm -rf RK3288UbootLoader.bin
fi

mkdir Image

cp ../../../../u-boot/RK3288UbootLoader_*bin  RK3288UbootLoader.bin

cp ../../../../kernel/kernel.img  ./Image/

cp ../../../../kernel/resource.img  ./Image/

cp ../../../../rockdev/Image-rk3288/boot.img  ./Image/

cp ../../../../rockdev/Image-rk3288/misc.img  ./Image/

cp ../../../../rockdev/Image-rk3288/recovery.img  ./Image/

cp ../../../../rockdev/Image-rk3288/system.img  ./Image/

echo "Done"
