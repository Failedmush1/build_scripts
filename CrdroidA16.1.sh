repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Crdroid device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.1 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.1 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.1 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.1  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.1 hardware/xiaomi 
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
. build/envsetup.sh
brunch renoir user
export GMS=true
