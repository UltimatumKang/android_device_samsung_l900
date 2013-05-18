# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/l900/full_l900.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# t0lte Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/t0lte

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/cdma.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := xylon_l900
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := t0lte
PRODUCT_MODEL := SPH-L900
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltespr TARGET_DEVICE=t0ltespr BUILD_FINGERPRINT="samsung/t0ltespr/t0ltespr:4.1.2/JZO54K/L900VPAMC2:user/release-keys" PRIVATE_BUILD_DESC="t0ltespr-user 4.1.2 JZO54K L900VPAMC2 release-keys"

# Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

