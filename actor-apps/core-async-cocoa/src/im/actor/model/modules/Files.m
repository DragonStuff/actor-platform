//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/Files.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/Configuration.h"
#include "im/actor/model/StorageProvider.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/engine/KeyValueEngine.h"
#include "im/actor/model/droidkit/engine/KeyValueStorage.h"
#include "im/actor/model/entity/FileReference.h"
#include "im/actor/model/files/FileSystemReference.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Files.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/file/DownloadManager.h"
#include "im/actor/model/modules/file/UploadManager.h"
#include "im/actor/model/modules/file/entity/Downloaded.h"
#include "im/actor/model/modules/utils/BaseKeyValueEngine.h"
#include "im/actor/model/viewmodel/FileCallback.h"
#include "im/actor/model/viewmodel/UploadFileCallback.h"
#include "java/io/IOException.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesFiles () {
 @public
  id<DKKeyValueEngine> downloadedEngine_;
  DKActorRef *downloadManager_;
  DKActorRef *uploadManager_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles, downloadedEngine_, id<DKKeyValueEngine>)
J2OBJC_FIELD_SETTER(ImActorModelModulesFiles, downloadManager_, DKActorRef *)
J2OBJC_FIELD_SETTER(ImActorModelModulesFiles, uploadManager_, DKActorRef *)

@interface ImActorModelModulesFiles_$1 : ImActorModelModulesUtilsBaseKeyValueEngine

- (IOSByteArray *)serializeWithDKKeyValueItem:(ImActorModelModulesFileEntityDownloaded *)value;

- (ImActorModelModulesFileEntityDownloaded *)deserializeWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithDKKeyValueStorage:(id<DKKeyValueStorage>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$1)

__attribute__((unused)) static void ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(ImActorModelModulesFiles_$1 *self, id<DKKeyValueStorage> arg$0);

__attribute__((unused)) static ImActorModelModulesFiles_$1 *new_ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(id<DKKeyValueStorage> arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$1)

@interface ImActorModelModulesFiles_$2 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesFiles *this$0_;
}

- (ImActorModelModulesFileDownloadManager *)create;

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$2, this$0_, ImActorModelModulesFiles *)

__attribute__((unused)) static void ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(ImActorModelModulesFiles_$2 *self, ImActorModelModulesFiles *outer$);

__attribute__((unused)) static ImActorModelModulesFiles_$2 *new_ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(ImActorModelModulesFiles *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$2)

@interface ImActorModelModulesFiles_$3 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesFiles *this$0_;
}

- (ImActorModelModulesFileUploadManager *)create;

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$3)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$3, this$0_, ImActorModelModulesFiles *)

__attribute__((unused)) static void ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(ImActorModelModulesFiles_$3 *self, ImActorModelModulesFiles *outer$);

__attribute__((unused)) static ImActorModelModulesFiles_$3 *new_ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(ImActorModelModulesFiles *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$3)

@interface ImActorModelModulesFiles_$4 : NSObject < AMFileCallback > {
 @public
  ImActorModelModulesFiles *this$0_;
  id<AMFileCallback> val$callback_;
}

- (void)onNotDownloaded;

- (void)onDownloading:(jfloat)progress;

- (void)onDownloaded:(id<AMFileSystemReference>)reference;

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$
                              withAMFileCallback:(id<AMFileCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$4)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4, this$0_, ImActorModelModulesFiles *)
J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4, val$callback_, id<AMFileCallback>)

__attribute__((unused)) static void ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(ImActorModelModulesFiles_$4 *self, ImActorModelModulesFiles *outer$, id<AMFileCallback> capture$0);

__attribute__((unused)) static ImActorModelModulesFiles_$4 *new_ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(ImActorModelModulesFiles *outer$, id<AMFileCallback> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$4)

@interface ImActorModelModulesFiles_$4_$1 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesFiles_$4 *this$0_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$4_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4_$1, this$0_, ImActorModelModulesFiles_$4 *)

__attribute__((unused)) static void ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(ImActorModelModulesFiles_$4_$1 *self, ImActorModelModulesFiles_$4 *outer$);

__attribute__((unused)) static ImActorModelModulesFiles_$4_$1 *new_ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(ImActorModelModulesFiles_$4 *outer$) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$4_$1)

