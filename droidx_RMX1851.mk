#
# Copyright (C) 2019 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/RMX1851/device.mk)

# Inherit some common DroidxOS stuff.
$(call inherit-product, vendor/droidx/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := droidx_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := realme 3 Pro
PRODUCT_MANUFACTURER := Realme

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TD1A.221105.001/9104446:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TD1A.221105.001 9104446 release-keys" \
    PRODUCT_NAME="RMX1851"

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# droidxOS
DROIDX_BUILD_TYPE := OFFICIAL
DROIDX_GAPPS := CoreGapps
