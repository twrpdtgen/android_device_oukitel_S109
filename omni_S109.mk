#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S109 device
$(call inherit-product, device/oukitel/S109/device.mk)

PRODUCT_DEVICE := S109
PRODUCT_NAME := omni_S109
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := WP22
PRODUCT_MANUFACTURER := oukitel

PRODUCT_GMS_CLIENTID_BASE := android-oukitel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_k79v1_64-user 12 SP1A.210812.016 1rck61v164bspP70 release-keys"

BUILD_FINGERPRINT := OUKITEL/S109_EEA/S109:12/SP1A.210812.016/1700810948:user/release-keys
