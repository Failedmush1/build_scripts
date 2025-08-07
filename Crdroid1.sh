rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android -b 15.0 -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b lineage-22.2 device/xiaomi/renoir && \
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b lineage-23.0 kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
start command 
