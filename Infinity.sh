repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
rm -rf prebuilts/clang/host/linux-x86
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Infinity device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Infinity device/xiaomi/sm8350-common && \
# Vendor Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \
# Kernel Tree
git clone https://github.com/AOSP-for-vili/android_kernel_xiaomi_sm8350 -b lineage-22.2-ksunext kernel/xiaomi/sm8350 && \
# Hardware Tree
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
. build/envsetup.sh && 
lunch infinity_renoir-user && \
make installclean && \
mka bacon

git clone https://github.com/DerpFest-AOSP/android_hardware_lineage_compat -b 16
