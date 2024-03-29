#
# Copyright 2014 The Android Open Source Project
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

# Inherit from the proprietary version
-include vendor/huawei/u8833/BoardConfigVendor.mk

# Inherit from the common msm7x27a definitions
-include device/huawei/msm7x27a-common/BoardConfigCommon.mk

# Architecture and CPU
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := u8833
TARGET_OTA_ASSERT_DEVICE := u8833,hwu8833,u8951,hwu8951

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8833/bluetooth

# FM
BOARD_HAVE_QCOM_FM := true


# Kernel
TARGET_PREBUILT_KERNEL := device/huawei/u8951/kernel
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei androidboot.selinux=permissive
BOARD_PAGE_SIZE := 2048

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 0x40000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207943168 # 0x47FFC000

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8833/recovery/graphics.c
TARGET_RECOVERY_FSTAB := device/huawei/u8833/rootdir/fstab.huawei

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/u8833/ril/

# Wi-Fi
BOARD_HAS_ATH_WLAN := true
BOARD_WLAN_DEVICE := ath6kl

BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

WIFI_DRIVER_MODULE_NAME := "ar6000"
WIFI_DRIVER_MODULE_PATH := "/data/misc/wifi/load/ar6000.ko"
