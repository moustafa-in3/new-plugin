#import "NewpluginPlugin.h"
#if __has_include(<newplugin/newplugin-Swift.h>)
#import <newplugin/newplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "newplugin-Swift.h"
#endif

@implementation NewpluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNewpluginPlugin registerWithRegistrar:registrar];
}
@end
