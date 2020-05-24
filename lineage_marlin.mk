# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_marlin
PRODUCT_DEVICE := marlin
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on msm8996
PRODUCT_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:8.1.0/OPM1.171019.021/4565141:user/release-keys

$(call inherit-product, device/google/marlin/device-marlin.mk)
$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
