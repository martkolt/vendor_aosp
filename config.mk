# AOSP packages
PRODUCT_PACKAGES += \
    Camera2 \
    Launcher3 \
    messaging \
    SoundRecorder \
    Terminal \
    WallpaperPicker

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# OTA
PRODUCT_PACKAGES += \
    NitrogenOTA \
    libbypass

# Themes
PRODUCT_PACKAGES += \
    DeepPurpleTheme \
    IndigoTheme \
    PinkTheme \
    PixelTheme \
    PurpleTheme \
    RedTheme \
    SkyBlueTheme \
    Stock \
    TealTheme \
    YellowTheme

# LineageOS apps
PRODUCT_PACKAGES += \
    Jelly \
    Snap

# LineageOS tools
PRODUCT_PACKAGES += \
    7z \
    htop \
    lib7z \
    unrar \
    unzip \
    vim \
    zip

# OmniROM apps
PRODUCT_PACKAGES += \
    Launcher3Dark \
    OmniClockOSS \
    OmniSwitch \
    Phonograph \
    MusicFX \
    libcyanogen-dsp

# Additional tools
PRODUCT_PACKAGES += \
    mkshrc_vendor \
    toybox_vendor \
    sh_vendor

# mkshrc
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/mkshrc:system/etc/mkshrc

# Init.d support
PRODUCT_PACKAGES += \
    init.d.rc

PRODUCT_COPY_FILES += \
    system/core/rootdir/sysinit:system/vendor/bin/sysinit

# Init scripts
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/init/init.common.rc:system/etc/init/init.common.rc

# exFAT tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat

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

# Fix Google dialer
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

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
