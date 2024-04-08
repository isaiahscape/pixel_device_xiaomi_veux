#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)


TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP := true
USE_PIXEL_CHARGER := true

# Cherish-ified
CHERISH_BUILD_TYPE := UNOFFICIAL
CHERISH_MAINTAINER := isaiahscape
CHERISH_CHIPSET := Snapdragon 695 5G
CHERISH_BATTERY := 5000mAh
CHERISH_DISPLAY := 1080x2400

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116SG
PRODUCT_NAME := aosp_veux
PRODUCT_SYSTEM_NAME := veux_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux_global-user 13 TKQ1.221114.001 V14.0.6.0.TKCMIXM release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/veux_global/veux:13/TKQ1.221114.001/V14.0.6.0.TKCMIXM:user/release-keys
