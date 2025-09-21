repo init -u https://github.com/LineageOS/android.git -b lineage-22.2 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/device_xiaomi_renoir -b lineage-22.2 device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm7350-common/ -b lineage-22.2  device/xiaomi/sm7350-common
git clone https://github.com/Failedmush/Vendor-xiaomi-renoir -b lineage-22.2 vendor/xiaomi/renoir
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv4 -b lineage-22.2 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-22.2 kernel/xiaomi/sm8350
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b Dolby-Vision-1.3 hardware/dolby
kernel/xiaomi/sm8350/kernelsetup.sh
. build/envsetup.sh
breakfast renoir user && make installclean && mka bacon
