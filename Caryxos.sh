repo init -u https://github.com/CalyxOS/platform_manifest -b android16-qpr2     --git-lfs
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Calyxos device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT  kernel/xiaomi/sm8350  
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/Failedmush1/hardware_dolby -b Dolby-Vision-2.1 hardware/dolby
. build/envsetup.sh
brunch renoir user
