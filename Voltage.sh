repo init -u https://github.com/VoltageOS/manifest.git -b 16.2 --git-lfs
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Voltageos device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-23.2 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.2 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-16.1 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.2 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.2  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-23.2 hardware/xiaomi 
git clone https://github.com/Failedmush/hardware_dolby -b Dolby-Vision-1.2 hardware/dolby
git clone https://github.com/Failedmush1/vendor_bcr -b main vendor/bcr
rm -rf vendor/voltage-priv/keys
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b 16.2 vendor/voltage-priv/keys
. build/envsetup.sh
brunch renoir Voltageos
rm -rf  device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b test device/xiaomi/sm8350-common
