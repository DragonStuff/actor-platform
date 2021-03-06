//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSubscribeToGroupOnline.java
//

#ifndef _APRequestSubscribeToGroupOnline_H_
#define _APRequestSubscribeToGroupOnline_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APRequestSubscribeToGroupOnline_HEADER 74

@interface APRequestSubscribeToGroupOnline : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)groups;

+ (APRequestSubscribeToGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSubscribeToGroupOnline)

J2OBJC_STATIC_FIELD_GETTER(APRequestSubscribeToGroupOnline, HEADER, jint)

FOUNDATION_EXPORT APRequestSubscribeToGroupOnline *APRequestSubscribeToGroupOnline_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSubscribeToGroupOnline_initWithJavaUtilList_(APRequestSubscribeToGroupOnline *self, id<JavaUtilList> groups);

FOUNDATION_EXPORT APRequestSubscribeToGroupOnline *new_APRequestSubscribeToGroupOnline_initWithJavaUtilList_(id<JavaUtilList> groups) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestSubscribeToGroupOnline_init(APRequestSubscribeToGroupOnline *self);

FOUNDATION_EXPORT APRequestSubscribeToGroupOnline *new_APRequestSubscribeToGroupOnline_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSubscribeToGroupOnline)

typedef APRequestSubscribeToGroupOnline ImActorModelApiRpcRequestSubscribeToGroupOnline;

#endif // _APRequestSubscribeToGroupOnline_H_
