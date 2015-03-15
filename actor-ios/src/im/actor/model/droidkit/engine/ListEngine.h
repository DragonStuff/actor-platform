//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/engine/ListEngine.java
//

#ifndef _ImActorModelDroidkitEngineListEngine_H_
#define _ImActorModelDroidkitEngineListEngine_H_

@class BSBserObject;
@class IOSLongArray;
@protocol ImActorModelDroidkitEngineListEngineItem;
@protocol JavaUtilList;

#include "J2ObjC_header.h"

@protocol ImActorModelDroidkitEngineListEngine < NSObject, JavaObject >

- (void)addOrUpdateItemWithBSBserObject:(BSBserObject<ImActorModelDroidkitEngineListEngineItem> *)item;

- (void)addOrUpdateItemsWithJavaUtilList:(id<JavaUtilList>)items;

- (void)replaceItemsWithJavaUtilList:(id<JavaUtilList>)items;

- (void)removeItemWithLong:(jlong)key;

- (void)removeItemsWithLongArray:(IOSLongArray *)keys;

- (void)clear;

- (id)getValueWithLong:(jlong)key;

- (id)getHeadValue;

- (jint)getCount;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelDroidkitEngineListEngine)

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelDroidkitEngineListEngine)

#endif // _ImActorModelDroidkitEngineListEngine_H_