//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/IndefiniteLengthInputStream.java
//

#ifndef _OrgBouncycastleAsn1IndefiniteLengthInputStream_H_
#define _OrgBouncycastleAsn1IndefiniteLengthInputStream_H_

@class IOSByteArray;
@class JavaIoInputStream;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/LimitedInputStream.h"

@interface OrgBouncycastleAsn1IndefiniteLengthInputStream : OrgBouncycastleAsn1LimitedInputStream {
}

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)inArg
                                  withInt:(jint)limit;

- (void)setEofOn00WithBoolean:(jboolean)eofOn00;

- (jint)readWithByteArray:(IOSByteArray *)b
                  withInt:(jint)off
                  withInt:(jint)len;

- (jint)read;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1IndefiniteLengthInputStream)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1IndefiniteLengthInputStream)

#endif // _OrgBouncycastleAsn1IndefiniteLengthInputStream_H_