//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/OwnReadActor.java
//

#ifndef _ImActorModelModulesMessagesOwnReadActor_H_
#define _ImActorModelModulesMessagesOwnReadActor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@class AMContentDescription;
@class AMPeer;
@class ImActorModelModulesModules;
@protocol JavaUtilList;

@interface ImActorModelModulesMessagesOwnReadActor : ImActorModelModulesUtilsModuleActor

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onMessageDeleteWithAMPeer:(AMPeer *)peer
                 withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onMessageReadWithAMPeer:(AMPeer *)peer
                       withLong:(jlong)sortingDate;

- (void)onMessageReadByMeWithAMPeer:(AMPeer *)peer
                           withLong:(jlong)sortingDate;

- (void)onNewInMessageWithAMPeer:(AMPeer *)peer
                        withLong:(jlong)rid
                        withLong:(jlong)sortingDate
                         withInt:(jint)senderUid
        withAMContentDescription:(AMContentDescription *)contentDescription
                     withBoolean:(jboolean)hasCurrentUserMention;

- (void)onReceiveWithId:(id)message;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesOwnReadActor)

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesMessagesOwnReadActor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor *new_ImActorModelModulesMessagesOwnReadActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesOwnReadActor)

@interface ImActorModelModulesMessagesOwnReadActor_MessageReadByMe : NSObject {
 @public
  AMPeer *peer_;
  jlong sortDate_;
}

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortDate;

- (AMPeer *)getPeer;

- (jlong)getSortDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe, peer_, AMPeer *)

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *self, AMPeer *peer, jlong sortDate);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor_MessageReadByMe *new_ImActorModelModulesMessagesOwnReadActor_MessageReadByMe_initWithAMPeer_withLong_(AMPeer *peer, jlong sortDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesOwnReadActor_MessageReadByMe)

@interface ImActorModelModulesMessagesOwnReadActor_MessageRead : NSObject {
 @public
  AMPeer *peer_;
  jlong sortingDate_;
}

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)sortingDate;

- (AMPeer *)getPeer;

- (jlong)getSortingDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesOwnReadActor_MessageRead)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_MessageRead, peer_, AMPeer *)

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(ImActorModelModulesMessagesOwnReadActor_MessageRead *self, AMPeer *peer, jlong sortingDate);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor_MessageRead *new_ImActorModelModulesMessagesOwnReadActor_MessageRead_initWithAMPeer_withLong_(AMPeer *peer, jlong sortingDate) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesOwnReadActor_MessageRead)

@interface ImActorModelModulesMessagesOwnReadActor_NewMessage : NSObject {
 @public
  jboolean hasCurrentUserMention_;
  AMPeer *peer_;
  jlong rid_;
  jlong sortingDate_;
  jint senderUId_;
  AMContentDescription *contentDescription_;
}

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
                      withLong:(jlong)sortingDate;

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
                      withLong:(jlong)sortingDate
                       withInt:(jint)senderUId
      withAMContentDescription:(AMContentDescription *)contentDescription
                   withBoolean:(jboolean)hasCurrentUserMention;

- (AMContentDescription *)getContentDescription;

- (jboolean)getHasCurrentUserMention;

- (AMPeer *)getPeer;

- (jlong)getRid;

- (jint)getSenderUId;

- (jlong)getSortingDate;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesOwnReadActor_NewMessage)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_NewMessage, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_NewMessage, contentDescription_, AMContentDescription *)

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(ImActorModelModulesMessagesOwnReadActor_NewMessage *self, AMPeer *peer, jlong rid, jlong sortingDate);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor_NewMessage *new_ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_(AMPeer *peer, jlong rid, jlong sortingDate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(ImActorModelModulesMessagesOwnReadActor_NewMessage *self, AMPeer *peer, jlong rid, jlong sortingDate, jint senderUId, AMContentDescription *contentDescription, jboolean hasCurrentUserMention);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor_NewMessage *new_ImActorModelModulesMessagesOwnReadActor_NewMessage_initWithAMPeer_withLong_withLong_withInt_withAMContentDescription_withBoolean_(AMPeer *peer, jlong rid, jlong sortingDate, jint senderUId, AMContentDescription *contentDescription, jboolean hasCurrentUserMention) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesOwnReadActor_NewMessage)

@interface ImActorModelModulesMessagesOwnReadActor_MessageDeleted : NSObject {
 @public
  AMPeer *peer_;
  id<JavaUtilList> rids_;
}

#pragma mark Public

- (instancetype)initWithAMPeer:(AMPeer *)peer
              withJavaUtilList:(id<JavaUtilList>)rids;

- (AMPeer *)getPeer;

- (id<JavaUtilList>)getRids;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesOwnReadActor_MessageDeleted)

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_MessageDeleted, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesOwnReadActor_MessageDeleted, rids_, id<JavaUtilList>)

FOUNDATION_EXPORT void ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(ImActorModelModulesMessagesOwnReadActor_MessageDeleted *self, AMPeer *peer, id<JavaUtilList> rids);

FOUNDATION_EXPORT ImActorModelModulesMessagesOwnReadActor_MessageDeleted *new_ImActorModelModulesMessagesOwnReadActor_MessageDeleted_initWithAMPeer_withJavaUtilList_(AMPeer *peer, id<JavaUtilList> rids) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesOwnReadActor_MessageDeleted)

#endif // _ImActorModelModulesMessagesOwnReadActor_H_
