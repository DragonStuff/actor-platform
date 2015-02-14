//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/rpc/RequestCreateGroup.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/bser/Bser.h"
#include "com/droidkit/bser/BserObject.h"
#include "com/droidkit/bser/BserValues.h"
#include "com/droidkit/bser/BserWriter.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestCreateGroup.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiRpcRequestCreateGroup () {
 @public
  jlong rid_;
  NSString *title_;
  id<JavaUtilList> users_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestCreateGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestCreateGroup, users_, id<JavaUtilList>)

@implementation ImActorModelApiRpcRequestCreateGroup

+ (ImActorModelApiRpcRequestCreateGroup *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestCreateGroup_fromBytesWithByteArray_(data);
}

- (instancetype)initWithLong:(jlong)rid
                withNSString:(NSString *)title
            withJavaUtilList:(id<JavaUtilList>)users {
  if (self = [super init]) {
    self->rid_ = rid;
    ImActorModelApiRpcRequestCreateGroup_set_title_(self, title);
    ImActorModelApiRpcRequestCreateGroup_set_users_(self, users);
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jlong)getRid {
  return self->rid_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (id<JavaUtilList>)getUsers {
  return self->users_;
}

- (void)parseWithComDroidkitBserBserValues:(ComDroidkitBserBserValues *)values {
  self->rid_ = [((ComDroidkitBserBserValues *) nil_chk(values)) getLongWithInt:1];
  ImActorModelApiRpcRequestCreateGroup_set_title_(self, [values getStringWithInt:2]);
  ImActorModelApiRpcRequestCreateGroup_set_users_(self, [values getRepeatedObjWithInt:3 withIOSClass:ImActorModelApiUserOutPeer_class_()]);
}

- (void)serializeWithComDroidkitBserBserWriter:(ComDroidkitBserBserWriter *)writer {
  [((ComDroidkitBserBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->rid_];
  if (self->title_ == nil) {
    @throw [[[JavaIoIOException alloc] init] autorelease];
  }
  [writer writeStringWithInt:2 withNSString:self->title_];
  [writer writeRepeatedObjWithInt:3 withJavaUtilList:self->users_];
}

- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestCreateGroup_HEADER;
}

- (void)dealloc {
  RELEASE_(title_);
  RELEASE_(users_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ImActorModelApiRpcRequestCreateGroup *)other {
  [super copyAllFieldsTo:other];
  other->rid_ = rid_;
  ImActorModelApiRpcRequestCreateGroup_set_title_(other, title_);
  ImActorModelApiRpcRequestCreateGroup_set_users_(other, users_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.rpc.RequestCreateGroup;", 0x9, "Ljava.io.IOException;" },
    { "initWithLong:withNSString:withJavaUtilList:", "RequestCreateGroup", NULL, 0x1, NULL },
    { "init", "RequestCreateGroup", NULL, 0x1, NULL },
    { "getRid", NULL, "J", 0x1, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getUsers", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithComDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithComDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiRpcRequestCreateGroup_HEADER },
    { "rid_", NULL, 0x2, "J", NULL,  },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "users_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.api.rpc.ResponseCreateGroup;"};
  static const J2ObjcClassInfo _ImActorModelApiRpcRequestCreateGroup = { 1, "RequestCreateGroup", "im.actor.model.api.rpc", NULL, 0x1, 9, methods, 4, fields, 1, superclass_type_args};
  return &_ImActorModelApiRpcRequestCreateGroup;
}

@end

ImActorModelApiRpcRequestCreateGroup *ImActorModelApiRpcRequestCreateGroup_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestCreateGroup_init();
  return ((ImActorModelApiRpcRequestCreateGroup *) ComDroidkitBserBser_parseWithIOSClass_withByteArray_(ImActorModelApiRpcRequestCreateGroup_class_(), data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestCreateGroup)