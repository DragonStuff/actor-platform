//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateCallRing.java
//

#ifndef _ImActorModelApiUpdatesUpdateCallRing_H_
#define _ImActorModelApiUpdatesUpdateCallRing_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiUser;

#define ImActorModelApiUpdatesUpdateCallRing_HEADER 49

@interface ImActorModelApiUpdatesUpdateCallRing : ImActorModelNetworkParserUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelApiUser:(ImActorModelApiUser *)user
                               withNSString:(NSString *)callId;

+ (ImActorModelApiUpdatesUpdateCallRing *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getCallId;

- (jint)getHeaderKey;

- (ImActorModelApiUser *)getUser;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateCallRing)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateCallRing, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateCallRing *ImActorModelApiUpdatesUpdateCallRing_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdateCallRing_initWithImActorModelApiUser_withNSString_(ImActorModelApiUpdatesUpdateCallRing *self, ImActorModelApiUser *user, NSString *callId);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateCallRing *new_ImActorModelApiUpdatesUpdateCallRing_initWithImActorModelApiUser_withNSString_(ImActorModelApiUser *user, NSString *callId) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiUpdatesUpdateCallRing_init(ImActorModelApiUpdatesUpdateCallRing *self);

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateCallRing *new_ImActorModelApiUpdatesUpdateCallRing_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateCallRing)

#endif // _ImActorModelApiUpdatesUpdateCallRing_H_