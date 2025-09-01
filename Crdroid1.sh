rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init -u https://github.com/crdroidandroid/android -b 16.0 --git-lfs --no-clone-bundle
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b lineage-22.2 device/xiaomi/renoir && \
# Device common Tree
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b Axionv2 device/xiaomi/sm8350-common && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby
kernel/xiaomi/sm8350/kernelsetup.sh
# =============================
#  Build: Vanilla → Gapps
# =============================

# --- Vanilla Build ---
echo "===== Starting Vanilla Build ====="
. build/envsetup.sh && \
breakfast renoir user && \
make installclean && \
mka bacon && \
mv device/xiaomi/renoir/lineage_renoir.mk device/xiaomi/renoir/vanilla.txt && \
echo "===== Handling Vanilla Output ====="
mv out/target/product/renoir out/target/product/renoir\

# --- Gapps Build ---
echo "===== Setting up for Gapps Build ====="
mv device/xiaomi/renoir/gapps.txt device/xiaomi/renoir/lineage_renoir.mk && \
make installclean && \
mka bacon -j$(nproc --all) && \
mv device/xiaomi/renoir/lineage_renoir.mk device/xiaomi/renoir/gapps.txt && \

echo "===== Handling Gapps Output ====="
mv out/target/product/gapps out/target/product/gapps && \

# --- Restore Vanilla ---
mv device/xiaomi/renoir/vanilla.txt device/xiaomi/renoir/lineage_renoir.mk && \

echo "===== All builds completed successfully! ====="
