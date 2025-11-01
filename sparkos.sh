repo init -u https://github.com/Spark-fork/manifest -b pyro-next
repo sync --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Sparkos device/xiaomi/renoir
git clone https://github.com/Spark-Devices/android_device_xiaomi_sm8350-common -b pyro device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir
git clone https://github.com/Spark-Devices/android_vendor_xiaomi_sm8350-common -b pyro vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
. build/env*
lunch spark_renoir-user
mka bacon -j$(nproc --all)
