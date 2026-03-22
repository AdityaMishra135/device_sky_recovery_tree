# Copyright (C) 2025-2026 OrangeFox Recovery Project
# Copyright (C) 2026 ironhide
# SPDX-License-Identifier: GPL-3.0-only
#
FDEVICE="sky"

#set -o xtrace
fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then 
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
   	export TW_DEFAULT_LANGUAGE="en"
	export LC_ALL="C"
 	export ALLOW_MISSING_DEPENDENCIES=true
	export FOX_USE_NANO_EDITOR=1
	export FOX_ENABLE_APP_MANAGER=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
    export FOX_DELETE_AROMAFM=1
    export TARGET_DEVICE_ALT="sky"
    export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800";

	export OF_ENABLE_FRP_ADDON="1"
	export FOX_MAINTAINER_PATCH_VERSION="1"
	export OF_MAINTAINER="IRONHIDE"
	export OF_SCREEN_H="2460"
	export OF_SCREEN_W="1080"

	export OF_FBE_METADATA_MOUNT_IGNORE="1"
	export OF_IGNORE_LOGICAL_MOUNT_ERRORS="1"
	export FOX_USE_DATA_RECOVERY_FOR_SETTINGS="1" 
	export OF_ENABLE_FSCOMPRESSION="1"
	export OF_USE_MAGISKBOOT="1"
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
	export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
	export FOX_REMOVE_AAPT="1"
	export OF_SCREEN_TIMEOUT="0"
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES="0"
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR="1"
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT="0"
	export FOX_USE_SPECIFIC_MAGISK_ZIP="$(DEVICE_PATH)/prebuilt/Magisk-v30.6.zip"


	export OF_NO_MIUI_PATCH_WARNING="1"
	export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
	

else
	if [ -z "$FOX_BUILD_DEVICE" -a -z "$BASH_SOURCE" ]; then
		echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
	fi
fi
#
