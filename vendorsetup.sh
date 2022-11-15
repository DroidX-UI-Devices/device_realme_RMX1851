#!/bin/bash

banner(){
clear
echo "================================"
echo "|                              |"
echo "|   Realme 3 Pro Setup Script  |"
echo "|       Branch: Lineage        |"
echo "|    Maintained By: Cykeek     |"
echo "|                              |"
echo "================================"
}

banner 2>1

# Vendor
banner 2>1
echo "Clonning Vendor..."
git clone https://github.com/Cykeek-Labs/vendor_realme_RMX1851 -b 13 vendor/realme/RMX1851

# Kernel
banner 2>1
echo "Cloning Kernel..."
git clone https://github.com/Cykeek-Labs/kernel_realme_sdm710 kernel/realme/sdm710

# RealmeParts
banner 2>1
echo "Cloning RealmeParts..."
git clone https://github.com/Cykeek-Labs/packages_apps_realmeparts packages/apps/RealmeParts

# Clone Hals
banner 2>1
echo "Cleaning prebuilt Hals...."
rm -rf hardware/qcom-caf/sdm845/audio
rm -rf hardware/qcom-caf/sdm845/media
rm -rf hardware/qcom-caf/sdm845/display
sleep 1s
echo "Cloning hals from Lineage..."
git clone https://github.com/LineageOS/android_hardware_qcom_audio hardware/qcom-caf/sdm845/audio --depth=1
git clone https://github.com/LineageOS/android_hardware_qcom_media hardware/qcom-caf/sdm845/media --depth=1
git clone https://github.com/LineageOS/android_hardware_qcom_display hardware/qcom-caf/sdm845/display --depth=1
