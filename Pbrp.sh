#!/bin/bash

# Create Directory for OrangeFox
mkdir PBRP
cd PBRP

# Just to be on safer side
export OUT_DIR=out
ulimit -n 16000

repo init -u https://github.com/PitchBlackRecoveryProject/android_bootable_recovery -b android-12.1 && \
repo sync && \

# Clone OrangeFox tree
cd PBRP/android_bootable_recovery
rm -rf device/xiaomi/renoir
git clone https://github.com/Failedmush1/twrp_device_xiaomi_renoir -b fox-12.1-miui ./device/xiaomi/renoir

# Build Environment
set +e
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
set -e
lunch twrp_renoir-eng && make clean && mka adbd bootimage
