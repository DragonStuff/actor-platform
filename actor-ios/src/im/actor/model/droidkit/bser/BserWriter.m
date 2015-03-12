//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/bser/BserWriter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/droidkit/bser/Limits.h"
#include "im/actor/model/droidkit/bser/WireTypes.h"
#include "java/io/IOException.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/List.h"

__attribute__((unused)) static void BSBserWriter_writeTagWithInt_withInt_(BSBserWriter *self, jint fieldNumber, jint wireType);
__attribute__((unused)) static void BSBserWriter_writeVarIntFieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value);
__attribute__((unused)) static void BSBserWriter_writeBytesFieldWithInt_withByteArray_(BSBserWriter *self, jint fieldNumber, IOSByteArray *value);
__attribute__((unused)) static void BSBserWriter_writeVar64FieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value);
__attribute__((unused)) static void BSBserWriter_writeVar32FieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value);
__attribute__((unused)) static void BSBserWriter_writeVarIntWithLong_(BSBserWriter *self, jlong value);
__attribute__((unused)) static void BSBserWriter_writeLongWithLong_(BSBserWriter *self, jlong v);
__attribute__((unused)) static void BSBserWriter_writeIntWithLong_(BSBserWriter *self, jlong v);
__attribute__((unused)) static void BSBserWriter_writeBytesWithByteArray_(BSBserWriter *self, IOSByteArray *data);

@interface BSBserWriter () {
 @public
  BSDataOutput *stream_;
}

- (void)writeTagWithInt:(jint)fieldNumber
                withInt:(jint)wireType;

- (void)writeVarIntFieldWithInt:(jint)fieldNumber
                       withLong:(jlong)value;

- (void)writeBytesFieldWithInt:(jint)fieldNumber
                 withByteArray:(IOSByteArray *)value;

- (void)writeVar64FieldWithInt:(jint)fieldNumber
                      withLong:(jlong)value;

- (void)writeVar32FieldWithInt:(jint)fieldNumber
                      withLong:(jlong)value;

- (void)writeVarIntWithLong:(jlong)value;

- (void)writeLongWithLong:(jlong)v;

- (void)writeIntWithLong:(jlong)v;

- (void)writeBytesWithByteArray:(IOSByteArray *)data;
@end

J2OBJC_FIELD_SETTER(BSBserWriter, stream_, BSDataOutput *)

@implementation BSBserWriter

- (instancetype)initWithBSDataOutput:(BSDataOutput *)stream {
  if (self = [super init]) {
    if (stream == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Stream can not be null"];
    }
    self->stream_ = stream;
  }
  return self;
}

- (void)writeBytesWithInt:(jint)fieldNumber
            withByteArray:(IOSByteArray *)value {
  if (value == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
  }
  if (((IOSByteArray *) nil_chk(value))->size_ > BSLimits_MAX_BLOCK_SIZE) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Unable to write more than 1 MB"];
  }
  BSBserWriter_writeBytesFieldWithInt_withByteArray_(self, fieldNumber, value);
}

- (void)writeStringWithInt:(jint)fieldNumber
              withNSString:(NSString *)value {
  if (value == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
  }
  BSBserWriter_writeBytesFieldWithInt_withByteArray_(self, fieldNumber, [((NSString *) nil_chk(value)) getBytes]);
}

- (void)writeBoolWithInt:(jint)fieldNumber
             withBoolean:(jboolean)value {
  BSBserWriter_writeVarIntFieldWithInt_withLong_(self, fieldNumber, value ? 1 : 0);
}

