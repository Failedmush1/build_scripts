repo init -u https://github.com/PixelExperience-LEGACY-edition/manifest.git -b thirteen-plus --depth=1 --git-lfs
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush/device_xiaomi_renoirv2 -b thirteen device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/PixelExperience-Devices/device_xiaomi_sm8350-common -b thirteen device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-20 vendor/xiaomi/renoir && \
# Vendor camera
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
# Vendor common Tree
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Xiaomi-renoir-pe-Development/kernel_xiaomi_sm8350 -b thirteen kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Xiaomi-renoir-pe-Development/hardware_xiaomi -b thirteen hardware/xiaomi && \
#
