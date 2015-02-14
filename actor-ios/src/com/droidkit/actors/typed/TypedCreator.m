//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/typed/TypedCreator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/ActorRef.h"
#include "com/droidkit/actors/ActorSystem.h"
#include "com/droidkit/actors/concurrency/Future.h"
#include "com/droidkit/actors/typed/ClientFuture.h"
#include "com/droidkit/actors/typed/TypedCreator.h"
#include "com/droidkit/actors/typed/messages/TypedRequest.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/Throwable.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Proxy.h"

@interface ComDroidkitActorsTypedTypedCreator_$1 () {
 @public
  DAActorRef *val$ref_;
}
@end

J2OBJC_FIELD_SETTER(ComDroidkitActorsTypedTypedCreator_$1, val$ref_, DAActorRef *)

@implementation ComDroidkitActorsTypedTypedCreator

+ (id)typedWithDAActorRef:(DAActorRef *)ref
             withIOSClass:(IOSClass *)tClass {
  return ComDroidkitActorsTypedTypedCreator_typedWithDAActorRef_withIOSClass_(ref, tClass);
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "typedWithDAActorRef:withIOSClass:", "typed", "TT;", 0x9, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsTypedTypedCreator = { 1, "TypedCreator", "com.droidkit.actors.typed", NULL, 0x1, 2, methods, 0, NULL, 0, NULL};
  return &_ComDroidkitActorsTypedTypedCreator;
}

@end

id ComDroidkitActorsTypedTypedCreator_typedWithDAActorRef_withIOSClass_(DAActorRef *ref, IOSClass *tClass) {
  ComDroidkitActorsTypedTypedCreator_init();
  return (id) JavaLangReflectProxy_newProxyInstanceWithJavaLangClassLoader_withIOSClassArray_withJavaLangReflectInvocationHandler_([((DAActorSystem *) nil_chk([((DAActorRef *) nil_chk(ref)) system])) getClassLoader], [IOSObjectArray arrayWithObjects:(id[]){ tClass } count:1 type:IOSClass_class_()], [[[ComDroidkitActorsTypedTypedCreator_$1 alloc] initWithDAActorRef:ref] autorelease]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsTypedTypedCreator)

@implementation ComDroidkitActorsTypedTypedCreator_$1

- (id)invokeWithId:(id)proxy
withJavaLangReflectMethod:(JavaLangReflectMethod *)method
 withNSObjectArray:(IOSObjectArray *)args {
  ComDroidkitActorsTypedClientFuture *future = nil;
  if ([((IOSClass *) nil_chk([((JavaLangReflectMethod *) nil_chk(method)) getReturnType])) isEqual:ComDroidkitActorsConcurrencyFuture_class_()]) {
    future = [[[ComDroidkitActorsTypedClientFuture alloc] init] autorelease];
  }
  [((DAActorRef *) nil_chk(val$ref_)) sendWithId:[[[ComDroidkitActorsTypedMessagesTypedRequest alloc] initWithComDroidkitActorsTypedClientFuture:future withJavaLangReflectMethod:method withNSObjectArray:args] autorelease]];
  return future;
}

- (instancetype)initWithDAActorRef:(DAActorRef *)capture$0 {
  ComDroidkitActorsTypedTypedCreator_$1_set_val$ref_(self, capture$0);
  return [super init];
}

- (void)dealloc {
  RELEASE_(val$ref_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(ComDroidkitActorsTypedTypedCreator_$1 *)other {
  [super copyAllFieldsTo:other];
  ComDroidkitActorsTypedTypedCreator_$1_set_val$ref_(other, val$ref_);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "invokeWithId:withJavaLangReflectMethod:withNSObjectArray:", "invoke", "Ljava.lang.Object;", 0x1, "Ljava.lang.Throwable;" },
    { "initWithDAActorRef:", "init", NULL, 0x0, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$ref_", NULL, 0x1012, "Lcom.droidkit.actors.ActorRef;", NULL,  },
  };
  static const J2ObjcClassInfo _ComDroidkitActorsTypedTypedCreator_$1 = { 1, "$1", "com.droidkit.actors.typed", "TypedCreator", 0x8000, 2, methods, 1, fields, 0, NULL};
  return &_ComDroidkitActorsTypedTypedCreator_$1;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComDroidkitActorsTypedTypedCreator_$1)