@interface ImActorModelModulesFiles_$4_$2 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesFiles_$4 *this$0_;
  jfloat val$progress_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$
                                          withFloat:(jfloat)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$4_$2)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4_$2, this$0_, ImActorModelModulesFiles_$4 *)

__attribute__((unused)) static void ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(ImActorModelModulesFiles_$4_$2 *self, ImActorModelModulesFiles_$4 *outer$, jfloat capture$0);

__attribute__((unused)) static ImActorModelModulesFiles_$4_$2 *new_ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(ImActorModelModulesFiles_$4 *outer$, jfloat capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$4_$2)

@interface ImActorModelModulesFiles_$4_$3 : NSObject < JavaLangRunnable > {
 @public
  ImActorModelModulesFiles_$4 *this$0_;
  id<AMFileSystemReference> val$reference_;
}

- (void)run;

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$
                          withAMFileSystemReference:(id<AMFileSystemReference>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFiles_$4_$3)

J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4_$3, this$0_, ImActorModelModulesFiles_$4 *)
J2OBJC_FIELD_SETTER(ImActorModelModulesFiles_$4_$3, val$reference_, id<AMFileSystemReference>)

__attribute__((unused)) static void ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(ImActorModelModulesFiles_$4_$3 *self, ImActorModelModulesFiles_$4 *outer$, id<AMFileSystemReference> capture$0);

__attribute__((unused)) static ImActorModelModulesFiles_$4_$3 *new_ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(ImActorModelModulesFiles_$4 *outer$, id<AMFileSystemReference> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFiles_$4_$3)

@implementation ImActorModelModulesFiles

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesFiles_initWithImActorModelModulesModules_(self, modules);
  return self;
}

- (void)run {
  downloadManager_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesFileDownloadManager_class_(), new_ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(self)) withNSString:@"actor/download/manager"];
  uploadManager_ = [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_(ImActorModelModulesFileUploadManager_class_(), new_ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(self)) withNSString:@"actor/upload/manager"];
}

- (id<DKKeyValueEngine>)getDownloadedEngine {
  return downloadedEngine_;
}

- (void)bindFileWithAMFileReference:(AMFileReference *)fileReference
                        withBoolean:(jboolean)isAutostart
                 withAMFileCallback:(id<AMFileCallback>)callback {
  [((DKActorRef *) nil_chk(downloadManager_)) sendWithId:new_ImActorModelModulesFileDownloadManager_BindDownload_initWithAMFileReference_withBoolean_withAMFileCallback_(fileReference, isAutostart, callback)];
}

- (void)unbindFileWithLong:(jlong)fileId
        withAMFileCallback:(id<AMFileCallback>)callback
               withBoolean:(jboolean)cancel {
  [((DKActorRef *) nil_chk(downloadManager_)) sendWithId:new_ImActorModelModulesFileDownloadManager_UnbindDownload_initWithLong_withBoolean_withAMFileCallback_(fileId, cancel, callback)];
}

- (void)requestStateWithLong:(jlong)fileId
          withAMFileCallback:(id<AMFileCallback>)callback {
  [((DKActorRef *) nil_chk(downloadManager_)) sendWithId:new_ImActorModelModulesFileDownloadManager_RequestState_initWithLong_withAMFileCallback_(fileId, new_ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(self, callback))];
}

- (void)startDownloadingWithAMFileReference:(AMFileReference *)location {
  [((DKActorRef *) nil_chk(downloadManager_)) sendWithId:new_ImActorModelModulesFileDownloadManager_StartDownload_initWithAMFileReference_(location)];
}

- (void)cancelDownloadingWithLong:(jlong)fileId {
  [((DKActorRef *) nil_chk(downloadManager_)) sendWithId:new_ImActorModelModulesFileDownloadManager_CancelDownload_initWithLong_(fileId)];
}

- (void)bindUploadFileWithLong:(jlong)rid
      withAMUploadFileCallback:(id<AMUploadFileCallback>)uploadFileCallback {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_BindUpload_initWithLong_withAMUploadFileCallback_(rid, uploadFileCallback)];
}

- (void)unbindUploadFileWithLong:(jlong)rid
        withAMUploadFileCallback:(id<AMUploadFileCallback>)callback {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_UnbindUpload_initWithLong_withAMUploadFileCallback_(rid, callback)];
}

