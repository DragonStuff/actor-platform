//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/DialogHistory.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/DialogHistory.java"

#include "J2ObjC_source.h"
#include "im/actor/model/entity/MessageState.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/modules/messages/entity/DialogHistory.h"

@interface ImActorModelModulesMessagesEntityDialogHistory () {
 @public
  AMPeer *peer_;
  jint unreadCount_;
  jlong sortDate_;
  jlong rid_;
  jlong date_;
  jint senderId_;
  AMAbsContent *content_;
  AMMessageStateEnum *status_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, content_, AMAbsContent *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityDialogHistory, status_, AMMessageStateEnum *)


#line 11
@implementation ImActorModelModulesMessagesEntityDialogHistory


#line 22
- (instancetype)initWithAMPeer:(AMPeer *)peer
                       withInt:(jint)unreadCount
                      withLong:(jlong)sortDate
                      withLong:(jlong)rid
                      withLong:(jlong)date
                       withInt:(jint)senderId
              withAMAbsContent:(AMAbsContent *)content
        withAMMessageStateEnum:(AMMessageStateEnum *)status {
  ImActorModelModulesMessagesEntityDialogHistory_initWithAMPeer_withInt_withLong_withLong_withLong_withInt_withAMAbsContent_withAMMessageStateEnum_(self, peer, unreadCount, sortDate, rid, date, senderId, content, status);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

- (jint)getUnreadCount {
  return unreadCount_;
}

- (jlong)getSortDate {
  return sortDate_;
}

- (jlong)getRid {
  return rid_;
}

- (jlong)getDate {
  return date_;
}

- (jint)getSenderId {
  return senderId_;
}

- (AMAbsContent *)getContent {
  return content_;
}

- (AMMessageStateEnum *)getStatus {
  return status_;
}

@end


#line 22
void ImActorModelModulesMessagesEntityDialogHistory_initWithAMPeer_withInt_withLong_withLong_withLong_withInt_withAMAbsContent_withAMMessageStateEnum_(ImActorModelModulesMessagesEntityDialogHistory *self, AMPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, AMAbsContent *content, AMMessageStateEnum *status) {
  (void) NSObject_init(self);
  self->peer_ = peer;
  self->unreadCount_ = unreadCount;
  self->sortDate_ = sortDate;
  self->rid_ = rid;
  self->date_ = date;
  self->senderId_ = senderId;
  self->content_ = content;
  self->status_ = status;
}


#line 22
ImActorModelModulesMessagesEntityDialogHistory *new_ImActorModelModulesMessagesEntityDialogHistory_initWithAMPeer_withInt_withLong_withLong_withLong_withInt_withAMAbsContent_withAMMessageStateEnum_(AMPeer *peer, jint unreadCount, jlong sortDate, jlong rid, jlong date, jint senderId, AMAbsContent *content, AMMessageStateEnum *status) {
  ImActorModelModulesMessagesEntityDialogHistory *self = [ImActorModelModulesMessagesEntityDialogHistory alloc];
  ImActorModelModulesMessagesEntityDialogHistory_initWithAMPeer_withInt_withLong_withLong_withLong_withInt_withAMAbsContent_withAMMessageStateEnum_(self, peer, unreadCount, sortDate, rid, date, senderId, content, status);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityDialogHistory)