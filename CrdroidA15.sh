repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android -b 15.0 -git-lfs -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir
rm -rf device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b 15.2-with-Dolby-vision-back-up device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
rm -rf  vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv4 -b lineage-22.2-backup vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-22.22 kernel/xiaomi/sm8350
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/Xiaomi 
git clone https://github.com/xiaomi-sm8450-mondrian/hardware_dolby  -b Dolby-Vision hardware/dolby
. build/envsetup.sh
brunch renoir user
rm -rf device/xiaomi/sm8350-common
git clone https://github.com/crdroidandroid/android_device_xiaomi_sm8350-common -b 15.0-vili device/xiaomi/sm8350-common
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
