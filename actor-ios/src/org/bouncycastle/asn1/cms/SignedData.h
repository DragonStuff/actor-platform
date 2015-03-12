//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/SignedData.java
//

#ifndef _OrgBouncycastleAsn1CmsSignedData_H_
#define _OrgBouncycastleAsn1CmsSignedData_H_

@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1ObjectIdentifier;
@class OrgBouncycastleAsn1ASN1Primitive;
@class OrgBouncycastleAsn1ASN1Sequence;
@class OrgBouncycastleAsn1ASN1Set;
@class OrgBouncycastleAsn1CmsContentInfo;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Object.h"

@interface OrgBouncycastleAsn1CmsSignedData : OrgBouncycastleAsn1ASN1Object {
}

+ (OrgBouncycastleAsn1CmsSignedData *)getInstanceWithId:(id)o;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)digestAlgorithms
             withOrgBouncycastleAsn1CmsContentInfo:(OrgBouncycastleAsn1CmsContentInfo *)contentInfo
                    withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)certificates
                    withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)crls
                    withOrgBouncycastleAsn1ASN1Set:(OrgBouncycastleAsn1ASN1Set *)signerInfos;

- (OrgBouncycastleAsn1ASN1Integer *)getVersion;

- (OrgBouncycastleAsn1ASN1Set *)getDigestAlgorithms;

- (OrgBouncycastleAsn1CmsContentInfo *)getEncapContentInfo;

- (OrgBouncycastleAsn1ASN1Set *)getCertificates;

- (OrgBouncycastleAsn1ASN1Set *)getCRLs;

- (OrgBouncycastleAsn1ASN1Set *)getSignerInfos;

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive;

@end

FOUNDATION_EXPORT BOOL OrgBouncycastleAsn1CmsSignedData_initialized;
J2OBJC_STATIC_INIT(OrgBouncycastleAsn1CmsSignedData)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1CmsSignedData *OrgBouncycastleAsn1CmsSignedData_getInstanceWithId_(id o);

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1CmsSignedData_VERSION_1_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1CmsSignedData, VERSION_1_, OrgBouncycastleAsn1ASN1Integer *)

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1CmsSignedData_VERSION_3_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1CmsSignedData, VERSION_3_, OrgBouncycastleAsn1ASN1Integer *)

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1CmsSignedData_VERSION_4_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1CmsSignedData, VERSION_4_, OrgBouncycastleAsn1ASN1Integer *)

FOUNDATION_EXPORT OrgBouncycastleAsn1ASN1Integer *OrgBouncycastleAsn1CmsSignedData_VERSION_5_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleAsn1CmsSignedData, VERSION_5_, OrgBouncycastleAsn1ASN1Integer *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsSignedData)

#endif // _OrgBouncycastleAsn1CmsSignedData_H_