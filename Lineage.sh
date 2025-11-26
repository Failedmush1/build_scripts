repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b Axionv2 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common && \
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi && \
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby && \
rm -rf hardware/lineage/compat
git clone https://github.com/AxionAOSP/android_hardware_lineage_compat -b lineage-23.0 hardware/lineage/compat
. build/envsetup.sh
breakfast renoir user & mka bacon
