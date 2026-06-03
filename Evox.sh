repo init --depth=1 -u https://github.com/Evolution-X/manifest -b vic --git-lfs
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Evox device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi 
git clone https://github.com/Failedmush1/hardware_dolby -b Dolby-Vision-2.1 hardware/dolby
git clone https://github.com/LineageOS/android_hardware_sony_timekeep -b lineage-22.2 hardware/sony/timekeep
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b A13-A15-Los vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
. build/envsetup.sh
brunch renoir user
rm -rf hardware/dolby
git clone https://github.com/Failedmush1/hardware_dolby -b Renoir-Dolby hardware/dolby