- (void)writeIntWithInt:(jint)fieldNumber
                withInt:(jint)value {
  BSBserWriter_writeVarIntFieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeIntFixedWithInt:(jint)fieldNumber
                     withInt:(jint)value {
  BSBserWriter_writeVar32FieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeDoubleWithInt:(jint)fieldNumber
                withDouble:(jdouble)value {
  BSBserWriter_writeVar64FieldWithInt_withLong_(self, fieldNumber, JavaLangDouble_doubleToLongBitsWithDouble_(value));
}

- (void)writeLongFixedWithInt:(jint)fieldNumber
                     withLong:(jlong)value {
  BSBserWriter_writeVar64FieldWithInt_withLong_(self, fieldNumber, JavaLangDouble_doubleToLongBitsWithDouble_(value));
}

- (void)writeLongWithInt:(jint)fieldNumber
                withLong:(jlong)value {
  BSBserWriter_writeVarIntFieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeRepeatedLongWithInt:(jint)fieldNumber
                withJavaUtilList:(id<JavaUtilList>)values {
  if (values == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Values can not be null"];
  }
  if ([((id<JavaUtilList>) nil_chk(values)) size] > BSLimits_MAX_PROTO_REPEATED) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Too many values"];
  }
  for (JavaLangLong * __strong l in values) {
    if (l == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
    }
    BSBserWriter_writeVar64FieldWithInt_withLong_(self, fieldNumber, [((JavaLangLong *) nil_chk(l)) longLongValue]);
  }
}

- (void)writeRepeatedIntWithInt:(jint)fieldNumber
               withJavaUtilList:(id<JavaUtilList>)values {
  if (values == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Values can not be null"];
  }
  if ([((id<JavaUtilList>) nil_chk(values)) size] > BSLimits_MAX_PROTO_REPEATED) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Too many values"];
  }
  for (JavaLangInteger * __strong l in values) {
    if (l == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
    }
    BSBserWriter_writeVar32FieldWithInt_withLong_(self, fieldNumber, [((JavaLangInteger *) nil_chk(l)) intValue]);
  }
}

- (void)writeRepeatedBoolWithInt:(jint)fieldNumber
                withJavaUtilList:(id<JavaUtilList>)values {
  if (values == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Values can not be null"];
  }
  if ([((id<JavaUtilList>) nil_chk(values)) size] > BSLimits_MAX_PROTO_REPEATED) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Too many values"];
  }
  for (JavaLangBoolean * __strong l in values) {
    if (l == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
    }
    [self writeBoolWithInt:fieldNumber withBoolean:[((JavaLangBoolean *) nil_chk(l)) booleanValue]];
  }
}

- (void)writeRepeatedObjWithInt:(jint)fieldNumber
               withJavaUtilList:(id<JavaUtilList>)values {
  if (values == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Values can not be null"];
  }
  if ([((id<JavaUtilList>) nil_chk(values)) size] > BSLimits_MAX_PROTO_REPEATED) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Too many values"];
  }
  for (BSBserObject * __strong l in values) {
    if (l == nil) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
    }
    [self writeObjectWithInt:fieldNumber withBSBserObject:l];
  }
}

- (void)writeObjectWithInt:(jint)fieldNumber
          withBSBserObject:(BSBserObject *)value {
  if (value == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Value can not be null"];
  }
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, BSWireTypes_TYPE_LENGTH_DELIMITED);
  BSDataOutput *outputStream = [[BSDataOutput alloc] init];
  BSBserWriter *writer = [[BSBserWriter alloc] initWithBSDataOutput:outputStream];
  [((BSBserObject *) nil_chk(value)) serializeWithBSBserWriter:writer];
  BSBserWriter_writeBytesWithByteArray_(self, [outputStream toByteArray]);
}

- (void)writeRawWithByteArray:(IOSByteArray *)raw {
  if (raw == nil) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Raw can not be null"];
  }
  [((BSDataOutput *) nil_chk(stream_)) writeBytesWithByteArray:raw withInt:0 withInt:((IOSByteArray *) nil_chk(raw))->size_];
}

- (void)writeTagWithInt:(jint)fieldNumber
                withInt:(jint)wireType {
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, wireType);
}

