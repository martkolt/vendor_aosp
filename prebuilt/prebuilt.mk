# Prebuilt Packages
PRODUCT_PACKAGES += \
    Turbo \
    Launcher3 \
    Phonograph \
    OnePlusCamera \
    OnePlusCameraService

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# World APN list
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# OnePlus Camera
PRODUCT_COPY_FILES += \
    vendor/aosp/prebuilt/framework/org.codeaurora.camera.jar:system/framework/org.codeaurora.camera.jar \
    vendor/aosp/prebuilt/bin/secure_camera_sample_client:system/bin/secure_camera_sample_client \
    vendor/aosp/prebuilt/lib/libfilter-sdk.so:system/lib/libfilter-sdk.so \
    vendor/aosp/prebuilt/lib/libopbaselib.so:system/lib/libopbaselib.so \
    vendor/aosp/prebuilt/lib/libopcamera.so:system/lib/libopcamera.so \
    vendor/aosp/prebuilt/lib/libopcameralib.so:system/lib/libopcameralib.so \
    vendor/aosp/prebuilt/priv-app/OnePlusCamera/lib/arm/libopbaselib.so:system/priv-app/OnePlusCamera/lib/arm/libopbaselib.so
