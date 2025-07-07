rm -rf .repo/local_manifests; \
repo init -u https://github.com/VoltageOS-staging/manifest -b 16 --git-lfs; \
rm -rf prebuilts/clang/host/linux-x86; \
/opt/crave/resync.sh; \

rm -rf out/target/product/renoir; \
rm -rf device/xiaomi/renoir; \
rm -rf kernel/xiaomi/renoir; \
rm -rf vendor/xiaomi/vendor; \
rm -rf hardware/xiaomi; \
# Device Tree
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b voltage device/xiaomi/renoir && \
# Vendor tree
git clone https://github.com/Failedmush1/android_vendor_xiaomi_renoir -b main vendor/xiaomi/renoir && \
# Kernel
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b main kernel/xiaomi/sm8350 && \
# Hardware Xiaomi
git clone https://github.com/VoltageOS-staging/hardware_xiaomi hardware/xiaomi; \
. build/envsetup.sh; \
brunch renoir
