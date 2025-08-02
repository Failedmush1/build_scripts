# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Evolutionx device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/AOSP-for-vili/device_xiaomi_sm8350-common -b derp-16 device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b test vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/AOSP-for-vili/vendor_xiaomi_sm8350-common -b lineage-23 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/AOSP-for-vili/android_kernel_xiaomi_sm8350 -b lineage-22.2-ksunext kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi
