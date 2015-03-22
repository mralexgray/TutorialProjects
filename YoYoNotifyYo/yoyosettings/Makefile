ARCHS = armv7 arm64
include theos/makefiles/common.mk

BUNDLE_NAME = YoYoNotifyYoSettings
YoYoNotifyYoSettings_FILES = YoYoNotifyYoSettings.mm
YoYoNotifyYoSettings_INSTALL_PATH = /Library/PreferenceBundles
YoYoNotifyYoSettings_FRAMEWORKS = UIKit
YoYoNotifyYoSettings_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/YoYoNotifyYoSettings.plist$(ECHO_END)
