repo init -u https://github.com/crdroidandroid/android.git -b 16.0-qpr0 --git-lfs --no-clone-bundle
rm -rf prebuilts/clang/host/linux-x86
repo sync
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Crdroid device/xiaomi/renoir 
# Device common Tree
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.0 device/xiaomi/sm8350-common 
# Vendor Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir 
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common 
# Kernel Tree
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 
# Hardware Tree
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
. build/envsetup.sh
brunch renoir user
export GMS=true
