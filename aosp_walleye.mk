#
# Copyright 2016 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)


$(call inherit-product, device/google/walleye/device.mk)
$(call inherit-product, vendor/google/walleye/walleye-vendor.mk)

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Android
PRODUCT_NAME := aosp_walleye
PRODUCT_DEVICE := walleye
PRODUCT_MODEL := AOSP on walleye

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="walleye" \
    PRIVATE_BUILD_DESC="walleye-user 11 RP1A.201005.004.A1 6934943 release-keys"
BUILD_FINGERPRINT := google/walleye/walleye:11/RP1A.201005.004.A1/6934943:user/release-keys
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
