#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from andromeda device
$(call inherit-product, device/xiaomi/andromeda/device.mk)

PRODUCT_DEVICE := andromeda
PRODUCT_NAME := lineage_andromeda
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 3 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="andromeda-user 9 PKQ1.190321.001 V12.0.7.0.PEMEUXM release-keys"

BUILD_FINGERPRINT := Xiaomi/andromeda_eea/andromeda:9/PKQ1.190321.001/V12.0.7.0.PEMEUXM:user/release-keys
