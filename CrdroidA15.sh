repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid/android -b 15.0 -git-lfs -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Crdroid device/xiaomi/renoir 
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-22.2-test  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi 
git clone https://github.com/Failedmush1/hardware_dolby -b Dolby-Vision-1.3 hardware/dolby
git clone https://github.com/LineageOS/android_hardware_sony_timekeep -b lineage-22.2 hardware/sony/timekeep
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
wget https://raw.githubusercontent.com/306bobby-android/crDroid-build-signed-script/main/create-signed-env.sh
chmod +x create-signed-env.sh
./create-signed-env.sh
. build/envsetup.sh
brunch renoir user
