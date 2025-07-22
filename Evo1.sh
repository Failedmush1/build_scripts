rm -rf .repo/local_manifests; \

# For OTA Updates
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b vic -g default,-mips,-darwin,-notdefault && \

# Fix Trusty Vendor Errors
rm -rf prebuilts/clang/host/linux-x86

# Sync Command
/opt/crave/resync.sh && \

# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evolutionx device/xiaomi/renoir && \

# Device Common Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common && \

# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \

# Vendor Common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \

# Miui camera
git clone https://github.com/PixelOS-Devices/vendor_xiaomi_camera-lisa -b fourteen vendor/xiaomi/camera && \

# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \

# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \

# Dolby Tree
rm -rf hardware/dolby 
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.3 hardware/dolby && \

# Build Environment
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \

# Lunch Commands
lunch lineage_renoir-user && make installclean && m evolution; \
