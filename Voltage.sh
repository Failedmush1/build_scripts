rm -rf .repo/local_manifests; \
repo init -u https://github.com/VoltageOS-staging/manifest -b 16 --git-lfs; \
rm -rf prebuilts/clang/host/linux-x86; \
/opt/crave/resync.sh; \

rm -rf out/target/product/renoir; \
rm -rf device/xiaomi/renoir; \
rm -rf kernel/xiaomi/renoir; \
rm -rf vendor/xiaomi/vendor; \
rm -rf hardware/xiaomi; \

git clone https://github.com/VoltageOS-staging/hardware_xiaomi hardware/xiaomi; \
. build/envsetup.sh; \
brunch renoir
