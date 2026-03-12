#!/bin/bash

# Create Directory
mkdir twrp
cd twrp

# Just to be on safer side
export OUT_DIR=out
ulimit -n 16000

# Init and Sync Repo
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1 && \
repo sync && \

# Clone TWRP tree
rm -rf device/xiaomi/renoir
git clone https://github.com/Failedmush1/twrp_device_xiaomi_renoir -b Test2 device/xiaomi/renoir

# Build Environment
set +e
export TW_INCLUDE_RECOVERY_INSTALLER=true
export TARGET_RECOVERY_DEVICE_MODULES="recovery_installer
export ALLOW_MISSING_DEPENDENCIES=true
source build/envsetup.sh
set -e
lunch twrp_renoir-eng && make clean && mka adbd bootimage

# Recovery Installer for 12.1
# Added to run automatically before the build starts
echo "Applying TWRP recovery installer patch (5445)..."

# Apply the specific 12.1 patch
repopick -g https://gerrit.twrp.me 5445

# Verification: Grep the fix as per your standard procedure
grep -r "recovery_installer" . | grep "5445
