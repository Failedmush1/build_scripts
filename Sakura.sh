 repo init --depth=1 -u https://github.comProjectSakuraa/android.git -b 16.2 --git-lfs
 repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
 git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Crdroidv2 device/xiaomi/renoir
 git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2test device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2test vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b KSUNEXT  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b Dolby-Vision-2.1 hardware/dolby
source build/envsetup.sh
lunch lineage_renoir-bp4a-user & m bacon
 git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2v2 device/xiaomi/sm8350-common 
