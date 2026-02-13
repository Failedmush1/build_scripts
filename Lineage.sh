repo init --depth=1 --no-repo-verify -u https://github.com/Los-Ext/android_manifest.git -b 16.1 --git-lfs -g default,-mips,-darwin,-notdefault
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j24 --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.1 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.1 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
rm -rf vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.1 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.1  kernel/xiaomi/sm8350  
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-23.1 hardware/xiaomi 
rm -rf hardware/dolby
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
. build/envsetup.sh
brunch renoir user
