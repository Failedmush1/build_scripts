repo init -u https://github.com/Kyura-Ground/android -b 13.0 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-20 device/xiaomi/renoir
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-commonv2 -b lineage-20 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir
rm -rf  vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv3 -b lineage-20 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
. build/envsetup.sh
lunch lineage_renoir-user
m bacon
rm -rf  device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b evo-13-dv device/xiaomi/sm8350-common
rm -rf  vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common
