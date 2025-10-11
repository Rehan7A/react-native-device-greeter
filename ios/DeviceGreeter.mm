#import "DeviceGreeter.h"
#import "DeviceGreeter-Swift.h"// ✅ Proper Swift module import

@implementation DeviceGreeter

- (NSNumber *)multiply:(double)a b:(double)b {
    return @([[MyDeviceGreeter shared] multiply:a b:b]);
}

- (NSNumber *)add:(double)a b:(double)b {
    return @([[MyDeviceGreeter shared] add:a b:b]);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
(const facebook::react::ObjCTurboModule::InitParams &)params {
    return std::make_shared<facebook::react::NativeDeviceGreeterSpecJSI>(params);
}

+ (NSString *)moduleName {
    return @"DeviceGreeter";
}

@end
