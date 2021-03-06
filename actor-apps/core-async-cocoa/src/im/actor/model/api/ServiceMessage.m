//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/ServiceMessage.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Message.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceMessage.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"

@interface APServiceMessage () {
 @public
  NSString *text_;
  APServiceEx *ext_;
}

@end

J2OBJC_FIELD_SETTER(APServiceMessage, text_, NSString *)
J2OBJC_FIELD_SETTER(APServiceMessage, ext_, APServiceEx *)

@implementation APServiceMessage

- (instancetype)initWithNSString:(NSString *)text
                 withAPServiceEx:(APServiceEx *)ext {
  APServiceMessage_initWithNSString_withAPServiceEx_(self, text, ext);
  return self;
}

- (instancetype)init {
  APServiceMessage_init(self);
  return self;
}

- (jint)getHeader {
  return 2;
}

- (NSString *)getText {
  return self->text_;
}

- (APServiceEx *)getExt {
  return self->ext_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->text_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  if ([values optBytesWithInt:3] != nil) {
    self->ext_ = APServiceEx_fromBytesWithByteArray_([values getBytesWithInt:3]);
  }
  if ([values hasRemaining]) {
    [self setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[values buildRemaining]];
  }
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->text_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->text_];
  if (self->ext_ != nil) {
    [writer writeBytesWithInt:3 withByteArray:[self->ext_ buildContainer]];
  }
  if ([self getUnmappedObjects] != nil) {
    ImActorModelDroidkitBserUtilSparseArray *unmapped = [self getUnmappedObjects];
    for (jint i = 0; i < [((ImActorModelDroidkitBserUtilSparseArray *) nil_chk(unmapped)) size]; i++) {
      jint key = [unmapped keyAtWithInt:i];
      [writer writeUnmappedWithInt:key withId:[unmapped getWithInt:key]];
    }
  }
}

- (NSString *)description {
  NSString *res = @"struct ServiceMessage{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"text=", self->text_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", ext=", (self->ext_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end

void APServiceMessage_initWithNSString_withAPServiceEx_(APServiceMessage *self, NSString *text, APServiceEx *ext) {
  (void) APMessage_init(self);
  self->text_ = text;
  self->ext_ = ext;
}

APServiceMessage *new_APServiceMessage_initWithNSString_withAPServiceEx_(NSString *text, APServiceEx *ext) {
  APServiceMessage *self = [APServiceMessage alloc];
  APServiceMessage_initWithNSString_withAPServiceEx_(self, text, ext);
  return self;
}

void APServiceMessage_init(APServiceMessage *self) {
  (void) APMessage_init(self);
}

APServiceMessage *new_APServiceMessage_init() {
  APServiceMessage *self = [APServiceMessage alloc];
  APServiceMessage_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APServiceMessage)
