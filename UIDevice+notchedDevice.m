#include "UIDevice+notchedDevice.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation UIDevice (notchedDevice) // ty burrit0z for making this to work

-(BOOL)isNotched {
    LAContext *context = [[LAContext alloc] init];
    
    [context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:nil];
    return context.biometryType == LABiometryTypeFaceID;
}

-(BOOL)isAnIpad {
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

-(BOOL)isAnIpod {
    NSString *model = [UIDevice.currentDevice model]; // get the device model

    if([model isEqualToString:@"iPod"]){
        return YES;
    } else {
        return NO;
    }
} // yeah this is a copy pasta from the previous method shut up now :(

@end

// How to use this ? it's really simple
// Copy pasterinio these two files to your project, don't forget to include the .h file and then
// Just use these :
// [UIDevice.currentDevice isNotched]; This will return a BOOL that is equal to YES if the device is notched
// [UIDevice.currentDevice isAniPad]; This will return a BOOL that is equal to YES if the device is an iPad
// [UIDevice.currentDevice isAniPod]; This will return a BOOL that is equal to YES if the device is an iPod
//
// You can use those like this :
// BOOL isNotchedDevice = [UIDevice.currentDevice isNotched];
//
// This is pretty useless but you know
// https://wompampsupport.azureedge.net/fetchimage?siteId=7575&v=2&jpgQuality=100&width=700&url=https%3A%2F%2Fi.kym-cdn.com%2Fentries%2Ficons%2Ffacebook%2F000%2F028%2F021%2Fwork.jpg
