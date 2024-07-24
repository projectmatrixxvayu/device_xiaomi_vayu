#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common AOSP configurations
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_NAME := lineage_vayu
PRODUCT_SYSTEM_NAME := vayu_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.3.0.TJUMIXM release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME) \
    RISING_MAINTAINER="momenabdulrazekali" \
    RISING_CHIPSET="Snapdragon860"

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

#RisingOS
TARGET_ENABLE_BLUR := true
WITH_GMS := true
RISING_MAINTAINER := momenabdulrazekali
RISING_BUILDTYPE := UNOFFICIAL
