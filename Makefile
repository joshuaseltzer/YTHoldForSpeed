ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET := iphone:clang:16.2:15.0
else
TARGET := iphone:clang:14.5:13.0
endif
INSTALL_TARGET_PROCESSES = YouTube

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ytholdforspeed
ytholdforspeed_FILES = YTHFSTweak.x YTHFSSettings.x YTHFSPrefsManager.m
ytholdforspeed_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
