repo init -u https://github.com/Project-Mist-OS/manifest -b 16 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Mistos device/xiaomi/renoir 
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b Axionv2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b Lineage-23.0 kernel/xiaomi/sm8350 
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi 
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
.build/envsetup.sh
mistify renoir user
mist b
