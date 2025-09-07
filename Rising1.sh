repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b sixteen-aosp -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Risingos device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b Axionv2 device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Miui camera
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi && \
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby && \
kernel/xiaomi/sm8350/kernelsetup.sh
. build/envsetup.sh
riseup renoir user && make installclean && rise b; \
