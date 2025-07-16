# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2195 device
$(call inherit-product, device/realme/RMX2195/device.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2195
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2195
PRODUCT_MODEL := realme c15

# PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMX2195

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX2195"

#TARGET_GAPPS_ARCH := ARM64
TARGET_BOOT_ANIMATION_RES := 720
