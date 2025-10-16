rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init -u https://github.com/SuperiorOS/manifest.git -b sixteen-los --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync --force-sync
repo init --git-lfs
rm -rf external/chromium-webview/prebuilt/*
rm -rf .repo/projects/external/chromium-webview/prebuilt/*.git
rm -rf .repo/project-objects/LineageOS/android_external_chromium-webview_prebuilt_*.git
repo init --depth=1 --no-repo-verify -u https://github.com/SuperiorOS/manifest -b fifteen-los -m stable/latest.xml -g default,-mips,-darwin,-notdefault && \
rm -rf prebuilts/clang/host/linux-x86
repo sync --force-sync
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b SuperiorOS device/xiaomi/renoir
git clone https://github.com/Failedmush1/device_xiaomi_sm8350-commonv2 -b Axionv2 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_renoir -b lineage-23.0 vendor/xiaomi/renoir && \
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-common -b Lunav2 vendor/xiaomi/sm8350-common && \
rm -rf kernel/xiaomi
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350 -b lineage-23.0 kernel/xiaomi/sm8350 && \
rm -rf hardware/xiaomi
git clone https://github.com/WitAqua-Devices/hardware_xiaomi -b 16.0 hardware/xiaomi && \
rm -rf hardware/dolby
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b sony-1.2 hardware/dolby && \ 
rm -rf vendor/gapps
git clone https://gitlab.com/MindTheGapps/vendor_gapps -b baklava vendor/gapps
. build/envsetup.sh
breakfast renoir user && make installclean && m superior 