- (void)requestUploadWithLong:(jlong)rid
                 withNSString:(NSString *)descriptor
                 withNSString:(NSString *)fileName
               withDKActorRef:(DKActorRef *)requester {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_StartUpload_initWithLong_withNSString_withNSString_(rid, descriptor, fileName) withDKActorRef:requester];
}

- (void)cancelUploadWithLong:(jlong)rid {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_StopUpload_initWithLong_(rid)];
}

- (void)requestUploadStateWithLong:(jlong)rid
          withAMUploadFileCallback:(id<AMUploadFileCallback>)callback {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_RequestState_initWithLong_withAMUploadFileCallback_(rid, callback)];
}

- (void)resumeUploadWithLong:(jlong)rid {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_ResumeUpload_initWithLong_(rid)];
}

- (void)pauseUploadWithLong:(jlong)rid {
  [((DKActorRef *) nil_chk(uploadManager_)) sendWithId:new_ImActorModelModulesFileUploadManager_PauseUpload_initWithLong_(rid)];
}

- (NSString *)getDownloadedDescriptorWithLong:(jlong)fileId {
  ImActorModelModulesFileEntityDownloaded *downloaded = [((id<DKKeyValueEngine>) nil_chk(downloadedEngine_)) getValueWithKey:fileId];
  if (downloaded == nil) {
    return nil;
  }
  else {
    return [downloaded getDescriptor];
  }
}

- (void)resetModule {
}

@end

void ImActorModelModulesFiles_initWithImActorModelModulesModules_(ImActorModelModulesFiles *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->downloadedEngine_ = new_ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_([((id<AMStorageProvider>) nil_chk([((AMConfiguration *) nil_chk([((ImActorModelModulesModules *) nil_chk(modules)) getConfiguration])) getStorageProvider])) createKeyValueWithName:ImActorModelModulesBaseModule_get_STORAGE_DOWNLOADS_()]);
}

ImActorModelModulesFiles *new_ImActorModelModulesFiles_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesFiles *self = [ImActorModelModulesFiles alloc];
  ImActorModelModulesFiles_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles)

@implementation ImActorModelModulesFiles_$1

- (IOSByteArray *)serializeWithDKKeyValueItem:(ImActorModelModulesFileEntityDownloaded *)value {
  return [((ImActorModelModulesFileEntityDownloaded *) nil_chk(value)) toByteArray];
}

- (ImActorModelModulesFileEntityDownloaded *)deserializeWithByteArray:(IOSByteArray *)data {
  @try {
    return ImActorModelModulesFileEntityDownloaded_fromBytesWithByteArray_(data);
  }
  @catch (JavaIoIOException *e) {
    [((JavaIoIOException *) nil_chk(e)) printStackTrace];
    return nil;
  }
}

- (instancetype)initWithDKKeyValueStorage:(id<DKKeyValueStorage>)arg$0 {
  ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(self, arg$0);
  return self;
}

@end

void ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(ImActorModelModulesFiles_$1 *self, id<DKKeyValueStorage> arg$0) {
  (void) ImActorModelModulesUtilsBaseKeyValueEngine_initWithDKKeyValueStorage_(self, arg$0);
}

ImActorModelModulesFiles_$1 *new_ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(id<DKKeyValueStorage> arg$0) {
  ImActorModelModulesFiles_$1 *self = [ImActorModelModulesFiles_$1 alloc];
  ImActorModelModulesFiles_$1_initWithDKKeyValueStorage_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$1)

@implementation ImActorModelModulesFiles_$2

- (ImActorModelModulesFileDownloadManager *)create {
  return new_ImActorModelModulesFileDownloadManager_initWithImActorModelModulesModules_([this$0_ modules]);
}

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$ {
  ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(self, outer$);
  return self;
}

@end

void ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(ImActorModelModulesFiles_$2 *self, ImActorModelModulesFiles *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$2 *new_ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(ImActorModelModulesFiles *outer$) {
  ImActorModelModulesFiles_$2 *self = [ImActorModelModulesFiles_$2 alloc];
  ImActorModelModulesFiles_$2_initWithImActorModelModulesFiles_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$2)

@implementation ImActorModelModulesFiles_$3

- (ImActorModelModulesFileUploadManager *)create {
  return new_ImActorModelModulesFileUploadManager_initWithImActorModelModulesModules_([this$0_ modules]);
}

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$ {
  ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(self, outer$);
  return self;
}

@end

void ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(ImActorModelModulesFiles_$3 *self, ImActorModelModulesFiles *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$3 *new_ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(ImActorModelModulesFiles *outer$) {
  ImActorModelModulesFiles_$3 *self = [ImActorModelModulesFiles_$3 alloc];
  ImActorModelModulesFiles_$3_initWithImActorModelModulesFiles_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$3)

@implementation ImActorModelModulesFiles_$4

- (void)onNotDownloaded {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(self)];
}

- (void)onDownloading:(jfloat)progress {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(self, progress)];
}

- (void)onDownloaded:(id<AMFileSystemReference>)reference {
  [this$0_ runOnUiThreadWithJavaLangRunnable:new_ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(self, reference)];
}

- (instancetype)initWithImActorModelModulesFiles:(ImActorModelModulesFiles *)outer$
                              withAMFileCallback:(id<AMFileCallback>)capture$0 {
  ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(ImActorModelModulesFiles_$4 *self, ImActorModelModulesFiles *outer$, id<AMFileCallback> capture$0) {
  self->this$0_ = outer$;
  self->val$callback_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$4 *new_ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(ImActorModelModulesFiles *outer$, id<AMFileCallback> capture$0) {
  ImActorModelModulesFiles_$4 *self = [ImActorModelModulesFiles_$4 alloc];
  ImActorModelModulesFiles_$4_initWithImActorModelModulesFiles_withAMFileCallback_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$4)

@implementation ImActorModelModulesFiles_$4_$1

- (void)run {
  [((id<AMFileCallback>) nil_chk(this$0_->val$callback_)) onNotDownloaded];
}

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$ {
  ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(self, outer$);
  return self;
}

@end

void ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(ImActorModelModulesFiles_$4_$1 *self, ImActorModelModulesFiles_$4 *outer$) {
  self->this$0_ = outer$;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$4_$1 *new_ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(ImActorModelModulesFiles_$4 *outer$) {
  ImActorModelModulesFiles_$4_$1 *self = [ImActorModelModulesFiles_$4_$1 alloc];
  ImActorModelModulesFiles_$4_$1_initWithImActorModelModulesFiles_$4_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$4_$1)

@implementation ImActorModelModulesFiles_$4_$2

- (void)run {
  [((id<AMFileCallback>) nil_chk(this$0_->val$callback_)) onDownloading:val$progress_];
}

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$
                                          withFloat:(jfloat)capture$0 {
  ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(ImActorModelModulesFiles_$4_$2 *self, ImActorModelModulesFiles_$4 *outer$, jfloat capture$0) {
  self->this$0_ = outer$;
  self->val$progress_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$4_$2 *new_ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(ImActorModelModulesFiles_$4 *outer$, jfloat capture$0) {
  ImActorModelModulesFiles_$4_$2 *self = [ImActorModelModulesFiles_$4_$2 alloc];
  ImActorModelModulesFiles_$4_$2_initWithImActorModelModulesFiles_$4_withFloat_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$4_$2)

@implementation ImActorModelModulesFiles_$4_$3

- (void)run {
  [((id<AMFileCallback>) nil_chk(this$0_->val$callback_)) onDownloaded:val$reference_];
}

- (instancetype)initWithImActorModelModulesFiles_$4:(ImActorModelModulesFiles_$4 *)outer$
                          withAMFileSystemReference:(id<AMFileSystemReference>)capture$0 {
  ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(self, outer$, capture$0);
  return self;
}

@end

void ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(ImActorModelModulesFiles_$4_$3 *self, ImActorModelModulesFiles_$4 *outer$, id<AMFileSystemReference> capture$0) {
  self->this$0_ = outer$;
  self->val$reference_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesFiles_$4_$3 *new_ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(ImActorModelModulesFiles_$4 *outer$, id<AMFileSystemReference> capture$0) {
  ImActorModelModulesFiles_$4_$3 *self = [ImActorModelModulesFiles_$4_$3 alloc];
  ImActorModelModulesFiles_$4_$3_initWithImActorModelModulesFiles_$4_withAMFileSystemReference_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesFiles_$4_$3)
