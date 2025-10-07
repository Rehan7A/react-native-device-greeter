#import "DeviceGreeter.h"

@implementation DeviceGreeter
- (NSNumber *)multiply:(double)a b:(double)b {
    NSNumber *result = @(a * b);

    return result;
}

// ✅ New add method
- (NSNumber *)add:(double)a b:(double)b {
  NSNumber *result = @(a + b);
  return result;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeDeviceGreeterSpecJSI>(params);
}

+ (NSString *)moduleName
{
  return @"DeviceGreeter";
}

@end
