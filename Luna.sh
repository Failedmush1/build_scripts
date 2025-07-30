# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Luna device/xiaomi/renoir && \

# Device Common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Back-up device/xiaomi/sm8350-common && \

# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \

# Vendor Common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \

# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi && \
start command
lunch lineage_renoir-user  
make installclean 
m lunaris
