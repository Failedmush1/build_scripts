repo init -u https://github.com/VoltageOS/manifest.git -b 15-qpr2 --git-lfs
rm -rf prebuilts/clang/host/linux-x86
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags && \
git clone https://github.com/Failedmush1/android_device_xiaomi_renoirv2 -b Voltageos device/xiaomi/renoir && \
git clone https://github.com/Failedmush1/android_device_xiaomi_sm8350-common -b Voltage device/xiaomi/sm8350-common && \
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir && \
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common && \
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm8350 && \
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi
. build/envsetup.sh
