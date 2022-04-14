# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from F1 device
$(call inherit-product, device/umidigi/F1/device.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)
    
# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := F1
PRODUCT_NAME := omni_F1
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := F1
PRODUCT_MANUFACTURER := A-gold

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd
    
# Add fingerprint from Stock ROM build.prop
BUILD_FINGERPRINT := UMIDIGI/F1_EEA/F1:9/PPR1.180610.011/root.20190718.110039:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=F1 \
    PRODUCT_NAME=F1 \
    PRIVATE_BUILD_DESC="F1_EEA-user 9 PPR1.180610.011 root.20190718.110039 release-keys"

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1
