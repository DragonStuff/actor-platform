//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/EncryptedDocumentV1ExUnsupported.java
//

#ifndef _ImActorModelApiEncryptedDocumentV1ExUnsupported_H_
#define _ImActorModelApiEncryptedDocumentV1ExUnsupported_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/api/EncryptedDocumentV1Ex.h"

@interface ImActorModelApiEncryptedDocumentV1ExUnsupported : ImActorModelApiEncryptedDocumentV1Ex {
}

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiEncryptedDocumentV1ExUnsupported)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiEncryptedDocumentV1ExUnsupported)

#endif // _ImActorModelApiEncryptedDocumentV1ExUnsupported_H_