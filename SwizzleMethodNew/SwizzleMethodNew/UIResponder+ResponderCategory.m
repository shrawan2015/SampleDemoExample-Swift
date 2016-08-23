//
//  UIResponder+ResponderCategory.m
//  SwizzleMethodNew
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UIResponder+ResponderCategory.h"

#import "objc/runtime.h"

@implementation UIResponder (ResponderCategory)

/*
 
 - (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0);
 - (void)pressesChanged:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0);
 - (void)pressesEnded:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0);
 */


-(void)Newpaste:(id)sender {
    [self Newpaste:sender];
    
    NSLog(@"thisis the paste method called");
}



-(void)pressesBeganNew:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
   
    [self pressesBeganNew:presses withEvent:event];
    NSLog(@"press Begin start");
}

-(void)pressesChangedNew:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
   
    [self pressesChangedNew:presses withEvent:event];
     NSLog(@"press end started");
}


+(void)load{
    
    
    static dispatch_once_t once_token;
    dispatch_once(&once_token,  ^{
    
    SEL oldMethod  = @selector(paste:);
    SEL newMethod = @selector(Newpaste:);
    
    Method oldMethodObj = class_getInstanceMethod(self, oldMethod);
    Method newMethodObj = class_getInstanceMethod(self, newMethod);
    
    method_exchangeImplementations
        (newMethodObj, oldMethodObj);
    });
    
    
    SEL oldMethod2  = @selector(pressesBegan:withEvent:);
    SEL newMethod2 = @selector(pressesBeganNew:withEvent:);
    
    Method oldMethodObj2 = class_getInstanceMethod(self, oldMethod2);
    Method newMethodObj2 = class_getInstanceMethod(self, newMethod2);
    
    method_exchangeImplementations
    (newMethodObj2, oldMethodObj2);





}

@end
