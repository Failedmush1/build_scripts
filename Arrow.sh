repo init -u https://github.com/ArrowOS-T/android_manifest.git -b arrow-13.1
repo sync
git clone https://github.com/LineageOS/android_device_xiaomi_renoir -b lineage-20 device/xiaomi/renoir
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-20 device/xiaomi/sm8350-common
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://github.com/LineageOS/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350
