$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# ext4 filesystem utils
PRODUCT_PACKAGES += \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs 

PRODUCT_COPY_FILES += \
	device/allwinner/common/media_codecs.xml:system/etc/media_codecs.xml \
	device/allwinner/common/audio_policy.conf:system/etc/audio_policy.conf \
	device/allwinner/common/phone_volume.conf:system/etc/phone_volume.conf

# wfd no invite
PRODUCT_COPY_FILES += \
	device/allwinner/common/wfd_blacklist.conf:system/etc/wfd_blacklist.conf

# table core hardware
PRODUCT_COPY_FILES += \
	device/allwinner/common/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

#egl
PRODUCT_COPY_FILES += \
	device/allwinner/common/egl.cfg:system/lib/egl/egl.cfg \
	device/allwinner/common/sensors.sh:system/bin/sensors.sh

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
	ro.reversion.aw_sdk_tag=exdroid4.2.2_r1-a31-v3.2 \
	ro.sys.cputype=QuadCore-A31Series

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	keyguard.no_require_sim=true

PRODUCT_PROPERTY_OVERRIDES += \
	persist.demo.hdmirotationlock=0
	
BUILD_NUMBER := $(shell date +%Y%m%d)

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml

PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=false

