#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rosemary/device.mk)

# Inherit some common CherishOS stuff.
TARGET_SUPPORTS_QUICK_TAP := true
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Vanilla build
#CHERISH_VANILLA := true

# Call recording
TARGET_SUPPORTS_CALL_RECORDING := true

# Blur
TARGET_ENABLE_BLUR := true

PRODUCT_NAME := cherish_rosemary
PRODUCT_DEVICE := rosemary
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10S

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rosemary-user 11 RP1A.200720.011 V12.5.16.0.RKLMIXM release-keys"

BUILD_FINGERPRINT := Redmi/rosemary_global/rosemary:11/RP1A.200720.011/V12.5.16.0.RKLMIXM:user/release-keys

# Maintainer Flags
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Nukx
