#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := picasso
DEVICE_PATH := device/xiaomi/picasso

# Inherit some common PitchBlack stuff.
$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := picasso
PRODUCT_NAME := omni_picasso
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K30 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := Redmi K30 5G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Redmi/picasso/picasso:10/QKQ1.191117.002/20.1.13:user/release-keys" \
    PRIVATE_BUILD_DESC="picasso-user 10 QKQ1.191117.002 20.1.13 release-keys"

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
    ro.build.date=Thu May  7 00:11:59 CST 2020 \
    ro.build.date.utc=1588781519
