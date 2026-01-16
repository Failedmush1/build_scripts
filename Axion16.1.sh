repo init --depth=1 --no-repo-verify -u https://github.com/AxionAOSP/android -b lineage-23.1 --git-lfs -g default,-mips,-darwin,-notdefault 
rm -rf prebuilts/clang/host/linux-x86
repo sync
rm -rf device/xiaomi/renoir
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Axion device/xiaomi/renoir 
rm -rf device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.1 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.1 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
rm -rf vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.1 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.1 kernel/xiaomi/sm8350 
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.1 hardware/xiaomi 
rm -rf hardware/dolby
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
. build/envsetup.sh  && \
axion renoir va user && make installclean && ax -b
axion renoir gms core user  && make installclean && ax -b
rm -rf hardware/dolby
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
rm -rf device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b lineage-23.1 device/xiaomi/sm8350-common
rm -rf vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv2 -b lineage-23.1 vendor/xiaomi/sm8350-common 
rm -rf kernel/xiaomi/sm8350
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b Sukisu  kernel/xiaomi/sm8350 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.1-test  kernel/xiaomi/sm8350 
