#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xioami-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device Path
DEVICE_PATH := device/xiaomi/lavender

# Assert
TARGET_OTA_ASSERT_DEVICE := lavender

# APEX image
ifeq ($(ENABLE_APEX), true)
DEXPREOPT_GENERATE_APEX_IMAGE := true
endif

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Architecture 2
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Audio
AUDIO_DISABLE_SWAP_CHANNELS := true
AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := false
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Battery Saver
TARGET_POWERHAL_MODE_EXT := $(DEVICE_PATH)/power-libperfmgr/power/power-mode.cpp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_SOC := "cherokee"
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true
OVERRIDE_QCOM_HARDWARE_VARIANT := sdm660

# Board
TARGET_BOARD_PLATFORM := sdm660

# Build Rules
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ENFORCE_SYSPROP_OWNER := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
RELAX_USES_LIBRARY_CHECK := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_USES_MEDIA_EXTENSIONS := true

# Charger
HEALTHD_USE_BATTERY_INFO := true

# Clang
TARGET_KERNEL_CLANG_COMPILE := true

# CNE and DPM
BOARD_USES_QCNE := true
TARGET_KERNEL_CLANG_VERSION := trb_clang
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/$(TARGET_KERNEL_CLANG_VERSION)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(TARGET_KERNEL_CLANG_PATH)/bin/aarch64-linux-gnu-
TARGET_KERNEL_CROSS_COMPILE_ARM32_PREFIX := $(TARGET_KERNEL_CLANG_PATH)/bin/arm-linux-gnueabi-

# ConfigFS
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/configs/config.fs

# Dex
ifneq ($(TARGET_BUILD_VARIANT),eng)
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := false
WITH_DEXPREOPT_DEBUG_INFO := false
DONT_DEXPREOPT_PREBUILTS := true
USE_DEX2OAT_DEBUG := false
endif

# Display
TARGET_SCREEN_DENSITY := 440
BOARD_USES_ADRENO := true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_ION := true

# Directory
TARGET_COPY_OUT_VENDOR := vendor

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Enable stats logging in LMKD
TARGET_LMKD_STATS_LOG := true

# Enable System As Root even for non-A/B from P onwards
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_KERNEL_CMDLINE += skip_initramfs rootwait ro init=/init

# Extra Symlink
BOARD_ROOT_EXTRA_SYMLINKS := \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware \
    /vendor/bt_firmware:/bt_firmware \
    /mnt/vendor/persist:/persist
    
# FM
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAS_QCA_FM_SOC := cherokee

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
GNSS_HIDL_VERSION := 2.1
LOC_HIDL_VERSION := 4.0

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_sdm660
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_sdm660

# IPA
USE_DEVICE_SPECIFIC_DATA_IPA_CFG_MGR := true
USE_DEVICE_SPECIFIC_IPACFG_MGR := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += printk.devkmsg=on
BOARD_KERNEL_CMDLINE += usbcore.autosuspend=7
BOARD_KERNEL_CMDLINE += kpti=off
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := lavender_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_VERSION := 4.19
TARGET_KERNEL_SOURCE := kernel/xiaomi/lavender

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 2147483648
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/properties/system_ext.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := false

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab_A.qcom

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_lavender
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Renderscript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# RIL
PROTOBUF_SUPPORTED := true
ENABLE_VENDOR_RIL_SERVICE := true

# SELinux
include device/qcom/sepolicy-legacy-um/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private
SELINUX_IGNORE_NEVERALLOWS := true

# Treble
PRODUCT_VENDOR_MOVE_ENABLED := true

# Timeservice
BOARD_USES_QC_TIME_SERVICES := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# USB
TARGET_QTI_USB_SUPPORTS_AUDIO_ACCESSORY := true

# Vendor Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# VNDK
BOARD_VNDK_VERSION := current

# WLAN MAC
WLAN_MAC_SYMLINK := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
QC_WIFI_HIDL_FEATURE_DUAL_AP := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WIFI_DRIVER_OPERSTATE_PATH := "/sys/class/net/wlan0/operstate"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_FEATURE_AWARE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
