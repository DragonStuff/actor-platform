//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/mvvm/generics/StringValueModel.java
//


#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/mvvm/generics/StringValueModel.h"

@implementation AMStringValueModel

- (instancetype)initWithNSString:(NSString *)name
                    withNSString:(NSString *)defaultValue {
  AMStringValueModel_initWithNSString_withNSString_(self, name, defaultValue);
  return self;
}

- (NSString *)get {
  return [super get];
}

@end

void AMStringValueModel_initWithNSString_withNSString_(AMStringValueModel *self, NSString *name, NSString *defaultValue) {
  (void) AMValueModel_initWithName_withValue_(self, name, defaultValue);
}

AMStringValueModel *new_AMStringValueModel_initWithNSString_withNSString_(NSString *name, NSString *defaultValue) {
  AMStringValueModel *self = [AMStringValueModel alloc];
  AMStringValueModel_initWithNSString_withNSString_(self, name, defaultValue);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMStringValueModel)