- (void)writeVarIntFieldWithInt:(jint)fieldNumber
                       withLong:(jlong)value {
  BSBserWriter_writeVarIntFieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeBytesFieldWithInt:(jint)fieldNumber
                 withByteArray:(IOSByteArray *)value {
  BSBserWriter_writeBytesFieldWithInt_withByteArray_(self, fieldNumber, value);
}

- (void)writeVar64FieldWithInt:(jint)fieldNumber
                      withLong:(jlong)value {
  BSBserWriter_writeVar64FieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeVar32FieldWithInt:(jint)fieldNumber
                      withLong:(jlong)value {
  BSBserWriter_writeVar32FieldWithInt_withLong_(self, fieldNumber, value);
}

- (void)writeVarIntWithLong:(jlong)value {
  BSBserWriter_writeVarIntWithLong_(self, value);
}

- (void)writeLongWithLong:(jlong)v {
  BSBserWriter_writeLongWithLong_(self, v);
}

- (void)writeIntWithLong:(jlong)v {
  BSBserWriter_writeIntWithLong_(self, v);
}

- (void)writeBytesWithByteArray:(IOSByteArray *)data {
  BSBserWriter_writeBytesWithByteArray_(self, data);
}

- (void)copyAllFieldsTo:(BSBserWriter *)other {
  [super copyAllFieldsTo:other];
  other->stream_ = stream_;
}

@end

void BSBserWriter_writeTagWithInt_withInt_(BSBserWriter *self, jint fieldNumber, jint wireType) {
  if (fieldNumber <= 0) {
    @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"fieldNumber can't be less or eq to zero"];
  }
  jlong tag = ((jlong) (LShift32(fieldNumber, 3)) | wireType);
  [((BSDataOutput *) nil_chk(self->stream_)) writeVarIntWithLong:tag];
}

void BSBserWriter_writeVarIntFieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value) {
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, BSWireTypes_TYPE_VARINT);
  BSBserWriter_writeVarIntWithLong_(self, value);
}

void BSBserWriter_writeBytesFieldWithInt_withByteArray_(BSBserWriter *self, jint fieldNumber, IOSByteArray *value) {
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, BSWireTypes_TYPE_LENGTH_DELIMITED);
  BSBserWriter_writeBytesWithByteArray_(self, value);
}

void BSBserWriter_writeVar64FieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value) {
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, BSWireTypes_TYPE_64BIT);
  BSBserWriter_writeLongWithLong_(self, value);
}

void BSBserWriter_writeVar32FieldWithInt_withLong_(BSBserWriter *self, jint fieldNumber, jlong value) {
  BSBserWriter_writeTagWithInt_withInt_(self, fieldNumber, BSWireTypes_TYPE_32BIT);
  BSBserWriter_writeIntWithLong_(self, value);
}

void BSBserWriter_writeVarIntWithLong_(BSBserWriter *self, jlong value) {
  while ((value & (jlong) 0xffffffffffffff80l) != 0l) {
    [((BSDataOutput *) nil_chk(self->stream_)) writeByteWithInt:(jbyte) ((value & (jint) 0x7f) | (jint) 0x80)];
    URShiftAssignLong(&value, 7);
  }
  [((BSDataOutput *) nil_chk(self->stream_)) writeByteWithInt:(jbyte) (value & (jint) 0x7f)];
}

void BSBserWriter_writeLongWithLong_(BSBserWriter *self, jlong v) {
  [((BSDataOutput *) nil_chk(self->stream_)) writeByteWithInt:(jbyte) (v & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 8)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 16)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 24)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 32)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 40)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 48)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 56)) & (jint) 0xFF)];
}

void BSBserWriter_writeIntWithLong_(BSBserWriter *self, jlong v) {
  [((BSDataOutput *) nil_chk(self->stream_)) writeByteWithInt:(jbyte) (v & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 8)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 16)) & (jint) 0xFF)];
  [self->stream_ writeByteWithInt:(jbyte) ((RShift64(v, 24)) & (jint) 0xFF)];
}

void BSBserWriter_writeBytesWithByteArray_(BSBserWriter *self, IOSByteArray *data) {
  BSBserWriter_writeVarIntWithLong_(self, ((IOSByteArray *) nil_chk(data))->size_);
  [((BSDataOutput *) nil_chk(self->stream_)) writeBytesWithByteArray:data withInt:0 withInt:data->size_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserWriter)