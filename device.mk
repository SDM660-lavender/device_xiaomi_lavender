#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    init.qcom.sdio.sh \
    init.qcom.class_core.sh \
    qca6234-service.sh \
    init.crda.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    capture_audio.sh \
    init.qti.can.sh \
    playback_audio.sh \
    init.class_main.sh \
    init.qti.qseecomd.sh \
    init.qcom.early_boot.sh \
    init.qcom.usb.sh \
    init.qcom.coex.sh \
    init.mdm.sh \
    init.qcom.post_boot.sh \
    init.qti.fm.sh \
    loopback.sh \
    playback.sh \
    init.qcom.crashdata.sh \
    init.qcom.sensors.sh \
    init.qti.ims.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.msm.usb.configfs.rc \
    init.qcom.factory.rc \
    init.qcom.usb.rc \
    init.target.rc \
    exfat.rc \
    init.qcom.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lavender/lavender-vendor.mk)
