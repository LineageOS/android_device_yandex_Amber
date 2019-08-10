# 
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Device was launched with O-MR1
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from Amber device
$(call inherit-product, device/yandex/Amber/device.mk)

PRODUCT_NAME := lineage_Amber
PRODUCT_BRAND := Yandex
PRODUCT_DEVICE := Amber
PRODUCT_MANUFACTURER := Yandex
PRODUCT_MODEL := YNDX000SB

PRODUCT_GMS_CLIENTID_BASE := android-uniscope

TARGET_VENDOR_PRODUCT_NAME := Amber

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="yphone-user 8.1.0 8710.1.A.0063.20190415 04150906 release-keys"

BUILD_FINGERPRINT := Yandex/Amber/Amber:8.1.0/8710.1.A.0063.20190415/04150906:user/release-keys

TARGET_VENDOR := Yandex