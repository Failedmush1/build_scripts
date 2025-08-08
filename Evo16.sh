repo init -u https://github.com/Evolution-X/manifest -b bka --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Evolutionx device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b 16.0 device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Miui Camera
git clone https://github.com/Failedmush/Miui-camera-renoir -b lineage-22.2 vendor/xiaomi/miuicamera-renoir
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi
. build/envsetup.sh
