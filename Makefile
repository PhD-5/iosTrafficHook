THEOS_DEVICE_IP = 192.168.3.240
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include theos/makefiles/common.mk

TWEAK_NAME = iosTrafficHook
iosTrafficHook_FILES = hook/AppDelegateHook.xm hook/CustomURLProtocol.m hook/SocketClass.m

iosTrafficHook_FRAMEWORKS = UIKit Security

include $(THEOS_MAKE_PATH)/tweak.mk


