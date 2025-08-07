repo init -u https://github.com/DerpFest-AOSP/android_manifest.git -b 16 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Derp16 device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b lineage-23.0 device/xiaomi/sm8350-common && \
# Vendor Tree
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \
# miui camera
git clone https://github.com/whyredfire/MiuiCamera-lisa -b master vendor/xiaomi/camera
# Kernel Tree
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi
. build/envsetup.sh
