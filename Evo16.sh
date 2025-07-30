#! /bin/bash

# Remove Manifests
rm -rf .repo/local_manifests

# ROM Repo
--repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
# Sync Rom
#/opt/crave/resync.sh && \
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \

# Trees

# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evo16 device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Back-up device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush1/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
# --- Setup Build Environment ---
export BUILD_USERNAME=Failedmush
export BUILD_HOSTNAME=failed@Bit
export TZ=Asia/Tokyo
