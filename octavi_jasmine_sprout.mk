#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)

# Inherit LegionOS product configuration
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

#Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Gapps Architecture
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS := true

# Density
TARGET_SCREEN_DENSITY := 480

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := octavi_jasmine_sprout
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2
