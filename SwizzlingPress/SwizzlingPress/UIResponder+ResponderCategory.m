//
//  UIResponder+ResponderCategory.m
//  SwizzlingPress
//
//  Created by ShrawanKumar Sharma on 18/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UIResponder+ResponderCategory.h"
#import "objc/runtime.h"


@implementation UIResponder (ResponderCategory)

//-(void)pressesBeganNew:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    
//    [self pressesBeganNew:presses withEvent:event];
//    NSLog(@"press Begin start");
//}
//
//-(void)pressesChangedNew:(NSSet<UIPress *> *)presses withEvent:(UIPressesEvent *)event {
//    
//    [self pressesChangedNew:presses withEvent:event];
//    NSLog(@"press end started");
//}
//
//
//- (void)touchesBeganNew:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
//    [self touchesBeganNew:touches withEvent:event];
//    
//        //UITouch *touch = [[event allTouches] anyObject];
//    
//       [self performSelector:@selector(longPress:) withObject:event afterDelay:1];
//   
//    NSLog(@"thi is the touch begin ");
//}
//
//- (void)touchesEndedNew:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event;
//{
//    [self touchesEndedNew:touches withEvent:event];
//    
//    UITouch *theTouch = [touches anyObject];
//   // NSArray <UIGestureRecognizer *> *gestureRecognizers = [touches anyObject];
//    
//    //NSLog(@"%@",gestureRecognizers);
//    
//    
//    NSLog(@"%f",theTouch.timestamp);
//
//    [NSObject cancelPreviousPerformRequestsWithTarget:self];
//    NSLog(@"touch ended");
//}
//
//- (void)longPress:(UIEvent *)event {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Long Presssss"
//                                                    message:@"Long Press"
//                                                   delegate:self
//                                          cancelButtonTitle:@"OK"
//                                          otherButtonTitles:nil];
//    [alert show];
//
//    
//}
//
//
//
//+(void)load {
//    
//    
//    static dispatch_once_t once_token;
//    dispatch_once(&once_token,  ^{
//        
//       
//       
//    
//    SEL oldMethod2  = @selector(pressesBegan:withEvent:);
//    SEL newMethod2 = @selector(pressesBeganNew:withEvent:);
//    
//    Method oldMethodObj2 = class_getInstanceMethod(self, oldMethod2);
//    Method newMethodObj2 = class_getInstanceMethod(self, newMethod2);
//    
//    method_exchangeImplementations
//    (newMethodObj2, oldMethodObj2);
//        
//        
//        SEL oldMethod  = @selector(touchesBegan:withEvent:);
//        SEL newMethod = @selector(touchesBeganNew:withEvent:);
//        
//        Method oldMethodObj = class_getInstanceMethod(self, oldMethod);
//        Method newMethodObj = class_getInstanceMethod(self, newMethod);
//        
//        method_exchangeImplementations
//        (newMethodObj, oldMethodObj);
//        
//        SEL oldMethod3  = @selector(touchesEnded:withEvent:);
//        SEL newMethod3 = @selector(touchesEndedNew:withEvent:);
//        
//        Method oldMethodObj3 = class_getInstanceMethod(self, oldMethod3);
//        Method newMethodObj3 = class_getInstanceMethod(self, newMethod3);
//        
//        method_exchangeImplementations
//        (newMethodObj3, oldMethodObj3);
//
//    
//    
//    });
//
//    
//    
//}
@end
