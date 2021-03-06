//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/droidkit/engine/ListEngine.java
//

#ifndef _DKListEngine_H_
#define _DKListEngine_H_

#include "J2ObjC_header.h"

@class BSBserObject;
@class IOSLongArray;
@protocol DKListEngineItem;
@protocol JavaUtilList;

@protocol DKListEngine < NSObject, JavaObject >

- (void)addOrUpdateItem:(BSBserObject<DKListEngineItem> *)item;

- (void)addOrUpdateItems:(id<JavaUtilList>)items;

- (void)replaceItems:(id<JavaUtilList>)items;

- (void)removeItemWithKey:(jlong)key;

- (void)removeItemsWithKeys:(IOSLongArray *)keys;

- (void)clear;

- (id)getValueWithKey:(jlong)key;

- (id)getHeadValue;

- (jboolean)isEmpty;

- (jint)getCount;

@end

J2OBJC_EMPTY_STATIC_INIT(DKListEngine)

J2OBJC_TYPE_LITERAL_HEADER(DKListEngine)

#define ImActorModelDroidkitEngineListEngine DKListEngine

#endif // _DKListEngine_H_
