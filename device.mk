#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/umidigi/F1_Play/F1_Play-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage
    
# Overlay from mtk-telephony-ext
include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# FM Radio
PRODUCT_PACKAGES += \
    FMRadio  \
    libfmcust

# Camera
PRODUCT_PACKAGES += \
    Snap
    
# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6771:$(TARGET_COPY_OUT_RAMDISK)/fstab.mt6771

# Prebuilt APKs
PRODUCT_COPY_FILES += \
    #$(LOCAL_PATH)/prebuilt/app/MaterialFiles.apk:$(TARGET_COPY_OUT_SYSTEM)/app/MaterialFiles.apk \
    #$(LOCAL_PATH)/prebuilt/app/OpenCamera.apk:$(TARGET_COPY_OUT_SYSTEM)/app/OpenCamera.apk \

# Init cripts
PRODUCT_PACKAGES += \
    init.mt6771.rc \
    fstab.mt6771 \
    init.safailnet.rc

# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_video.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0:64 \
    android.hardware.nfc@1.1:64 \
    android.hardware.nfc@1.2:64 \
    android.hardware.secure_element@1.0:64 \
    android.hardware.secure_element@1.1:64 \
    com.android.nfc_extras \
    Tag
    
# Overlay
PRODUCT_PACKAGES += \
    DummyOverlay

# Permissions
PRODUCT_COPY_FILES += \
 frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml 
    
# Memory optimization
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \
    ro.sys.fw.bg_apps_limit=24 

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.enable_gl_backpressure=1

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   media.stagefright.thumbnail.prefer_hw_codecs=true
   
# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    mtk-telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext
