#
# Copyright (C) 2015 The Android Open-Source Project
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


# Arch
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_BOOTLOADER_BOARD_NAME := core33g

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/core33g/dt.img
#TARGET_PREBUILT_KERNEL := device/samsung/core33g/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/core33g
TARGET_KERNEL_CONFIG := cyanogenmod-core33g_defcomfig

# Partition
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1258291200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6094323712
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM:=true

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/etc/wifi/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/etc/wifi/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/etc/wifi/fw_bcmdhd_apsta.bin"
#WIFI_DRIVER_MODULE_NAME     := "bcmdhd"                            //WiFi built-in kernel. No module, so we hash out them
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"


# Hardware rendering
TARGET_BOARD_PLATFORM_GPU := ARM Mali-400
BOARD_EGL_CFG := device/samsung/core33g/configs/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_TINYALSA_AUDIO := true

# config sepolicy
BOARD_SEPOLICY_DIRS := device/samsung/core33g/sepolicy

BOARD_SEPOLICY_UNION := \
       file.te \
       file_contexts \
       seapp_contexts \
       theme.te \
       healthd.te \
       init.te \
       init_shell.te \
       installd.te \
       netd.te \
       shell.te \
       system.te \
       untrusted_app.te \
       vold.te \
       zygote.te


# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_PREBUILT_KERNEL := device/samsung/core33g/kernel
TARGET_RECOVERY_INITRC := device/samsung/core33g/init.rc
TARGET_RECOVERY_FSTAB := device/samsung/core33g/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := portrait_mdpi
SP1_NAME := "internal_sd"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_MTP_DEVICE := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
