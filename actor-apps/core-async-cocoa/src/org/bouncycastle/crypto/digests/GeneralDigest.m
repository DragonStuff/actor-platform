//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/digests/GeneralDigest.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/bouncycastle/crypto/digests/GeneralDigest.h"
#include "org/bouncycastle/util/Pack.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

#define OrgBouncycastleCryptoDigestsGeneralDigest_BYTE_LENGTH 64

@interface OrgBouncycastleCryptoDigestsGeneralDigest () {
 @public
  IOSByteArray *xBuf_;
  jint xBufOff_;
  jlong byteCount_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoDigestsGeneralDigest, xBuf_, IOSByteArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleCryptoDigestsGeneralDigest, BYTE_LENGTH, jint)

@implementation OrgBouncycastleCryptoDigestsGeneralDigest

- (instancetype)init {
  OrgBouncycastleCryptoDigestsGeneralDigest_init(self);
  return self;
}

- (instancetype)initWithOrgBouncycastleCryptoDigestsGeneralDigest:(OrgBouncycastleCryptoDigestsGeneralDigest *)t {
  OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(self, t);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)encodedState {
  OrgBouncycastleCryptoDigestsGeneralDigest_initWithByteArray_(self, encodedState);
  return self;
}

- (void)copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:(OrgBouncycastleCryptoDigestsGeneralDigest *)t {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(((OrgBouncycastleCryptoDigestsGeneralDigest *) nil_chk(t))->xBuf_, 0, xBuf_, 0, ((IOSByteArray *) nil_chk(t->xBuf_))->size_);
  xBufOff_ = t->xBufOff_;
  byteCount_ = t->byteCount_;
}

- (void)updateWithByte:(jbyte)inArg {
  *IOSByteArray_GetRef(nil_chk(xBuf_), xBufOff_++) = inArg;
  if (xBufOff_ == xBuf_->size_) {
    [self processWordWithByteArray:xBuf_ withInt:0];
    xBufOff_ = 0;
  }
  byteCount_++;
}

- (void)updateWithByteArray:(IOSByteArray *)inArg
                    withInt:(jint)inOff
                    withInt:(jint)len {
  while ((xBufOff_ != 0) && (len > 0)) {
    [self updateWithByte:IOSByteArray_Get(nil_chk(inArg), inOff)];
    inOff++;
    len--;
  }
  while (len > ((IOSByteArray *) nil_chk(xBuf_))->size_) {
    [self processWordWithByteArray:inArg withInt:inOff];
    inOff += xBuf_->size_;
    len -= xBuf_->size_;
    byteCount_ += xBuf_->size_;
  }
  while (len > 0) {
    [self updateWithByte:IOSByteArray_Get(nil_chk(inArg), inOff)];
    inOff++;
    len--;
  }
}

- (void)finish {
  jlong bitLength = (LShift64(byteCount_, 3));
  [self updateWithByte:(jbyte) 128];
  while (xBufOff_ != 0) {
    [self updateWithByte:(jbyte) 0];
  }
  [self processLengthWithLong:bitLength];
  [self processBlock];
}

- (void)reset {
  byteCount_ = 0;
  xBufOff_ = 0;
  for (jint i = 0; i < ((IOSByteArray *) nil_chk(xBuf_))->size_; i++) {
    *IOSByteArray_GetRef(xBuf_, i) = 0;
  }
}

- (void)populateStateWithByteArray:(IOSByteArray *)state {
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(xBuf_, 0, state, 0, xBufOff_);
  OrgBouncycastleUtilPack_intToBigEndianWithInt_withByteArray_withInt_(xBufOff_, state, 4);
  OrgBouncycastleUtilPack_longToBigEndianWithLong_withByteArray_withInt_(byteCount_, state, 8);
}

- (jint)getByteLength {
  return OrgBouncycastleCryptoDigestsGeneralDigest_BYTE_LENGTH;
}

@end

void OrgBouncycastleCryptoDigestsGeneralDigest_init(OrgBouncycastleCryptoDigestsGeneralDigest *self) {
  (void) NSObject_init(self);
  self->xBuf_ = [IOSByteArray newArrayWithLength:4];
  self->xBufOff_ = 0;
}

void OrgBouncycastleCryptoDigestsGeneralDigest_initWithOrgBouncycastleCryptoDigestsGeneralDigest_(OrgBouncycastleCryptoDigestsGeneralDigest *self, OrgBouncycastleCryptoDigestsGeneralDigest *t) {
  (void) NSObject_init(self);
  self->xBuf_ = [IOSByteArray newArrayWithLength:4];
  [self copyInWithOrgBouncycastleCryptoDigestsGeneralDigest:t];
}

void OrgBouncycastleCryptoDigestsGeneralDigest_initWithByteArray_(OrgBouncycastleCryptoDigestsGeneralDigest *self, IOSByteArray *encodedState) {
  (void) NSObject_init(self);
  self->xBuf_ = [IOSByteArray newArrayWithLength:4];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(encodedState, 0, self->xBuf_, 0, self->xBuf_->size_);
  self->xBufOff_ = OrgBouncycastleUtilPack_bigEndianToIntWithByteArray_withInt_(encodedState, 4);
  self->byteCount_ = OrgBouncycastleUtilPack_bigEndianToLongWithByteArray_withInt_(encodedState, 8);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoDigestsGeneralDigest)
