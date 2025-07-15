rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b vic -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evolutionx device/xiaomi/renoir && \
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b 16 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush/vendor_xiaomi_sm8350-commonv2 -b 16 vendor/xiaomi/sm8350-common && \
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \
git clone https://github.com/Infinity-X-Devices/android_hardware_xiaomi -b lineage-23.0 hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
. build/envsetup.sh && \
lunch lineage_renoir-user && make installclean && m evolution; \
