! /bin/bash

rm -rf .repo/local_manifests; \

repo init -u https://github.com/AxionAOSP/android.git -b lineage-23.0 --git-lfs; \

rm -rf prebuilts/clang/host/linux-x86; \

/opt/crave/resync.sh; \

rm -rf out/target/product/renoir; \
rm -rf device/xiaomi/renoir; \
rm -rf kernel/xiaomi/sm8350; \
rm -rf vendor/xiaomi/renoir; \
rm -rf hardware/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-22.2 -git-lfs -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh && \


# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b axion device/xiaomi/renoir && \
# Renoir Vendor
git clone https://github.com/Failedmush1/android_vendor_xiaomi_renoir -b main vendor/xiaomi/renoir && \
# Kernel
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b main kernel/xiaomi/sm8350 && \
# Hardware Xiaomi
git clone https://github.com/AxionAOSP-devices/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \

. build/envsetup.sh && \
axion renoir va user && make installclean && ax -b
