rm -rf .repo/local_manifests; \
repo init -u https://github.com/WitAqua/manifest.git -b 16.0 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Witaqua device/xiaomi/renoir && \
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b Axionv2 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350 
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi 
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
kernel/xiaomi/sm8350/kernelsetup.sh
. build/envsetup.sh
