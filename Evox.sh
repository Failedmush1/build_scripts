rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b vic -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evolutionx device/xiaomi/renoir && \
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
# Vanilla Build
. build/envsetup.sh && \
lunch lineage_renoir-user && make installclean && m evolution; \
rm -rf out/target/product/vanilla && rm -rf out/target/product/gapps; \
cd out/target/product && mv renoir vanilla && cd ../../..; \
# Gapps Build
cd device/xiaomi/renoir && rm lineage_renoir.mk && mv gapps.txt lineage_renoir.mk && cd ../../..; \
. build/envsetup.sh; \
lunch lineage_renoir-user && make installclean && m evolution; \
cd out/target/product && mv renoir gapps && cd ../../..; \
