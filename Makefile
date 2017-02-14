TARGET = iphone:latest
ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Transpotlight
Transpotlight_FILES = Tweak.xm
Transpotlight_FRAMEWORK= UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
