repo init -u https://github.com/RisingOS-LTS/manifest -b thirteen --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b RisingA13 device/xiaomi/renoir
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b lineage-20 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT kernel/xiaomi/sm8350
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b A13-aosp vendor/extra/keys
cd vendor/extra/keys
./keys.sh
. build/envsetup.sh
lunch lineage_renoir-user
mka bacon
