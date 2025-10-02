rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \
repo init --depth=1 --no-repo-verify -u https://github.com/SuperiorOS/manifest -b fifteen-los -m stable/latest.xml -g default,-mips,-darwin,-notdefault && \
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
git clone https://github.com/Failedmush/device_xiaomi_sm8350-common -b 15.2-with-Dolby-vision device/xiaomi/sm8350-common
git clone https://gitlab.com/senoved/android_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/Failedmush1/proprietary_vendor_xiaomi_sm8350-commonv4 -b lineage-22.2 vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush1/android_kernel_xiaomi_sm8350v2 -b 15-back-up  kernel/xiaomi/sm8350
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi
git clone https://github.com/swiitch-OFF-Lab/hardware_dolby -b Dolby-Vision-1.3 hardware/dolby
. build/envsetup.sh
breakfast renoir user && make installclean && m superior 
