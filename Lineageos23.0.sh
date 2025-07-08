rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/crdroidandroid -b lineage-22.2 -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/LineageOS/android_device_xiaomi_renoir -b lineage-22.2  device/xiaomi/renoir && \
git clone https://gitlab.com/xiaomi_renoir/android_vendor_xiaomi_renoir -b lineage-22.2  vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-22.2  kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush1/hardware_xiaomi -b lineage-22.2  hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
# Vanilla Build
. build/envsetup.sh && \
renoir breakfast user && make installclean && mka bacon; \
rm -rf out/target/product/vanilla && \
cd out/target/product && mv renoir vanilla && cd ../../..; \
