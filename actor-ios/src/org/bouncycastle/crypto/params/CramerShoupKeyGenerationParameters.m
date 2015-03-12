//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters.java
//

#include "J2ObjC_source.h"
#include "java/math/BigInteger.h"
#include "java/security/SecureRandom.h"
#include "org/bouncycastle/crypto/params/CramerShoupKeyGenerationParameters.h"
#include "org/bouncycastle/crypto/params/CramerShoupParameters.h"

@interface OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters () {
 @public
  OrgBouncycastleCryptoParamsCramerShoupParameters *params_;
}
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters, params_, OrgBouncycastleCryptoParamsCramerShoupParameters *)

@implementation OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters

- (instancetype)initWithJavaSecuritySecureRandom:(JavaSecuritySecureRandom *)random
withOrgBouncycastleCryptoParamsCramerShoupParameters:(OrgBouncycastleCryptoParamsCramerShoupParameters *)params {
  if (self = [super initWithJavaSecuritySecureRandom:random withInt:OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters_getStrengthWithOrgBouncycastleCryptoParamsCramerShoupParameters_(params)]) {
    self->params_ = params;
  }
  return self;
}

- (OrgBouncycastleCryptoParamsCramerShoupParameters *)getParameters {
  return params_;
}

+ (jint)getStrengthWithOrgBouncycastleCryptoParamsCramerShoupParameters:(OrgBouncycastleCryptoParamsCramerShoupParameters *)params {
  return OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters_getStrengthWithOrgBouncycastleCryptoParamsCramerShoupParameters_(params);
}

- (void)copyAllFieldsTo:(OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters *)other {
  [super copyAllFieldsTo:other];
  other->params_ = params_;
}

@end

jint OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters_getStrengthWithOrgBouncycastleCryptoParamsCramerShoupParameters_(OrgBouncycastleCryptoParamsCramerShoupParameters *params) {
  OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters_init();
  return [((JavaMathBigInteger *) nil_chk([((OrgBouncycastleCryptoParamsCramerShoupParameters *) nil_chk(params)) getP])) bitLength];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsCramerShoupKeyGenerationParameters)