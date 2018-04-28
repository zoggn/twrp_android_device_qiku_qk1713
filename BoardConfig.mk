# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno508

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

#CUSTOM LUN FOR USB STORAGE --  this used to work, broken from >3.2.  WHY?
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/config/usb_gadget/g1/functions/mass_storage.0/lun.0/file"

#KERNEL
TARGET_PREBUILT_KERNEL := device/qiku/qk1713/kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := g_android.luns=1 g_android.removable=1 g_android.cdrom=1 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3 buildvariant=user
BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --pagesize 4096 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 


#PARTITIONS
TARGET_USERIMAGES_USE_EXT4 := true 
BOARD_BOOTIMAGE_PARTITION_SIZE := 268238848
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 17314086912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 82996817920
BOARD_OEMIMAGE_PARTITION_SIZE := 2415919104
BOARD_PERSISTIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

#RECOVERY
#RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYTPO := true
TW_EXTERNAL_STORAGE_PATH := /sdcard1
TW_EXTERNAL_STORAGE_MOUNT_POINT := /sdcard1
TW_INTERNAL_STORAGE_PATH := /data/media/0
TW_INTERNAL_STORAGE_MOUNT_POINT := /sdcard
TARGET_RECOVERY_FSTAB := device/qiku/qk1713/recovery/root/etc/twrp.fstab
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 90
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_FB2PNG := true
AB_OTA_UPDATER := true
TW_HAS_NO_RECOVERY_PARTITION := true
#TW_EXCLUDE_MTP := true
