#
# Copyright (C) 2019 The evolutionOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/realme/RMX1851/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_BRAND := Realme
PRODUCT_MODEL := realme 3 Pro
PRODUCT_MANUFACTURER := Realme

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Quick tap feature
TARGET_SUPPORTS_QUICK_TAP := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

BUILD_FINGERPRINT := "google/raven/raven:13/TP1A.220624.021/8877034:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 13 TP1A.220624.021 8877034 release-keys" \
    PRODUCT_NAME="RMX1851"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
