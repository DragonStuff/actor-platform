//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/ApiConfiguration.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/ApiConfiguration.h"

@interface AMApiConfiguration () {
 @public
  NSString *appTitle_;
  jint appId_;
  NSString *appKey_;
  NSString *deviceTitle_;
  NSString *deviceString_;
}

@end

J2OBJC_FIELD_SETTER(AMApiConfiguration, appTitle_, NSString *)
J2OBJC_FIELD_SETTER(AMApiConfiguration, appKey_, NSString *)
J2OBJC_FIELD_SETTER(AMApiConfiguration, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(AMApiConfiguration, deviceString_, NSString *)

@implementation AMApiConfiguration

- (instancetype)initWithAppTitle:(NSString *)appTitle
                       withAppId:(jint)appId
                      withAppKey:(NSString *)appKey
                 withDeviceTitle:(NSString *)deviceTitle
                    withDeviceId:(NSString *)deviceString {
  AMApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(self, appTitle, appId, appKey, deviceTitle, deviceString);
  return self;
}

- (NSString *)getAppTitle {
  return appTitle_;
}

- (jint)getAppId {
  return appId_;
}

- (NSString *)getAppKey {
  return appKey_;
}

- (NSString *)getDeviceTitle {
  return deviceTitle_;
}

- (NSString *)getDeviceString {
  return deviceString_;
}

@end

void AMApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(AMApiConfiguration *self, NSString *appTitle, jint appId, NSString *appKey, NSString *deviceTitle, NSString *deviceString) {
  (void) NSObject_init(self);
  self->appTitle_ = appTitle;
  self->appId_ = appId;
  self->appKey_ = appKey;
  self->deviceTitle_ = deviceTitle;
  self->deviceString_ = deviceString;
}

AMApiConfiguration *new_AMApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(NSString *appTitle, jint appId, NSString *appKey, NSString *deviceTitle, NSString *deviceString) {
  AMApiConfiguration *self = [AMApiConfiguration alloc];
  AMApiConfiguration_initWithAppTitle_withAppId_withAppKey_withDeviceTitle_withDeviceId_(self, appTitle, appId, appKey, deviceTitle, deviceString);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMApiConfiguration)
