#!/bin/bash

# Device
export FOX_BRANCH="fox_12.1" #версия OF
export DT_LINK="https://github.com/OrangeFoxRecovery/device_xiaomi_garden-R.git -b fox_11.0" # дерево устройства

export DEVICE="garden" #кодовое имя вашего устройства
export OEM="xiaomi" #производитель вашего смартфона

# Build Target - что будем собирать
## "recoveryimage" - for A-Only Devices without using Vendor Boot - старые устройства
## "bootimage" - for A/B devices without recovery partition (and without vendor boot) - современные устройства
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher) - это нам не надо
export TARGET="adbd recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/OrangeFoxRecovery/Avatar.git misc"
)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Sushrut1101"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true #версия магиска которая будет добалена в наш рекавери

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
