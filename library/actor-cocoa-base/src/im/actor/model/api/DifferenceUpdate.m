//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DifferenceUpdate.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/DifferenceUpdate.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DifferenceUpdate.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiDifferenceUpdate () {
 @public
  jint updateHeader_;
  IOSByteArray *update_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiDifferenceUpdate, update_, IOSByteArray *)


#line 23
@implementation ImActorModelApiDifferenceUpdate


#line 28
- (instancetype)initWithInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update {
  ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(self, updateHeader, update);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiDifferenceUpdate_init(self);
  return self;
}


#line 37
- (jint)getUpdateHeader {
  return self->updateHeader_;
}

- (IOSByteArray *)getUpdate {
  return self->update_;
}


#line 46
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->updateHeader_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->update_ = [values getBytesWithInt:2];
}


#line 52
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->updateHeader_];
  if (self->update_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:2 withByteArray:self->update_];
}


#line 61
- (NSString *)description {
  NSString *res = @"struct DifferenceUpdate{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"updateHeader=", self->updateHeader_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", update=", BSUtils_byteArrayToStringCompactWithByteArray_(self->update_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 28
void ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(ImActorModelApiDifferenceUpdate *self, jint updateHeader, IOSByteArray *update) {
  (void) BSBserObject_init(self);
  
#line 29
  self->updateHeader_ = updateHeader;
  self->update_ = update;
}


#line 28
ImActorModelApiDifferenceUpdate *new_ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(jint updateHeader, IOSByteArray *update) {
  ImActorModelApiDifferenceUpdate *self = [ImActorModelApiDifferenceUpdate alloc];
  ImActorModelApiDifferenceUpdate_initWithInt_withByteArray_(self, updateHeader, update);
  return self;
}


#line 33
void ImActorModelApiDifferenceUpdate_init(ImActorModelApiDifferenceUpdate *self) {
  (void) BSBserObject_init(self);
}


#line 33
ImActorModelApiDifferenceUpdate *new_ImActorModelApiDifferenceUpdate_init() {
  ImActorModelApiDifferenceUpdate *self = [ImActorModelApiDifferenceUpdate alloc];
  ImActorModelApiDifferenceUpdate_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiDifferenceUpdate)