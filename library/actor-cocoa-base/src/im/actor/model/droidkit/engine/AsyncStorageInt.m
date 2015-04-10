//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/AsyncStorageInt.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/engine/AsyncStorageInt.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/bser/BserCreator.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/engine/AsyncStorageActor.h"
#include "im/actor/model/droidkit/engine/AsyncStorageInt.h"
#include "im/actor/model/droidkit/engine/ListEngineDisplayLoadCallback.h"
#include "im/actor/model/droidkit/engine/ListEngineItem.h"
#include "im/actor/model/droidkit/engine/ListStorageDisplayEx.h"
#include "java/lang/Integer.h"
#include "java/lang/InterruptedException.h"
#include "java/lang/Long.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface DKAsyncStorageInt () {
 @public
  DKActorRef *storageActor_;
}
@end

J2OBJC_FIELD_SETTER(DKAsyncStorageInt, storageActor_, DKActorRef *)

@interface DKAsyncStorageInt_$1 () {
 @public
  id<DKListStorageDisplayEx> val$storage_;
  id<BSBserCreator> val$creator_;
}
@end

J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$1, val$storage_, id<DKListStorageDisplayEx>)
J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$1, val$creator_, id<BSBserCreator>)

@interface DKAsyncStorageInt_$2 () {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}
@end

J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$2, val$lock_, id)
J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$2, val$resultList_, id<JavaUtilList>)

@interface DKAsyncStorageInt_$3 () {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}
@end

J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$3, val$lock_, id)
J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$3, val$resultList_, id<JavaUtilList>)

@interface DKAsyncStorageInt_$4 () {
 @public
  id val$lock_;
  id<JavaUtilList> val$resultList_;
}
@end

J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$4, val$lock_, id)
J2OBJC_FIELD_SETTER(DKAsyncStorageInt_$4, val$resultList_, id<JavaUtilList>)


#line 17
@implementation DKAsyncStorageInt

jint DKAsyncStorageInt_NEXT_ID_ = 0;


#line 23
- (instancetype)initWithDKListStorageDisplayEx:(id<DKListStorageDisplayEx>)storage
                             withBSBserCreator:(id<BSBserCreator>)creator {
  if (self = [super init]) {
    
#line 24
    storageActor_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:[((DKProps *) nil_chk(DKProps_createWithIOSClass_withDKActorCreator_(DKAsyncStorageActor_class_(), [[DKAsyncStorageInt_$1 alloc] initWithDKListStorageDisplayEx:storage withBSBserCreator:creator]))) changeDispatcherWithNSString:
#line 29
    @"db"] withNSString:JreStrcat("$I", @"list_engine/", DKAsyncStorageInt_NEXT_ID_++)];
  }
  return self;
}


#line 32
- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)items {
  
#line 33
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_AddOrUpdate alloc] initWithJavaUtilList:items]];
}


#line 36
- (void)replaceItemsWithJavaUtilList:(id<JavaUtilList>)items {
  
#line 37
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_Replace alloc] initWithJavaUtilList:items]];
}


#line 40
- (void)removeWithLongArray:(IOSLongArray *)keys {
  
#line 41
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_Remove alloc] initWithLongArray:keys]];
}


#line 44
- (void)clear {
  
#line 45
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_Clear alloc] init]];
}

- (id)getValueWithLong:(jlong)value {
  
#line 51
  id lock = [[NSObject alloc] init];
  id<JavaUtilList> resultList = [[JavaUtilArrayList alloc] init];
  @synchronized(lock) {
    [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_LoadItem alloc] initWithLong:value withDKAsyncStorageActor_LoadItemCallback:[[DKAsyncStorageInt_$2 alloc] initWithId:lock withJavaUtilList:resultList]]];
    
#line 66
    @try {
      [lock wait];
    }
    @catch (
#line 68
    JavaLangInterruptedException *e) {
      return nil;
    }
    
#line 72
    if ([resultList size] > 0) {
      return [resultList getWithInt:0];
    }
    else {
      
#line 75
      return nil;
    }
  }
}

- (id)getHeadValue {
  
#line 81
  id lock = [[NSObject alloc] init];
  id<JavaUtilList> resultList = [[JavaUtilArrayList alloc] init];
  @synchronized(lock) {
    [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_LoadHead alloc] initWithDKAsyncStorageActor_LoadItemCallback:[[DKAsyncStorageInt_$3 alloc] initWithId:lock withJavaUtilList:resultList]]];
    
#line 96
    @try {
      [lock wait];
    }
    @catch (
#line 98
    JavaLangInterruptedException *e) {
      return nil;
    }
    
#line 102
    if ([resultList size] > 0) {
      return [resultList getWithInt:0];
    }
    else {
      
#line 105
      return nil;
    }
  }
}

