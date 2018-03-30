# Prebuilt Packages
PRODUCT_PACKAGES += \
    Turbo

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# LatinIME gesture typing
ifneq ($(filter shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/aosp/prebuilt/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so
else
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/aosp/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so
endif
