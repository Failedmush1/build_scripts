rm -rf .repo/local_manifests; \

# For OTA Updates
repo init --depth=1 --no-repo-verify -u https://github.com/VoltageOS/manifest -b 15-qpr2 -g default,-mips,-darwin,-notdefault && \

# Fix Trusty Vendor Errors
rm -rf prebuilts/clang/host/linux-x86

# Sync Command
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \

# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir && \

# Device Common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Back-up device/xiaomi/sm8350-common && \

# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \

# Vendor Common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush/android_kernel_xiaomi_sm8350 -b lineage-22.2 kernel/xiaomi/sm8350 && \

# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush1/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \
start command
