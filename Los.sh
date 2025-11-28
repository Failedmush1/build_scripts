repo init -u https://github.com/droid-legacy/android.git -b lineage-20.0 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir
rm -rf  device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-commonv2 -b lineage-20 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20-backup vendor/xiaomi/renoir
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
. build/envsetup.sh
lunch lineage_renoir-user
mka bacon
git clone https://gitlab.com/EndCredits/android_vendor_xiaomi_sm8350-common -b thirteen vendor/xiaomi/sm8350-common
rm -rf  vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv3 -b lineage-20 vendor/xiaomi/sm8350-common
