#! /bin/bash

rm -rf .repo/local_manifests && \
rm -rf {device,vendor,kernel,hardware}/xiaomi && \
rm -rf packages/apps/ViPER4AndroidFX && \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b qpr2 -git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b rising device/xiaomi/renoir && \
git clone https://gitlab.com/xiaomi_renoir/android_vendor_xiaomi_renoir -b main vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b main kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush1/hardware_xiaomi -b fifteen hardware/xiaomi && \
. build/envsetup.sh; \
riseup renoir user && \
rise b; \
rm -rf out/target/product/vanilla && rm -rf out/target/product/gapps; \
cd out/target/product && mv renoir vanilla && cd ../../..; \
cd device/xiaomi/renoir && rm lineage_renoir.mk && mv gapps.txt lineage_renoir.mk && cd ../../..; \
. build/envsetup.sh; \
riseup renoir user && rise b; \
cd out/target/product && mv renoir gapps && cd ../../..; \
