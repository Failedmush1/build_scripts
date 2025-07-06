#! /bin/bash
#! /bin/bash

rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-22.2 --git-lfs -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush/device_xiaomi_renoir -b Axion device/xiaomi/renoir && \
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b 15.2 device/xiaomi/sm8350-common && \
git clone https://gitlab.com/senoved/android_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://gitlab.com/senoved/android_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/kernel_xiaomi_sm8350 -b 15.2 kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush/hardware_xiaomi -b 15.2 hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \
# Vanilla Build
. build/envsetup.sh && \
axion renoir va user && make installclean && ax -b; \
rm -rf out/target/product/vanilla && rm -rf out/target/product/gapps; \
cd out/target/product && mv renoir vanilla && cd ../../..; \
# Gapps Build
. build/envsetup.sh; \
axion renoir gms pico user && make installclean && ax -b; \
cd out/target/product && mv renoir gapps && cd ../../..; \
