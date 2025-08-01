#! /bin/bash

rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/LineageOS-Revived/android -b lineage-18.1 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/renoir-development/android_device_xiaomi_renoir -b lineage-18.1 device/xiaomi/renoir && \
git clone https://github.com/renoir-development/android_device_xiaomi_sm8350-common -b lineage-18.1 device/xiaomi/sm8350-common && \
git clone https://gitlab.com/AndroPlus/proprietary_vendor_renoir -b lineage-18.1 vendor/xiaomi/renoir && \
git clone https://github.com/renoir-development/android_kernel_xiaomi_sm8350 -b staging/lineage-18.1 kernel/xiaomi/sm8350 && \
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-18.1 hardware/xiaomi && \
. build/envsetup.sh && \
# brunch configuration
lunch lineage_renoir-userdebug && \
# Run
mka bacon
