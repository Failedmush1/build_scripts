repo init -u https://github.com/VoltageOS/manifest.git -b 17 --git-lfs --depth=1
repo sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b Voltageos device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-common -b lineage-24.0 device/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-24.0 vendor/xiaomi/renoir 
git clone https://github.com/Failedmush1/vendor_xiaomi_camera -b Renoir-17.0 vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-24.0 vendor/xiaomi/sm8350-common 
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b Resuki  kernel/xiaomi/sm8350  
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-24.0 hardware/xiaomi 
git clone https://github.com/failedmush1/hardware_dolby -b Dolby-Vision-2.6 hardware/dolby
rm -rf vendor/voltage-priv/keys
git clone https://github.com/Failedmush1/vendor_voltage-priv_keys -b Voltageos vendor/voltage-priv/keys
cd vendor/voltage-priv/keys
./keys.sh
cd -
. build/envsetup.sh
brunch renoir user
rm -rf device/xiaomi/sm8350-common 
git clone https://github.com/Spanish-or-Vanish/android_device_xiaomi_sm8350-common -b 16 device/xiaomi/sm8350-common 
rm -rf vendor/xiaomi/sm8350-common
git clone https://github.com/Spanish-or-Vanish/vendor_xiaomi_sm8350-common -b new vendor/xiaomi/sm8350-common
