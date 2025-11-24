repo init -u https://github.com/AOSPA/manifest -b uvite
repo sync --current-branch --no-tags -j4
git clone https://github.com/pa-lahaina/android_device_xiaomi_renoir -b uvite device/xiaomi/renoir
git clone https://github.com/pa-lahaina/android_device_xiaomi_sm8350-common -b uvite device/xiaomi/sm8350-common
git clone https://gitlab.com/EndCredits/android_vendor_xiaomi_renoir -b uvite vendor/xiaomi/renoir
git clone https://github.com/pa-lahaina/android_vendor_xiaomi_sm8350-common -b topaz-wip vendor/xiaomi/sm8350-common
git clone https://github.com/Failedmush/vendor_xiaomi_camera -b Renoir vendor/xiaomi/camera
git clone https://github.com/AOSPA/android_hardware_xiaomi -b uvite hardware/xiaomi
git clone https://github.com/pa-lahaina/android_kernel_xiaomi_sm8350 -b uvite kernel/xiaomi/sm8350
 ./rom-build.sh
