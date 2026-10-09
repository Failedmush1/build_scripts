repo init -u https://github.com/LineageOS/android.git -b lineage-24.0 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync 
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b lineage-24.0 device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-24.0 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-24.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-17.0 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-24.0 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b Resuki  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-24.0 hardware/xiaomi 
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-2.6 hardware/dolby
git clone https://github.com/MindTheGapps/vendor_gapps -b cinnamonbun vendor/gapps
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b lineageos vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
. build/envsetup.sh
brunch renoir user
