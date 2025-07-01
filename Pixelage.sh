#! /bin/bash

rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/ProjectPixelage/android_manifest -b 15 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush/android_device_xiaomi_renoirv2 -b 15 device/xiaomi/renoir && \
git clone https://github.com/RobertGarciaa/device_xiaomi_sm8350-common -b 15 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/vendor_xiaomi_renoir -b 15 vendor/xiaomi/renoir && \
git clone https://github.com/RobertGarciaa/vendor_xiaomi_sm8350-common -b 15 vendor/xiaomi/sm8350-common && \
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \
git clone https://github.com/RobertGarciaa/hardware_xiaomi -b 15 hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export PIXELAGE_BUILD="renoir"
export TZ=Asia/Tokyo; \
source build/envsetup.sh && \
# brunch configuration
lunch pixelage_renoir-bp1a-userdebug && \
# Clean
make installclean
# Run
mka bacon
