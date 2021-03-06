//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestUnregisterPush.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestUnregisterPush.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@implementation APRequestUnregisterPush

+ (APRequestUnregisterPush *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestUnregisterPush_fromBytesWithByteArray_(data);
}

- (instancetype)init {
  APRequestUnregisterPush_init(self);
  return self;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
}

- (NSString *)description {
  NSString *res = @"rpc UnregisterPush{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestUnregisterPush_HEADER;
}

@end

APRequestUnregisterPush *APRequestUnregisterPush_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestUnregisterPush_initialize();
  return ((APRequestUnregisterPush *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestUnregisterPush_init(), data));
}

void APRequestUnregisterPush_init(APRequestUnregisterPush *self) {
  (void) APRequest_init(self);
}

APRequestUnregisterPush *new_APRequestUnregisterPush_init() {
  APRequestUnregisterPush *self = [APRequestUnregisterPush alloc];
  APRequestUnregisterPush_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestUnregisterPush)
