//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/ServiceExUnsupported.java
//

#ifndef _APServiceExUnsupported_H_
#define _APServiceExUnsupported_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface APServiceExUnsupported : APServiceEx

#pragma mark Public

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(APServiceExUnsupported)

FOUNDATION_EXPORT void APServiceExUnsupported_initWithInt_withByteArray_(APServiceExUnsupported *self, jint key, IOSByteArray *content);

FOUNDATION_EXPORT APServiceExUnsupported *new_APServiceExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APServiceExUnsupported)

typedef APServiceExUnsupported ImActorModelApiServiceExUnsupported;

#endif // _APServiceExUnsupported_H_
