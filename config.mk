# Copyright (C) 2017-2020 crDroid Android Project
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
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/addons/prebuilt/product/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontGoogleSans \
    FontLato \
    FontNotoSerifSource \
    FontOnePlusSans \
    FontOnePlusSlate \
    FontRubik

# Accent colors
PRODUCT_PACKAGES += \
    AccentMaterialAmber \
    AccentMaterialBlue \
    AccentMaterialBrown \
    AccentMaterialCyan \
    AccentMaterialDeepOrange \
    AccentMaterialDeepPurple \
    AccentMaterialGreen \
    AccentMaterialIndigo \
    AccentMaterialLightBlue \
    AccentMaterialLightGreen \
    AccentMaterialLime \
    AccentMaterialOrange \
    AccentMaterialPink \
    AccentMaterialPurple \
    AccentMaterialRed \
    AccentMaterialTeal \
    AccentMaterialYellow

# Dark mode backgrounds
PRODUCT_PACKAGES += \
    DarkBackgroundBlack \
    DarkBackgroundDarkGray \
    DarkBackgroundMatteBlack \
    DarkBackgroundSolarized

# Icon pack overlays
PRODUCT_PACKAGES += \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackFilledThemePickerOverlay
