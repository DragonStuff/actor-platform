//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/util/JavaUtil.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/util/JavaUtil.h"

@implementation AMJavaUtil

+ (jboolean)equalsEWithId:(id)a
                   withId:(id)b {
  return AMJavaUtil_equalsEWithId_withId_(a, b);
}

- (instancetype)init {
  AMJavaUtil_init(self);
  return self;
}

@end

jboolean AMJavaUtil_equalsEWithId_withId_(id a, id b) {
  AMJavaUtil_initialize();
  if (a == nil && b == nil) {
    return YES;
  }
  if (a != nil && b == nil) {
    return NO;
  }
  if (a == nil) {
    return NO;
  }
  return [nil_chk(a) isEqual:b];
}

void AMJavaUtil_init(AMJavaUtil *self) {
  (void) NSObject_init(self);
}

AMJavaUtil *new_AMJavaUtil_init() {
  AMJavaUtil *self = [AMJavaUtil alloc];
  AMJavaUtil_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMJavaUtil)
