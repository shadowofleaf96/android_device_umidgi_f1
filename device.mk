#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/umidigi/F1/F1-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# VNDK
BOARD_VNDK_VERSION := current
PRODUCT_TARGET_VNDK_VERSION := 28
PRODUCT_EXTRA_VNDK_VERSIONS := 28

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
PRODUCT_PACKAGES += \
    Snap
    
# Besloudness Fix
PRODUCT_PACKAGES += \
    BesloudnessDisabler

# File Manager
PRODUCT_PACKAGES += \
    Filemanager        

# Eleven
PRODUCT_PACKAGES += \
    Eleven    
    
# IMS Init
PRODUCT_PACKAGES += \
    ImsInit
    
# Faceunlock
PRODUCT_PACKAGES += \
    FaceUnlockService	

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd
    
# Showlogo Symbols
PRODUCT_PACKAGES += \
    libshim_showlogo

# FMRadio
PRODUCT_PACKAGES += \
    FMRadio 

# Ramdisk
PRODUCT_PACKAGES += \
    init.mt6771.rc \
    fstab.mt6771 \
    init.safailnet.rc

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6771.rc:root/init.recovery.mt6771.rc
    
# Audio Config
PRODUCT_COPY_FILES += \
     frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml
    
# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/factory.ini:$(TARGET_COPY_OUT_SYSTEM)/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/custom.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/media/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_video.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Fstab 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6771:$(TARGET_COPY_OUT_VENDOR)/rootdir/etc/fstab.mt6771 \

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/factory.ini:$(TARGET_COPY_OUT_SYSTEM)/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/custom.conf

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    android.hardware.nfc@1.0:64 \
    android.hardware.nfc@1.1:64 \
    android.hardware.nfc@1.2:64 \
    android.hardware.secure_element@1.0:64 \
    android.hardware.secure_element@1.1:64 \
    com.android.nfc_extras \
    Tag

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# KPOC
PRODUCT_PACKAGES += \
    libsuspend
    
# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@2.0-service.override
    
# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service \
    android.hardware.vibrator@1.0-impl
    
# Trust 
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service   
    
# Overlay
PRODUCT_PACKAGES += \
    DummyOverlay

# Permissions
PRODUCT_COPY_FILES += \
 frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml \
    $(DEVICE_PATH)/configs/permissions/privapp-permissions-imsinit.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-imsinit.xml	

# Do not spin up a separate process for the network stack, use an in-process APK.
PRODUCT_PACKAGES += InProcessNetworkStack
PRODUCT_PACKAGES += com.android.tethering.inprocess

# Telephony Jars
PRODUCT_BOOT_JARS += \
    mediatek-common \
    mediatek-framework \
    mediatek-ims-base \
    mediatek-ims-common \
    mediatek-telecom-common \
    mediatek-telephony-base \
    mediatek-telephony-common
