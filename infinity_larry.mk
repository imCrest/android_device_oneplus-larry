#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from larry device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_MAINTAINER := SUJΛL
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
INFINITY_OTA_URL := https://raw.githubusercontent.com/imCrest/Infinityx-Release/main/larry.json

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=OnePlus Nord CE 3 Lite \
    ro.infinity.soc=Snapdragon 695 5G \
    ro.infinity.battery=5000 mAh \
    ro.infinity.display=1080 x 2400, 120 Hz \
    ro.infinity.camera=108MP + 2MP + 2MP + 16MP

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_larry
PRODUCT_DEVICE := larry
PRODUCT_BRAND := oneplus
PRODUCT_MODEL := CPH2467
PRODUCT_MANUFACTURER := oneplus

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP5958L1-user 15 UKQ1.230924.001 T.R4T2.24da738-26996-834f2 release-keys" \
    BuildFingerprint=OnePlus/CPH2467/OP5958L1:15/UKQ1.230924.001/T.R4T2.24da738-26996-834f2:user/release-keys \
    DeviceName=OP5958L1 \
    DeviceProduct=OP5958L1 \
    SystemDevice=OP5958L1 \
    SystemName=OP5958L1
