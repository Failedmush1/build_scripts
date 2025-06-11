rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/ProjectMatrixx/android -b 15.0 --git-lfs -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b matrixx device/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_vendor_xiaomi_renoir -b main vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b main kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush1/hardware_xiaomi -b fifteen  hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
# Vanilla Build
. build/envsetup.sh && \
breakfast renoir user && mka bacon; \
rm -rf out/target/product/vanilla && rm -rf out/target/product/gapps; \
cd out/target/product && mv renoir vanilla && cd ../../..; \
# Gapps Build
cd device/xiaomi/renoir && rm lineage_renoir.mk && mv gapps.txt lineage_renoir.mk && cd ../../..; \
. build/envsetup.sh; \
breakfast renoir user && mka bacon; \
cd out/target/product && mv renoir gapps && cd ../../..; \
