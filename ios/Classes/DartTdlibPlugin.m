#import "DartTdlibPlugin.h"
#if __has_include(<dart_tdlib/dart_tdlib-Swift.h>)
#import <dart_tdlib/dart_tdlib-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "dart_tdlib-Swift.h"
#endif

@implementation DartTdlibPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDartTdlibPlugin registerWithRegistrar:registrar];
}
@end
