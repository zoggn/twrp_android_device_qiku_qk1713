#
# Copyright (C) 2017 The Android Open Source Project
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

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# A/B style
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

AB_OTA_PARTITIONS += \
    boot \
    system

AB_OTA_UPDATER := true

PRODUCT_PACKAGES += \
    update_engine \
    update_verifier

# Bootloader HAL used for A/B updates.
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sdm660 \
    librecovery_updater_msm \
    libsparse_static
PRODUCT_PACKAGES += \
    update_engine_sideload

PRODUCT_PACKAGES_DEBUG += \
    bootctl

# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

