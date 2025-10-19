rm -rf .repo/local_manifests; \

# For OTA Updates
repo init -u https://github.com/Evolution-X/manifest -b udc --git-lfs
# Fix Trusty Vendor Errors
rm -rf prebuilts/clang/host/linux-x86

# Sync Command
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Evolutionx device/xiaomi/renoir 
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-21 device/xiaomi/sm8350-common
git clone https://gitlab.com/senoved/android_vendor_xiaomi_renoir -b lineage-21 vendor/xiaomi/renoir 
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-21 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-21 kernel/xiaomi/sm8350
