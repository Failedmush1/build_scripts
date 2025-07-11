! /bin/bash

rm -rf .repo/local_manifests; \
repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-22.2 -git-lfs -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh; \
rm -rf out/target/product/renoir; \
rm -rf device/xiaomi/renoir; \
rm -rf kernel/xiaomi/sm8350; \
rm -rf vendor/xiaomi/renoir; \
rm -rf hardware/xiaomi; \
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Axion1 device/xiaomi/renoir && \
# Vendor tree
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
# kernel
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \
# Hardware Xiaomi
git clone https://github.com/Failedmush1/hardware_xiaomi -b fifteen hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \
axion renoir va user && make installclean && ax -b
