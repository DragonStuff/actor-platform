//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/WNafUtil.java
//

#ifndef _OrgBouncycastleMathEcWNafUtil_H_
#define _OrgBouncycastleMathEcWNafUtil_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class IOSIntArray;
@class JavaMathBigInteger;
@class OrgBouncycastleMathEcECPoint;
@class OrgBouncycastleMathEcWNafPreCompInfo;
@protocol OrgBouncycastleMathEcECPointMap;
@protocol OrgBouncycastleMathEcPreCompInfo;

@interface OrgBouncycastleMathEcWNafUtil : NSObject

#pragma mark Public

- (instancetype)init;

+ (IOSIntArray *)generateCompactNafWithJavaMathBigInteger:(JavaMathBigInteger *)k;

+ (IOSIntArray *)generateCompactWindowNafWithInt:(jint)width
                          withJavaMathBigInteger:(JavaMathBigInteger *)k;

+ (IOSByteArray *)generateJSFWithJavaMathBigInteger:(JavaMathBigInteger *)g
                             withJavaMathBigInteger:(JavaMathBigInteger *)h;

+ (IOSByteArray *)generateNafWithJavaMathBigInteger:(JavaMathBigInteger *)k;

+ (IOSByteArray *)generateWindowNafWithInt:(jint)width
                    withJavaMathBigInteger:(JavaMathBigInteger *)k;

+ (jint)getNafWeightWithJavaMathBigInteger:(JavaMathBigInteger *)k;

+ (jint)getWindowSizeWithInt:(jint)bits;

+ (jint)getWindowSizeWithInt:(jint)bits
                withIntArray:(IOSIntArray *)windowSizeCutoffs;

+ (OrgBouncycastleMathEcWNafPreCompInfo *)getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p;

+ (OrgBouncycastleMathEcWNafPreCompInfo *)getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo;

+ (OrgBouncycastleMathEcECPoint *)mapPointWithPrecompWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                                              withInt:(jint)width
                                                                          withBoolean:(jboolean)includeNegated
                                                  withOrgBouncycastleMathEcECPointMap:(id<OrgBouncycastleMathEcECPointMap>)pointMap;

+ (OrgBouncycastleMathEcWNafPreCompInfo *)precomputeWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                                             withInt:(jint)width
                                                                         withBoolean:(jboolean)includeNegated;

@end

J2OBJC_STATIC_INIT(OrgBouncycastleMathEcWNafUtil)

FOUNDATION_EXPORT NSString *OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcWNafUtil, PRECOMP_NAME_, NSString *)

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcWNafUtil_generateCompactNafWithJavaMathBigInteger_(JavaMathBigInteger *k);

FOUNDATION_EXPORT IOSIntArray *OrgBouncycastleMathEcWNafUtil_generateCompactWindowNafWithInt_withJavaMathBigInteger_(jint width, JavaMathBigInteger *k);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateJSFWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *g, JavaMathBigInteger *h);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateNafWithJavaMathBigInteger_(JavaMathBigInteger *k);

FOUNDATION_EXPORT IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(jint width, JavaMathBigInteger *k);

FOUNDATION_EXPORT jint OrgBouncycastleMathEcWNafUtil_getNafWeightWithJavaMathBigInteger_(JavaMathBigInteger *k);

FOUNDATION_EXPORT OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECPoint *p);

FOUNDATION_EXPORT OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_(id<OrgBouncycastleMathEcPreCompInfo> preCompInfo);

FOUNDATION_EXPORT jint OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(jint bits);

FOUNDATION_EXPORT jint OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_withIntArray_(jint bits, IOSIntArray *windowSizeCutoffs);

FOUNDATION_EXPORT OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcWNafUtil_mapPointWithPrecompWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_withOrgBouncycastleMathEcECPointMap_(OrgBouncycastleMathEcECPoint *p, jint width, jboolean includeNegated, id<OrgBouncycastleMathEcECPointMap> pointMap);

FOUNDATION_EXPORT OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(OrgBouncycastleMathEcECPoint *p, jint width, jboolean includeNegated);

FOUNDATION_EXPORT void OrgBouncycastleMathEcWNafUtil_init(OrgBouncycastleMathEcWNafUtil *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleMathEcWNafUtil)

#endif // _OrgBouncycastleMathEcWNafUtil_H_
