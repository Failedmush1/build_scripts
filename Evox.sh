rm -rf .repo/local_manifests; \
rm -rf {device,vendor,kernel,hardware}/xiaomi; \

#linux-x86 remove 
rm -rf prebuilts/clang/host/linux-x86

# repo init rom
repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="
# Build Sync
/opt/crave/resync.sh
echo "============="
echo "Sync success"
echo "============="

# Sync Trees
git clone https://github.com/Failedmush/android_device_xiaomi_renoir -b Evolutionx device/xiaomi/renoir
git clone https://github.com/LineageOS/android_device_xiaomi_sm8350-common -b lineage-22.2 device/xiaomi/sm8350-common
git clone https://github.com/Failedmush/proprietary_vendor_xiaomi_renoir -b lineage-22.2 vendor/xiaomi/renoir
git clone https://github.com/TheMuppets/proprietary_vendor_xiaomi_sm8350-common -b lineage-22.2 vendor/xiaomi/sm8350-common
git clone https://github.com/RobertGarciaa/android_kernel_xiaomi_sm8350 -b 15 kernel/xiaomi/sm835
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-22.2 hardware/xiaomi

# Set up build environment
. build/envsetup.sh
# Lunch
lunch lineage_renoir-bp1a-userdebug
echo "============="
echo "lunch done"
echo "============="
 mevolution
 echo "============="
echo "Rom built"
echo "============="
