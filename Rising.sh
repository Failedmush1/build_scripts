repo init -u https://github.com/RisingOS-Revived/android -b sixteen-los --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
# Device Tree
rm -rf device/xiaomi
git clone https://github.com/Failedmush1/android_device_xiaomi_renoir -b main device/xiaomi/renoir && \
# Vendor Tree
rm -rf vendor/xiaomi
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
# Miui camera
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
# Vendor common Tree
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav3 vendor/xiaomi/sm8350-common && \
# Kernel Tree
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v3 -b lineage-23.0 kernel/xiaomi/sm8350 && \
# Hardware Tree
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi && \
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby && \
kernel/xiaomi/sm8350/kernelsetup.sh
repo init --git-lfs
rm -rf external/chromium-webview/prebuilt/*
rm -rf .repo/projects/external/chromium-webview/prebuilt/*.git
rm -rf .repo/project-objects/LineageOS/android_external_chromium-webview_prebuilt_*.git
repo sync
