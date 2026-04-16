repo init -u https://github.com/crdroidandroid/android.git -b 16.0 --git-lfs --no-clone-bundle --depth=1
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b CrdroidA16 device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.2-test  kernel/xiaomi/sm8350  
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/Failedmush1/hardware_dolby -b Dolby-Vision-2.1 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b lineageos vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
. build/envsetup.sh
brunch renoir user
rm -rf vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2-test vendor/xiaomi/sm8350-common
