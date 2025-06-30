rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingOS-Revived/android -b qpr2 -g default,-mips,-darwin,-notdefault && \
/opt/crave/resync.sh && \
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b rising1 device/xiaomi/renoir && \
git clone https://gitlab.com/renoir1/android_vendor_xiaomi_renoir.git -b main vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b main kernel/xiaomi/sm8350 && \
git clone https://github.com/Failedmush1/hardware_xiaomi -b fifteen hardware/xiaomi && \
export BUILD_USERNAME=Failedmush; \
export BUILD_HOSTNAME=crave; \
export TZ=Asia/Tokyo; \
# Vanilla Build
. build/envsetup.sh && \
riseup renoir user && make installclean && rise b; \
rm -rf out/target/product/vanilla && \
cd out/target/product && mv renoir vanilla && cd ../../..; \
