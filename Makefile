TARGET := iphone:clang:14.5:13.0
INSTALL_TARGET_PROCESSES = YouTube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ytholdforspeed

ytholdforspeed_FILES = YTHFSTweak.x YTHFSSettings.x YTHFSPrefsManager.m
ytholdforspeed_CFLAGS = -fobjc-arc

THEOS_PACKAGE_BASE_VERSION = 1.0.1
_THEOS_INTERNAL_PACKAGE_VERSION = 1.0.1

include $(THEOS_MAKE_PATH)/tweak.mk
