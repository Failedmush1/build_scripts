#! /bin/bash

rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-23.0 --git-lfs -g default,-mips,-darwin,-notdefault 
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Axion device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b Axionv2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi 
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
. build/envsetup.sh  && \
axion renoir va user && make installclean && ax -b
axion renoir gms core && make installclean && ax -b
