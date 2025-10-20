repo init -u https://github.com/RisingOS-LTS/manifest -b thirteen --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Risingos device/xiaomi/renoir
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-20 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
