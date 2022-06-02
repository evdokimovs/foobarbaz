#import "FlutterWebRTCPlugin.h"
#import <FlutterMacOS/FlutterMacOS.h>
#import <AVFoundation/AVFoundation.h>

@implementation FlutterWebrtcExmplPlugin
+ (void)registerWithRegistrar:(nonnull id<FlutterPluginRegistrar>)registrar {
}

- (void)handleMethodCall:(nonnull FlutterMethodCall*)call result:(nonnull FlutterResult)result {
    NSLog(@"Handle method call was called");
}

- (instancetype) initWithChannel:(FlutterMethodChannel*)channel :(NSObject<FlutterBinaryMessenger>*)messenger {
    self = [super init];
    return self;
}
@end

@implementation FlutterWebRTC
- (void)handleMethodCall:(FlutterMethodCall*)methodCall :(FlutterResult)result {
    NSLog(@"Hello Flutter world!");
    NSString* method = methodCall.method;
    if ([method isEqualToString:@"create"]) {

    } else if ([method isEqualToString:@"dispose"]) {

    } else {
        result(FlutterMethodNotImplemented);
    }
}
@end
