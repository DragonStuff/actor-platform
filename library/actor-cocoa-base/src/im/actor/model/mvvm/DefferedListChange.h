//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/DefferedListChange.java
//

#ifndef _AMDefferedListChange_H_
#define _AMDefferedListChange_H_

#include "J2ObjC_header.h"

@class AMDefferedListModification;
@class JavaUtilArrayList;

@interface AMDefferedListChange : NSObject

#pragma mark Public

- (instancetype)initWithJavaUtilArrayList:(JavaUtilArrayList *)list
                    withJavaUtilArrayList:(JavaUtilArrayList *)modifications;

+ (AMDefferedListChange *)buildAndroidListChangeWithJavaUtilArrayList:(JavaUtilArrayList *)modificationResults
                                                withJavaUtilArrayList:(JavaUtilArrayList *)initialList;

- (jint)getCount;

- (id)getItemWithInt:(jint)index;

- (AMDefferedListModification *)next;

@end

J2OBJC_EMPTY_STATIC_INIT(AMDefferedListChange)

FOUNDATION_EXPORT void AMDefferedListChange_initWithJavaUtilArrayList_withJavaUtilArrayList_(AMDefferedListChange *self, JavaUtilArrayList *list, JavaUtilArrayList *modifications);

FOUNDATION_EXPORT AMDefferedListChange *new_AMDefferedListChange_initWithJavaUtilArrayList_withJavaUtilArrayList_(JavaUtilArrayList *list, JavaUtilArrayList *modifications) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT AMDefferedListChange *AMDefferedListChange_buildAndroidListChangeWithJavaUtilArrayList_withJavaUtilArrayList_(JavaUtilArrayList *modificationResults, JavaUtilArrayList *initialList);

J2OBJC_TYPE_LITERAL_HEADER(AMDefferedListChange)

typedef AMDefferedListChange ImActorModelMvvmDefferedListChange;

#endif // _AMDefferedListChange_H_