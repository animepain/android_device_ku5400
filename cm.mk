# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration for LG Prada 3.0
$(call inherit-product, device/lge/p940/full_p940.mk)

# This device has NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := cm_p940
PRODUCT_BRAND := lg
PRODUCT_DEVICE := p940
PRODUCT_MODEL := LG-P940
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := Optimus Prada 3.0
PRODUCT_SFX := intl

# Release name and versioning
PRODUCT_RELEASE_NAME := p940
PRODUCT_VERSION_DEVICE_SPECIFIC := 
-include vendor/cm/config/common_versions.mk

UTC_DATE := $(shell date +%s)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=${UTC_DATE}\

# Enable Torch
PRODUCT_PACKAGES += Torch
