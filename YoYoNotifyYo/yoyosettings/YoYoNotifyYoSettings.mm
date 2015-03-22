@interface PSListController
{
    id _specifiers;
}
-(id)specifiers;
-(id)loadSpecifiersFromPlistName:(id)name target:(id)target;
@end

@interface YoYoNotifyYoSettingsListController: PSListController {
}
@end

@implementation YoYoNotifyYoSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"YoYoNotifyYoSettings" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
