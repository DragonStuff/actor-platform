//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/BERSequenceGenerator.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/OutputStream.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/BERGenerator.h"
#include "org/bouncycastle/asn1/BEROutputStream.h"
#include "org/bouncycastle/asn1/BERSequenceGenerator.h"
#include "org/bouncycastle/asn1/BERTags.h"

@implementation OrgBouncycastleAsn1BERSequenceGenerator

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg {
  if (self = [super initWithJavaIoOutputStream:outArg]) {
    [self writeBERHeaderWithInt:OrgBouncycastleAsn1BERTags_CONSTRUCTED | OrgBouncycastleAsn1BERTags_SEQUENCE];
  }
  return self;
}

- (instancetype)initWithJavaIoOutputStream:(JavaIoOutputStream *)outArg
                                   withInt:(jint)tagNo
                               withBoolean:(jboolean)isExplicit {
  if (self = [super initWithJavaIoOutputStream:outArg withInt:tagNo withBoolean:isExplicit]) {
    [self writeBERHeaderWithInt:OrgBouncycastleAsn1BERTags_CONSTRUCTED | OrgBouncycastleAsn1BERTags_SEQUENCE];
  }
  return self;
}

- (void)addObjectWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)object {
  [((OrgBouncycastleAsn1ASN1Primitive *) nil_chk([((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(object)) toASN1Primitive])) encodeWithOrgBouncycastleAsn1ASN1OutputStream:[[OrgBouncycastleAsn1BEROutputStream alloc] initWithJavaIoOutputStream:_out_]];
}

- (void)close {
  [self writeBEREnd];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1BERSequenceGenerator)