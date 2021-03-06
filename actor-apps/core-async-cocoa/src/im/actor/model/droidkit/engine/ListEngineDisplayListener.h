//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/droidkit/engine/ListEngineDisplayListener.java
//

#ifndef _DKListEngineDisplayListener_H_
#define _DKListEngineDisplayListener_H_

#include "J2ObjC_header.h"

@class IOSLongArray;
@protocol JavaUtilList;

@protocol DKListEngineDisplayListener < NSObject, JavaObject >

- (void)onItemRemovedWithKey:(jlong)key;

- (void)onItemsRemovedWithKeys:(IOSLongArray *)keys;

- (void)addOrUpdate:(id)item;

- (void)addOrUpdateWithList:(id<JavaUtilList>)items;

- (void)onItemsReplacedWithList:(id<JavaUtilList>)items;

- (void)onListClear;

@end

J2OBJC_EMPTY_STATIC_INIT(DKListEngineDisplayListener)

J2OBJC_TYPE_LITERAL_HEADER(DKListEngineDisplayListener)

#define ImActorModelDroidkitEngineListEngineDisplayListener DKListEngineDisplayListener

#endif // _DKListEngineDisplayListener_H_