- (jint)getCount {
  
#line 111
  id lock = [[NSObject alloc] init];
  id<JavaUtilList> resultList = [[JavaUtilArrayList alloc] init];
  @synchronized(lock) {
    [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_LoadCount alloc] initWithDKAsyncStorageActor_LoadCountCallback:[[DKAsyncStorageInt_$4 alloc] initWithId:lock withJavaUtilList:resultList]]];
    
#line 124
    @try {
      [lock wait];
    }
    @catch (
#line 126
    JavaLangInterruptedException *e) {
      return 0;
    }
    
#line 130
    if ([resultList size] > 0) {
      return [((JavaLangInteger *) nil_chk([resultList getWithInt:0])) intValue];
    }
    else {
      
#line 133
      return 0;
    }
  }
}

- (void)loadForwardWithNSString:(NSString *)query
               withJavaLangLong:(JavaLangLong *)afterSortKey
                        withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  
#line 141
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_LoadForward alloc] initWithNSString:query withJavaLangLong:afterSortKey withInt:limit withDKListEngineDisplayLoadCallback:callback]];
}


#line 144
- (void)loadBackwardWithNSString:(NSString *)query
                withJavaLangLong:(JavaLangLong *)beforeSortKey
                         withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  
#line 145
  [((DKActorRef *) nil_chk(storageActor_)) sendWithId:[[DKAsyncStorageActor_LoadBackward alloc] initWithNSString:query withJavaLangLong:beforeSortKey withInt:limit withDKListEngineDisplayLoadCallback:callback]];
}


#line 148
- (void)loadCenterWithLong:(jlong)centerSortKey
                   withInt:(jint)limit
withDKListEngineDisplayLoadCallback:(id<DKListEngineDisplayLoadCallback>)callback {
  
#line 149
  @throw [[JavaLangRuntimeException alloc] initWithNSString:@"Unsupported"];
}

- (void)copyAllFieldsTo:(DKAsyncStorageInt *)other {
  [super copyAllFieldsTo:other];
  other->storageActor_ = storageActor_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncStorageInt)

@implementation DKAsyncStorageInt_$1


#line 26
- (DKAsyncStorageActor *)create {
  
#line 27
  return [[DKAsyncStorageActor alloc] initWithDKListStorageDisplayEx:val$storage_ withBSBserCreator:val$creator_];
}

- (instancetype)initWithDKListStorageDisplayEx:(id<DKListStorageDisplayEx>)capture$0
                             withBSBserCreator:(id<BSBserCreator>)capture$1 {
  val$storage_ = capture$0;
  val$creator_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(DKAsyncStorageInt_$1 *)other {
  [super copyAllFieldsTo:other];
  other->val$storage_ = val$storage_;
  other->val$creator_ = val$creator_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncStorageInt_$1)

@implementation DKAsyncStorageInt_$2


#line 56
- (void)onLoadedWithBSBserObject:(BSBserObject<DKListEngineItem> *)item {
  
#line 57
  @synchronized(val$lock_) {
    if (item != nil) {
      [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:item];
    }
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  val$lock_ = capture$0;
  val$resultList_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(DKAsyncStorageInt_$2 *)other {
  [super copyAllFieldsTo:other];
  other->val$lock_ = val$lock_;
  other->val$resultList_ = val$resultList_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncStorageInt_$2)

@implementation DKAsyncStorageInt_$3

- (void)onLoadedWithBSBserObject:(BSBserObject<DKListEngineItem> *)item {
  
#line 87
  @synchronized(val$lock_) {
    if (item != nil) {
      [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:item];
    }
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  val$lock_ = capture$0;
  val$resultList_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(DKAsyncStorageInt_$3 *)other {
  [super copyAllFieldsTo:other];
  other->val$lock_ = val$lock_;
  other->val$resultList_ = val$resultList_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncStorageInt_$3)

@implementation DKAsyncStorageInt_$4

- (void)onLoadedWithInt:(jint)count {
  
#line 117
  @synchronized(val$lock_) {
    [((id<JavaUtilList>) nil_chk(val$resultList_)) addWithId:JavaLangInteger_valueOfWithInt_(count)];
    [nil_chk(val$lock_) notify];
  }
}

- (instancetype)initWithId:(id)capture$0
          withJavaUtilList:(id<JavaUtilList>)capture$1 {
  val$lock_ = capture$0;
  val$resultList_ = capture$1;
  return [super init];
}

- (void)copyAllFieldsTo:(DKAsyncStorageInt_$4 *)other {
  [super copyAllFieldsTo:other];
  other->val$lock_ = val$lock_;
  other->val$resultList_ = val$resultList_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKAsyncStorageInt_$4)