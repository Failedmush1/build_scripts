repo init -u https://github.com/AICP/platform_manifest.git -b v15.0 --git-lfs --depth=1
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Aicp device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT  kernel/xiaomi/sm8350  
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-22.2 hardware/xiaomi 
git clone https://github.com/Failedmush1/hardware_dolby -b Dolby-Vision-2.1 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b lineageos vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
. build/envsetup.sh
brunch renoir user
