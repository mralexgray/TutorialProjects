ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = YoYoNotifyYo
YoYoNotifyYo_FILES = Tweak.xm
YoYoNotifyYo_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += yoyosettings
include $(THEOS_MAKE_PATH)/aggregate.mk
