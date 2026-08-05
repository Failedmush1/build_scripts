repo init -u https://github.com/HertzifyOS/android_manifest.git -b 17 --git-lfs
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b HertzifyOS device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-24.0 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-24.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-17.0 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-24.0 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b Resuki  kernel/xiaomi/sm8350  
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/failedmush1/hardware_dolby -b Dolby-Vision-2.6 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b lineageos vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
cd -
