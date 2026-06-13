 repo init --depth=1 -u https://github.com/ProjectSakura/android.git -b 16.2 --git-lfs
 repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
 git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b sakura device/xiaomi/renoir
 git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/failedmush1/hardware_dolby -b Dolby-Vision-2.6 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b lineageos vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
source build/envsetup.sh
brunch renoir user
lunch lineage_renoir-bp4a-user & m bacon
 git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2v2 device/xiaomi/sm8350-common 
