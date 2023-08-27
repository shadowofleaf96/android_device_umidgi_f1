#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from UMIDIGI F1 Play device
$(call inherit-product, device/umidigi/F1/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_F1
PRODUCT_DEVICE := F1
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := F1
PRODUCT_MANUFACTURER := A-gold

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Fingerprint
BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=F1 \
    PRODUCT_NAME=F1 \
    PRIVATE_BUILD_DESC="F1_EEA-user 9 PPR1.180610.011 root.20190718.110039 release-keys"

PRODUCT_CHARACTERISTICS := phone
