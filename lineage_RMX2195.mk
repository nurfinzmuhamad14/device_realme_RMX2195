#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2195 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2195
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2195
PRODUCT_MODEL := Realme C15 Qualcomm

PRODUCT_GMS_CLIENTID_BASE := android-realme

TARGET_VENDOR_PRODUCT_NAME := RMX2195
TARGET_VENDOR_DEVICE_NAME := RMX2195

# Build Info
BUILD_FINGERPRINT := "google/coral/coral:12/SQ3A.220705.003.A1/8672226:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2195" \
    PRIVATE_BUILD_DESC="bengal-user 11 QKQ1.200209.002 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
