repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
rm -rf prebuilts/clang/host/linux-x86
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Infinity device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b Infinityv2 device/xiaomi/sm8350-common && \
# Vendor Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Vendor Miui camera
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common && \
# Kernel Tree
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
kernel/xiaomi/sm8350/kernelsetup.sh
. build/envsetup.sh && 
lunch infinity_renoir-user && \
make installclean && \
mka bacon
