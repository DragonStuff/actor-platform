//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaAtomicInteger.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaAtomicInteger.java"

#include "J2ObjC_source.h"
#include "im/actor/model/jvm/threads/JavaAtomicInteger.h"
#include "im/actor/model/util/AtomicIntegerCompat.h"
#include "java/util/concurrent/atomic/AtomicInteger.h"

@interface ImActorModelJvmThreadsJavaAtomicInteger () {
 @public
  JavaUtilConcurrentAtomicAtomicInteger *atomicInteger_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelJvmThreadsJavaAtomicInteger, atomicInteger_, JavaUtilConcurrentAtomicAtomicInteger *)


#line 11
@implementation ImActorModelJvmThreadsJavaAtomicInteger


#line 15
- (instancetype)initWithInt:(jint)value {
  ImActorModelJvmThreadsJavaAtomicInteger_initWithInt_(self, value);
  return self;
}

- (jint)get {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) get];
}


#line 25
- (jint)incrementAndGet {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) incrementAndGet];
}


#line 30
- (jint)getAndIncrement {
  return [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) getAndIncrement];
}


#line 35
- (void)compareAndSetWithInt:(jint)exp
                     withInt:(jint)v {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) compareAndSetWithInt:exp withInt:v];
}

- (void)setWithInt:(jint)v {
  [((JavaUtilConcurrentAtomicAtomicInteger *) nil_chk(atomicInteger_)) setWithInt:v];
}

@end


#line 15
void ImActorModelJvmThreadsJavaAtomicInteger_initWithInt_(ImActorModelJvmThreadsJavaAtomicInteger *self, jint value) {
  (void) AMAtomicIntegerCompat_init(self);
  
#line 16
  self->atomicInteger_ = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(value);
}


#line 15
ImActorModelJvmThreadsJavaAtomicInteger *new_ImActorModelJvmThreadsJavaAtomicInteger_initWithInt_(jint value) {
  ImActorModelJvmThreadsJavaAtomicInteger *self = [ImActorModelJvmThreadsJavaAtomicInteger alloc];
  ImActorModelJvmThreadsJavaAtomicInteger_initWithInt_(self, value);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaAtomicInteger)