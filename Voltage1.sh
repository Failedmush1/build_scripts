repo init -u https://github.com/VoltageOS/manifest -b 16  --git-lfs
repo sync
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Voltagev2 device/xiaomi/renoir
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/android_vendor_xiaomi_renoir -b main vendor/xiaomi/renoir
# Vendor camera
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
# Vendor common Tree
git clone https://github.com/Failedmush1/android_vendor_xiaomi_renoir -b new vendor/xiaomi/sm8350-common 
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush1/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
. build/envsetup.sh
