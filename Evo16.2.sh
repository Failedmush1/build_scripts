rm -rf .repo/local_manifests; \

# For OTA Updates
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b bka -g default,-mips,-darwin,-notdefault && \

# Fix Trusty Vendor Errors
rm -rf prebuilts/clang/host/linux-x86

# Sync Command
/opt/crave/resync.sh && \

# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evo16 device/xiaomi/renoir && \

# Device Common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Back-up device/xiaomi/sm8350-common && \

# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \

# Vendor Common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-23.0 vendor/xiaomi/sm8350-common && \

# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b lineage-23.0 kernel/xiaomi/sm8350 && \

# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Failedmush1/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi && \

# Build Environment
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \

# Lunch Commands
lunch lineage_renoir-user && make installclean && m evolution; \
