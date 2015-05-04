//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithRandom.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithRandom.java"

#include "J2ObjC_source.h"
#include "im/actor/model/crypto/bouncycastle/RandomProvider.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/params/ParametersWithRandom.h"

@interface OrgBouncycastleCryptoParamsParametersWithRandom () {
 @public
  id<BCRandomProvider> random_;
  id<OrgBouncycastleCryptoCipherParameters> parameters_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithRandom, random_, id<BCRandomProvider>)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithRandom, parameters_, id<OrgBouncycastleCryptoCipherParameters>)


#line 6
@implementation OrgBouncycastleCryptoParamsParametersWithRandom


#line 11
- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                         withBCRandomProvider:(id<BCRandomProvider>)random {
  OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withBCRandomProvider_(self, parameters, random);
  return self;
}


#line 18
- (id<BCRandomProvider>)getRandom {
  return random_;
}

- (id<OrgBouncycastleCryptoCipherParameters>)getParameters {
  return parameters_;
}

@end


#line 11
void OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withBCRandomProvider_(OrgBouncycastleCryptoParamsParametersWithRandom *self, id<OrgBouncycastleCryptoCipherParameters> parameters, id<BCRandomProvider> random) {
  (void) NSObject_init(self);
  
#line 14
  self->random_ = random;
  self->parameters_ = parameters;
}


#line 11
OrgBouncycastleCryptoParamsParametersWithRandom *new_OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withBCRandomProvider_(id<OrgBouncycastleCryptoCipherParameters> parameters, id<BCRandomProvider> random) {
  OrgBouncycastleCryptoParamsParametersWithRandom *self = [OrgBouncycastleCryptoParamsParametersWithRandom alloc];
  OrgBouncycastleCryptoParamsParametersWithRandom_initWithOrgBouncycastleCryptoCipherParameters_withBCRandomProvider_(self, parameters, random);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsParametersWithRandom)