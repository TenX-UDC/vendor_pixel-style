#
# Copyright (C) 2024 The hentaiOS Project and its Proprietors.
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

# Google Overlays
PRODUCT_PACKAGES += \
    AccessibilityMenuOverlay \
    BuiltInPrintServiceOverlay \
    ContactsProviderOverlay \
    DMServiceOverlay \
    FlipendoOverlay \
    GoogleDialerConfOverlay \
    MediaProviderOverlay \
    PixelDocumentsUIGoogleOverlay \
    PixelFwOverlay \
    SettingsGoogleOverlay \
    SettingsProviderOverlay \
    SystemUIGoogleOverlay \
    TeleServiceOverlay \
    TelecomOverlay \
    TelephonyProviderOverlay

ifneq ($(filter sailfish marlin walleye taimen blueline crosshatch sargo bonito flame coral sunfish bramble redfin barbet oriole raven bluejay panther cheetah lynx tangorpro felix shiba husky akita caiman, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    PixelBatteryHealthOverlay
endif

ifneq ($(filter bluejay panther cheetah lynx felix tangorpro shiba husky akita caiman, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    PixelConnectivityOverlay2022
endif

ifneq ($(filter flame coral redfin oriole raven panther cheetah lynx felix shiba husky akita caiman, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    DreamlinerOverlay
endif

ifneq ($(filter panther cheetah lynx felix shiba husky akita caiman, $(LINEAGE_BUILD)),)
PRODUCT_PACKAGES += \
    ClearCallingOverlay
endif
