TARGET := iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES := TikTok

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := FixAudioTikTok
FixAudioTikTok_FILES := Tweak.x
FixAudioTikTok_CFLAGS := -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk