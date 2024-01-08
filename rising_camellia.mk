#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/camellia/device.mk)

# Inherit some common risingOS.
$(call inherit-product, vendor/rising/config/rising.mk)

# Inherit some Rising flags
RISING_CHIPSET := MT6833
RISING_MAINTAINER := diksy9
RISING_PACKAGE_TYPE := VANILLA AOSP
TARGET_ENABLE_BLUR := false
INLINE_KERNEL_BUILDING := true
TARGET_CORE_GMS := false
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_CORE_GMS_EXTRAS := false
TARGET_PREBUILT_PIXEL_LAUNCHER := false
TARGET_ENABLE_PIXEL_FEATURES := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := rising_camellia
PRODUCT_DEVICE := camellia
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="camellia-user 13 TP1A.220624.014 V14.0.6.0.TKTMIXM release-keys"

BUILD_FINGERPRINT := Redmi/camellia/camellia:12/SP1A.210812.016/V14.0.6.0.TKTMIXM:user/release-keys
