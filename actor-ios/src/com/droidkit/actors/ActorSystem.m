//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/com/droidkit/actors/ActorSystem.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/droidkit/actors/ActorRef.h"
#include "com/droidkit/actors/ActorSelection.h"
#include "com/droidkit/actors/ActorSystem.h"
#include "com/droidkit/actors/Props.h"
#include "com/droidkit/actors/ThreadPriority.h"
#include "com/droidkit/actors/conf/EnvConfig.h"
#include "com/droidkit/actors/debug/TraceInterface.h"
#include "com/droidkit/actors/mailbox/ActorDispatcher.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Runtime.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"

@interface DAActorSystem () {
 @public
  JavaUtilHashMap *dispatchers_;
  id<ComDroidkitActorsDebugTraceInterface> traceInterface_;
  JavaLangClassLoader *classLoader_;
}
@end

J2OBJC_FIELD_SETTER(DAActorSystem, dispatchers_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(DAActorSystem, traceInterface_, id<ComDroidkitActorsDebugTraceInterface>)
J2OBJC_FIELD_SETTER(DAActorSystem, classLoader_, JavaLangClassLoader *)

BOOL DAActorSystem_initialized = NO;

@implementation DAActorSystem

DAActorSystem * DAActorSystem_mainSystem_;
NSString * DAActorSystem_DEFAULT_DISPATCHER_ = @"default";

+ (DAActorSystem *)system {
  return DAActorSystem_system();
}

- (instancetype)init {
  return [self initDAActorSystemWithBoolean:YES];
}

- (instancetype)initDAActorSystemWithBoolean:(jboolean)addDefaultDispatcher {
  if (self = [super init]) {
    DAActorSystem_setAndConsume_dispatchers_(self, [[JavaUtilHashMap alloc] init]);
    if (addDefaultDispatcher) {
      [self addDispatcherWithNSString:DAActorSystem_DEFAULT_DISPATCHER_];
    }
    DAActorSystem_set_classLoader_(self, [[self getClass] getClassLoader]);
  }
  return self;
}

- (instancetype)initWithBoolean:(jboolean)addDefaultDispatcher {
  return [self initDAActorSystemWithBoolean:addDefaultDispatcher];
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId
                          withInt:(jint)threadsCount {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    ComDroidkitActorsMailboxActorDispatcher *dispatcher = DAEnvConfig_createDispatcherWithNSString_withInt_withDAThreadPriorityEnum_withDAActorSystem_(dispatcherId, threadsCount, DAThreadPriorityEnum_get_LOW(), self);
    [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    ComDroidkitActorsMailboxActorDispatcher *dispatcher = DAEnvConfig_createDispatcherWithNSString_withInt_withDAThreadPriorityEnum_withDAActorSystem_(dispatcherId, [((JavaLangRuntime *) nil_chk(JavaLangRuntime_getRuntime())) availableProcessors], DAThreadPriorityEnum_get_LOW(), self);
    [self addDispatcherWithNSString:dispatcherId withComDroidkitActorsMailboxActorDispatcher:dispatcher];
  }
}

- (void)addDispatcherWithNSString:(NSString *)dispatcherId
withComDroidkitActorsMailboxActorDispatcher:(ComDroidkitActorsMailboxActorDispatcher *)dispatcher {
  @synchronized(dispatchers_) {
    if ([((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      return;
    }
    [dispatchers_ putWithId:dispatcherId withId:dispatcher];
  }
}

- (DAActorRef *)actorOfWithDAActorSelection:(DAActorSelection *)selection {
  return [self actorOfWithDAProps:[((DAActorSelection *) nil_chk(selection)) getProps] withNSString:[selection getPath]];
}

- (DAActorRef *)actorOfWithIOSClass:(IOSClass *)actor
                       withNSString:(NSString *)path {
  return [self actorOfWithDAProps:DAProps_createWithIOSClass_(actor) withNSString:path];
}

- (DAActorRef *)actorOfWithDAProps:(DAProps *)props
                      withNSString:(NSString *)path {
  NSString *dispatcherId = [((DAProps *) nil_chk(props)) getDispatcher] == nil ? DAActorSystem_DEFAULT_DISPATCHER_ : [props getDispatcher];
  ComDroidkitActorsMailboxActorDispatcher *mailboxesDispatcher;
  @synchronized(dispatchers_) {
    if (![((JavaUtilHashMap *) nil_chk(dispatchers_)) containsKeyWithId:dispatcherId]) {
      @throw [[[JavaLangRuntimeException alloc] initWithNSString:JreStrcat("$$C", @"Unknown dispatcherId '", dispatcherId, '\'')] autorelease];
    }
    mailboxesDispatcher = [dispatchers_ getWithId:dispatcherId];
  }
  return [((ComDroidkitActorsMailboxActorDispatcher *) nil_chk(mailboxesDispatcher)) referenceActorWithNSString:path withDAProps:props];
}

- (id<ComDroidkitActorsDebugTraceInterface>)getTraceInterface {
  return traceInterface_;
}

- (void)setTraceInterfaceWithComDroidkitActorsDebugTraceInterface:(id<ComDroidkitActorsDebugTraceInterface>)traceInterface {
  DAActorSystem_set_traceInterface_(self, traceInterface);
}

- (JavaLangClassLoader *)getClassLoader {
  return classLoader_;
}

- (void)setClassLoaderWithJavaLangClassLoader:(JavaLangClassLoader *)classLoader {
  if (classLoader == nil) {
    @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:@"ClassLoader cannot be null"] autorelease];
  }
  DAActorSystem_set_classLoader_(self, classLoader);
}

- (void)dealloc {
  RELEASE_(dispatchers_);
  RELEASE_(traceInterface_);
  RELEASE_(classLoader_);
  [super dealloc];
}

- (void)copyAllFieldsTo:(DAActorSystem *)other {
  [super copyAllFieldsTo:other];
  DAActorSystem_set_dispatchers_(other, dispatchers_);
  DAActorSystem_set_traceInterface_(other, traceInterface_);
  DAActorSystem_set_classLoader_(other, classLoader_);
}

+ (void)initialize {
  if (self == [DAActorSystem class]) {
    JreStrongAssignAndConsume(&DAActorSystem_mainSystem_, nil, [[DAActorSystem alloc] init]);
    J2OBJC_SET_INITIALIZED(DAActorSystem)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "system", NULL, "Lcom.droidkit.actors.ActorSystem;", 0x9, NULL },
    { "init", "ActorSystem", NULL, 0x1, NULL },
    { "initWithBoolean:", "ActorSystem", NULL, 0x1, NULL },
    { "addDispatcherWithNSString:withInt:", "addDispatcher", "V", 0x1, NULL },
    { "addDispatcherWithNSString:", "addDispatcher", "V", 0x1, NULL },
    { "addDispatcherWithNSString:withComDroidkitActorsMailboxActorDispatcher:", "addDispatcher", "V", 0x1, NULL },
    { "actorOfWithDAActorSelection:", "actorOf", "Lcom.droidkit.actors.ActorRef;", 0x1, NULL },
    { "actorOfWithIOSClass:withNSString:", "actorOf", "Lcom.droidkit.actors.ActorRef;", 0x1, NULL },
    { "actorOfWithDAProps:withNSString:", "actorOf", "Lcom.droidkit.actors.ActorRef;", 0x1, NULL },
    { "getTraceInterface", NULL, "Lcom.droidkit.actors.debug.TraceInterface;", 0x1, NULL },
    { "setTraceInterfaceWithComDroidkitActorsDebugTraceInterface:", "setTraceInterface", "V", 0x1, NULL },
    { "getClassLoader", NULL, "Ljava.lang.ClassLoader;", 0x1, NULL },
    { "setClassLoaderWithJavaLangClassLoader:", "setClassLoader", "V", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mainSystem_", NULL, 0x1a, "Lcom.droidkit.actors.ActorSystem;", &DAActorSystem_mainSystem_,  },
    { "DEFAULT_DISPATCHER_", NULL, 0x1a, "Ljava.lang.String;", &DAActorSystem_DEFAULT_DISPATCHER_,  },
    { "dispatchers_", NULL, 0x12, "Ljava.util.HashMap;", NULL,  },
    { "traceInterface_", NULL, 0x2, "Lcom.droidkit.actors.debug.TraceInterface;", NULL,  },
    { "classLoader_", NULL, 0x2, "Ljava.lang.ClassLoader;", NULL,  },
  };
  static const J2ObjcClassInfo _DAActorSystem = { 1, "ActorSystem", "com.droidkit.actors", NULL, 0x1, 13, methods, 5, fields, 0, NULL};
  return &_DAActorSystem;
}

@end

DAActorSystem *DAActorSystem_system() {
  DAActorSystem_init();
  return DAActorSystem_mainSystem_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DAActorSystem)