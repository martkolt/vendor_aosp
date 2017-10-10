# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Themes
PRODUCT_PACKAGES += \
    PixelTheme \
    Stock

# OmniROM apps
PRODUCT_PACKAGES += \
    OmniClockOSS \
    OmniJaws \
    OmniSwitch \
    OmniStyle \
    MusicFX \
    audio_effects.conf \
    libcyanogen-dsp \
    MatLog

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# NTFS support
PRODUCT_PACKAGES += \
    mount.ntfs \
    fsck.ntfs \
    mkfs.ntfs

# Include PA GApps config
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/install/gapps-config.txt:install/gapps-config.txt

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.dun.override=0

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Set Pixel blue light theme on Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.theme_id=5

$(call inherit-product-if-exists, vendor/aosp/prebuilt/prebuilt.mk)
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)
