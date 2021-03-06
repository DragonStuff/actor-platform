//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1Sequence.java
//

#ifndef _BCASN1Sequence_H_
#define _BCASN1Sequence_H_

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"

@class BSDataInput;
@class BSDataOutput;
@class IOSObjectArray;
@class JavaUtilArrayList;
@protocol JavaUtilList;

@interface BCASN1Sequence : BCASN1Primitive

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithBCASN1PrimitiveArray:(IOSObjectArray *)sequence;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)sequence;

- (void)addWithBCASN1Primitive:(BCASN1Primitive *)item;

- (BCASN1Primitive *)getWithInt:(jint)index;

- (JavaUtilArrayList *)getSequence;

+ (BCASN1Sequence *)readSequenceWithBSDataInput:(BSDataInput *)dataInput;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(BCASN1Sequence)

FOUNDATION_EXPORT BCASN1Sequence *BCASN1Sequence_readSequenceWithBSDataInput_(BSDataInput *dataInput);

FOUNDATION_EXPORT void BCASN1Sequence_init(BCASN1Sequence *self);

FOUNDATION_EXPORT BCASN1Sequence *new_BCASN1Sequence_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void BCASN1Sequence_initWithJavaUtilList_(BCASN1Sequence *self, id<JavaUtilList> sequence);

FOUNDATION_EXPORT BCASN1Sequence *new_BCASN1Sequence_initWithJavaUtilList_(id<JavaUtilList> sequence) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void BCASN1Sequence_initWithBCASN1PrimitiveArray_(BCASN1Sequence *self, IOSObjectArray *sequence);

FOUNDATION_EXPORT BCASN1Sequence *new_BCASN1Sequence_initWithBCASN1PrimitiveArray_(IOSObjectArray *sequence) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(BCASN1Sequence)

typedef BCASN1Sequence ImActorModelCryptoAsn1ASN1Sequence;

#endif // _BCASN1Sequence_H_
