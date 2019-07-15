#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/universal7420-common

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

BUILD_TOP := $(shell pwd)

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a57

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_NR_CPUS := 8

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS := \
    HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

# Audio
TARGET_AUDIOHAL_VARIANT := samsung
USE_XML_AUDIO_POLICY_CONF := 1
AUDIOSERVER_MULTILIB := 32

# Binder
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/configs/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7420
TARGET_NO_BOOTLOADER := true

# Charger
WITH_LINEAGE_CHARGER := false
BACKLIGHT_PATH := /sys/devices/13900000.dsim/backlight/panel/brightness
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# Device Tree
BOARD_USES_DT := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# Fingerprint
TARGET_SEC_FP_CALL_NOTIFY_ON_CANCEL := true
TARGET_SEC_FP_CALL_CANCEL_ON_ENROLL_COMPLETION := true
TARGET_SEC_FP_USES_PERCENTAGE_SAMPLES := true

# Gralloc
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

##
## Samsung LSI Graphics
##
### Buffers
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true

# (G)SCALER
BOARD_USES_SCALER := true

# HDMI
BOARD_HDMI_INCAPABLE := true

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# HWComposer
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
# BOARD_USES_HWC_SERVICES := true

#  ION
TARGET_USES_ION := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9/bin
BOARD_KERNEL_BASE := 0x10000000
# BOARD_KERNEL_CMDLINE := commandline from boot.img by bootloader
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x10008000 --ramdisk_offset 0x11000000 --tags_offset 0x10000100
TARGET_KERNEL_SOURCE := kernel/samsung/universal7420
TARGET_LINUX_KERNEL_VERSION := 3.10
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Mediaserver-shim
TARGET_LD_SHIM_LIBS += \
    /system/bin/mediaserver|/vendor/lib/libstagefright_shim.so

# MEMFD
TARGET_HAS_MEMFD_BACKPORT := true

# Networking
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7420
TARGET_SLSI_VARIANT := bsp

# Radio
BOARD_PROVIDES_LIBRIL := true

# Ril - Shim
TARGET_LD_SHIM_LIBS += \
	/vendor/lib/libsec-ril.so|/vendor/lib/libcutils_shim.so \
	/vendor/lib/libsec-ril-dsds.so|/vendor/lib/libcutils_shim.so \
	/vendor/lib64/libsec-ril.so|/vendor/lib64/libcutils_shim.so \
        /vendor/lib64/libsec-ril-dsds.so|/vendor/lib64/libcutils_shim.so

# Root extra folders
BOARD_ROOT_EXTRA_FOLDERS += efs
TARGET_FS_CONFIG_GEN := $(LOCAL_PATH)/config.fs

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := false
BOARD_USE_DEINTERLACING_SUPPORT := false
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USE_SINGLE_PLANE_IN_DRM := false
BOARD_USES_DEFAULT_CSC_HW_SCALER := true

# Others
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USES_SCALER_M2M1SHOT := true
BOARD_USES_VDS_BGRA8888 := true
# BOARD_USES_VIRTUAL_DISPLAY := true  -- depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false
BOARD_USES_CEC := true

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

# WFD
BOARD_USES_WFD := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_USE_HIDL          := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
