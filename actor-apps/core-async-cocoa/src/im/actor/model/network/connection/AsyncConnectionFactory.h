//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/connection/AsyncConnectionFactory.java
//

#ifndef _AMAsyncConnectionFactory_H_
#define _AMAsyncConnectionFactory_H_

#include "J2ObjC_header.h"

@class AMAsyncConnection;
@class AMConnectionEndpoint;
@protocol AMAsyncConnectionInterface;

@protocol AMAsyncConnectionFactory < NSObject, JavaObject >

- (AMAsyncConnection *)createConnectionWithConnectionId:(jint)connectionId
                                           withEndpoint:(AMConnectionEndpoint *)endpoint
                                          withInterface:(id<AMAsyncConnectionInterface>)connectionInterface;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAsyncConnectionFactory)

J2OBJC_TYPE_LITERAL_HEADER(AMAsyncConnectionFactory)

#define ImActorModelNetworkConnectionAsyncConnectionFactory AMAsyncConnectionFactory

#endif // _AMAsyncConnectionFactory_H_
