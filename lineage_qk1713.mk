#
# Copyright (C) 2017 The Android Open Source Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/lineage/config/gsm.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device packages
$(call inherit-product, device/qiku/qk1713/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := qk1713
PRODUCT_NAME := lineage_qk1713
PRODUCT_BRAND := 360
PRODUCT_MODEL := QK1713
PRODUCT_MANUFACTURER := 360

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_FINGERPRINT="360/QK1713/QK1713:7.1.1/NMF26X/7.1.074.PX.180322.360_360_QK1713_CN:user/release-keys"
