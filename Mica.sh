repo init -u https://github.com/Project-Mica/manifest -b 16-qpr1
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j8 --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Mica device/xiaomi/renoir 
# Device common Tree
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b Mica device/xiaomi/sm8350-common 
# Vendor Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir 
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.1 vendor/xiaomi/sm8350-common 
# Kernel Tree
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 
# Hardware Tree
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
rm -rf hardware/lineage/compat
git clone https://github.com/AxionAOSP/android_hardware_lineage_compat -b lineage-23.0 hardware/lineage/compat
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
cd vendor/gms
bash generate-gms.sh
. build/envsetup.sh
lunch mica_renoir-bp3a-user
m mica-release
