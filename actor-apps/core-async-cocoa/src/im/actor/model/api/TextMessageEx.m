//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/TextMessageEx.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/TextExMarkdown.h"
#include "im/actor/model/api/TextMessageEx.h"
#include "im/actor/model/api/TextMessageExUnsupported.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "java/io/IOException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation APTextMessageEx

+ (APTextMessageEx *)fromBytesWithByteArray:(IOSByteArray *)src {
  return APTextMessageEx_fromBytesWithByteArray_(src);
}

- (IOSByteArray *)buildContainer {
  BSDataOutput *res = new_BSDataOutput_init();
  BSBserWriter *writer = new_BSBserWriter_initWithBSDataOutput_(res);
  [writer writeIntWithInt:1 withInt:[self getHeader]];
  [writer writeBytesWithInt:2 withByteArray:[self toByteArray]];
  return [res toByteArray];
}

- (instancetype)init {
  APTextMessageEx_init(self);
  return self;
}

@end

APTextMessageEx *APTextMessageEx_fromBytesWithByteArray_(IOSByteArray *src) {
  APTextMessageEx_initialize();
  BSBserValues *values = new_BSBserValues_initWithImActorModelDroidkitBserUtilSparseArray_(BSBserParser_deserializeWithBSDataInput_(new_BSDataInput_initWithByteArray_withInt_withInt_(src, 0, ((IOSByteArray *) nil_chk(src))->size_)));
  jint key = [values getIntWithInt:1];
  IOSByteArray *content = [values getBytesWithInt:2];
  switch (key) {
    case 1:
    return ((APTextExMarkdown *) BSBser_parseWithBSBserObject_withByteArray_(new_APTextExMarkdown_init(), content));
    default:
    return new_APTextMessageExUnsupported_initWithInt_withByteArray_(key, content);
  }
}

void APTextMessageEx_init(APTextMessageEx *self) {
  (void) BSBserObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APTextMessageEx)
