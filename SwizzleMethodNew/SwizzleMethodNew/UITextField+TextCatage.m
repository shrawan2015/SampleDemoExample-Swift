//
//  UITextField+TextCatage.m
//  SwizzleMethodNew
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UITextField+TextCatage.h"
#import "objc/runtime.h"


@implementation UITextField (TextCatage)

-(void)Newpaste:(id)sender {
    [self Newpaste:sender];
    NSLog(@"%@",[self class]);
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Paste by sizzling"
                                                    message:@"Method paste "
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    
    
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
    
    
    //
    SEL oldMethod2  = @selector(pressesBegan:withEvent:);
    SEL newMethod2 = @selector(pressesBeganNew:withEvent:);
    
    Method oldMethodObj2 = class_getInstanceMethod(self, oldMethod2);
    Method newMethodObj2 = class_getInstanceMethod(self, newMethod2);
    
    method_exchangeImplementations
    (newMethodObj2, oldMethodObj2);

    
}

@end
