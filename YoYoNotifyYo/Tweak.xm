#include <UIKit/UIKit.h>
@interface SBApplicationIcon
- (void)launchFromLocation:(int)arg;
- (id)displayName;
@end


#define PLISTNAME @"com.mrgray.YoYoNotifyYoSettings.plist"
#define APPLAUNCHESKEY @"applaunches"
#define PREFSPATH [NSString stringWithFormat:@"%@/Library/Preferences/%@", NSHomeDirectory(), PLISTNAME]


%hook SBApplicationIcon

-(void)launchFromLocation:(int)location{

  NSMutableDictionary *history = [NSMutableDictionary dictionaryWithContentsOfFile:PREFSPATH];
  
  NSString *appName = [self displayName];
  
  NSMutableDictionary * appLaunches = history[APPLAUNCHESKEY] ?: @{ appName : @0 }.mutableCopy;

  appLaunches[appName] = @([appLaunches[appName] intValue] + 1);
  
  history[APPLAUNCHESKEY] = appLaunches;
  
  [history writeToFile:PREFSPATH atomically:YES];

        // NSString *appName = [self displayName];
        // NSLog(@"Inside the method! ALEX ALEX ALEX %@", NSStringFromSelector(_cmd));
        //
        // NSString *message = [NSString stringWithFormat:@"Application launched: %@", appName];
        // UIAlertView *myAlert = [[UIAlertView alloc]initWithTitle:appName message:message delegate:nil cancelButtonTitle:@"Yes" otherButtonTitles:@"No", nil];
        // [myAlert show];

    %orig;
}//end function

%end
