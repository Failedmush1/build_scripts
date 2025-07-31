repo init -u https://github.com/Mi-Apollo/evo_manifest -b bka --git-lfs
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Evolutionx device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Evolution-X-Devices/device_xiaomi_sm8350-common -b bka device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/Evolution-X-Devices/vendor_xiaomi_sm8350-common -b bka vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/Evolution-X-Devices/hardware_xiaomi -b bka hardware/xiaomi
# Hardware Dolby
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.3 hardware/dolby
. build/envsetup.sh && \
lunch lineage_renoir-user && \
make installclean && 
m evolution
