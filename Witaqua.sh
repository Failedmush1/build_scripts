rm -rf .repo/local_manifests; \
repo init -u https://github.com/WitAqua/manifest.git -b 15.2 --git-lfs
rm -rf prebuilts/clang/host/linux-x86; \
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
rm -rf out/target/product/renoir; \
rm -rf device/xiaomi/renoir; \
rm -rf kernel/xiaomi/sm8350; \
rm -rf vendor/xiaomi/renoir; \
rm -rf hardware/xiaomi; \
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evolutionx device/xiaomi/renoir && \
git clone https://github.com/WitAqua-Devices/device_xiaomi_sm8350-common -b 15.2 device/xiaomi/sm8350-common && \
git clone https://gitlab.com/senoved/android_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/AOSP-for-vili/vendor_xiaomi_sm8350-common -b lineage-23 vendor/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi && \
git clone https://github.com/Failedmush/vendor_xiaomi_camera-renoir -b fourteen vendor/xiaomi/user
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \
breakfast renoir user && make installclean && mka bacon; \
