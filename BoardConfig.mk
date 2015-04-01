# inherit common device tree
-include device/oppo/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/oneplus/bacon

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := find7op
TARGET_OTA_ASSERT_DEVICE := bacon,A0001

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# NFC
BOARD_NFC_CHIPSET := pn547

# Recovery:Start
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/configs/fstab.find7op
RECOVERY_SDCARD_ON_DATA := true

# Inline kernel
TARGET_KERNEL_SOURCE := kernel/oneplus/msm8974
TARGET_KERNEL_CONFIG := mm_bacon_defconfig 
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=bacon user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
# Kernel Toolchain
#TARGET_GCC_VERSION_ARM := 4.9-sabernaro

# Rom Toolchain
## TARGET_GCC_VERSION_EXP := 4.9

# Default.prop overrides to get adb working at boot   
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
