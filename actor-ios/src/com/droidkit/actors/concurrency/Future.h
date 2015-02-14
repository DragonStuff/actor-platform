//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/concurrency/Future.java
//

#ifndef _ComDroidkitActorsConcurrencyFuture_H_
#define _ComDroidkitActorsConcurrencyFuture_H_

@class JavaLangThrowable;
@class JavaUtilLinkedList;
@protocol ComDroidkitActorsConcurrencyFutureCallback;

#include "J2ObjC_header.h"

@interface ComDroidkitActorsConcurrencyFuture : NSObject {
}

- (jboolean)isCompleted;

- (jboolean)isError;

- (jboolean)isCanceled;

- (JavaLangThrowable *)error;

- (id)get;

- (jboolean)addListenerWithComDroidkitActorsConcurrencyFutureCallback:(id<ComDroidkitActorsConcurrencyFutureCallback>)callback;

- (void)removeListenerWithComDroidkitActorsConcurrencyFutureCallback:(id<ComDroidkitActorsConcurrencyFutureCallback>)callback;

- (void)onCancel;

- (void)onCompletedWithId:(id)res;

- (void)onErrorWithJavaLangThrowable:(JavaLangThrowable *)throwable;

- (void)onTimeout;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ComDroidkitActorsConcurrencyFuture)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ComDroidkitActorsConcurrencyFuture)

#endif // _ComDroidkitActorsConcurrencyFuture_H_