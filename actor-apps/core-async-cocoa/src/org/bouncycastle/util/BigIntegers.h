//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/util/BigIntegers.java
//

#ifndef _OrgBouncycastleUtilBigIntegers_H_
#define _OrgBouncycastleUtilBigIntegers_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaMathBigInteger;
@protocol BCRandomProvider;

@interface OrgBouncycastleUtilBigIntegers : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSByteArray *)asUnsignedByteArrayWithJavaMathBigInteger:(JavaMathBigInteger *)value;

+ (IOSByteArray *)asUnsignedByteArrayWithInt:(jint)length
                      withJavaMathBigInteger:(JavaMathBigInteger *)value;

+ (JavaMathBigInteger *)createRandomInRangeWithJavaMathBigInteger:(JavaMathBigInteger *)min
                                           withJavaMathBigInteger:(JavaMathBigInteger *)max
                                             withBCRandomProvider:(id<BCRandomProvider>)random;

+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf;

+ (JavaMathBigInteger *)fromUnsignedByteArrayWithByteArray:(IOSByteArray *)buf
                                                   withInt:(jint)off
                                                   withInt:(jint)length;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleUtilBigIntegers)

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithJavaMathBigInteger_(JavaMathBigInteger *value);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleUtilBigIntegers_asUnsignedByteArrayWithInt_withJavaMathBigInteger_(jint length, JavaMathBigInteger *value);

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_createRandomInRangeWithJavaMathBigInteger_withJavaMathBigInteger_withBCRandomProvider_(JavaMathBigInteger *min, JavaMathBigInteger *max, id<BCRandomProvider> random);

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_(IOSByteArray *buf);

FOUNDATION_EXPORT JavaMathBigInteger *OrgBouncycastleUtilBigIntegers_fromUnsignedByteArrayWithByteArray_withInt_withInt_(IOSByteArray *buf, jint off, jint length);

FOUNDATION_EXPORT void OrgBouncycastleUtilBigIntegers_init(OrgBouncycastleUtilBigIntegers *self);

FOUNDATION_EXPORT OrgBouncycastleUtilBigIntegers *new_OrgBouncycastleUtilBigIntegers_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleUtilBigIntegers)

#endif // _OrgBouncycastleUtilBigIntegers_H_
