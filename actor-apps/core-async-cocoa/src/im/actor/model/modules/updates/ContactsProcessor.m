//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/updates/ContactsProcessor.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Contacts.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/contacts/ContactsSyncActor.h"
#include "im/actor/model/modules/updates/ContactsProcessor.h"

@interface ImActorModelModulesUpdatesContactsProcessor () {
 @public
  DKActorRef *contactsSyncActor_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesContactsProcessor, contactsSyncActor_, DKActorRef *)

@implementation ImActorModelModulesUpdatesContactsProcessor

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

- (void)onContactsAddedWithIntArray:(IOSIntArray *)uid {
  [((DKActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_ContactsAdded_initWithIntArray_(uid)];
}

- (void)onContactsRemovedWithIntArray:(IOSIntArray *)uid {
  [((DKActorRef *) nil_chk(contactsSyncActor_)) sendWithId:new_ImActorModelModulesContactsContactsSyncActor_ContactsRemoved_initWithIntArray_(uid)];
}

@end

void ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesContactsProcessor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->contactsSyncActor_ = [((ImActorModelModulesContacts *) nil_chk([((ImActorModelModulesModules *) nil_chk([self modules])) getContactsModule])) getContactSyncActor];
}

ImActorModelModulesUpdatesContactsProcessor *new_ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesUpdatesContactsProcessor *self = [ImActorModelModulesUpdatesContactsProcessor alloc];
  ImActorModelModulesUpdatesContactsProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesContactsProcessor)
