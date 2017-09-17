# Prebuilt Packages
PRODUCT_PACKAGES += \
    Turbo \
    Launcher3 \
    Phonograph \
    FirefoxFocus

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
