//
//  UIResponder+UIResponderCategory.m
//  SwizzlerMethods
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UIResponder+UIResponderCategory.h"
#import "objc/runtime.h"


@implementation UIResponder (UIResponderCategory)

- (void)NEWpaste:(nullable id)sender{
    [self NEWpaste:sender] ;
    NSLog(@"THIS IS THE PASTE METHOD ");
    
    
}

//- (void)NewtouchesBegan2:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self NewtouchesBegan2:touches withEvent:event];
//    NSLog(@"this is the begin method ");
//}
//
//
//
//- (void)NewtouchesEnd2:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self NewtouchesBegan2:touches withEvent:event];
//    NSLog(@"this is the end method ");
//}



+(void)load {
    
    static dispatch_once_t once_token ;
    
    dispatch_once( &once_token, ^ {
        
                SEL oldMethod22 = @selector(paste:);
                SEL newMethod22 = @selector(NEWpaste:);
        
        
                Method oldMethdObj22 =  class_getInstanceMethod(self, oldMethod22);
                Method newMethodObj22 = class_getInstanceMethod(self, newMethod22);
        
        
                method_exchangeImplementations(newMethodObj22,oldMethdObj22);
        
//        SEL oldpasteViewselector  = @selector(touchesBegan:withEvent:);
//        SEL newpasteViewselector  = @selector(NewtouchesBegan2:withEvent: );
//        
//        
//        Method oldMethodobj = class_getInstanceMethod(self, oldpasteViewselector);
//        Method newMethodobj = class_getInstanceMethod(self, newpasteViewselector);
//        
//        method_exchangeImplementations(newMethodobj, oldMethodobj);
//        
//        
//        
//        SEL oldpasteViewselector2  = @selector(touchesEnded:withEvent:);
//        SEL newpasteViewselector2  = @selector(NewtouchesEnd2:withEvent:);
//        
//        
//        Method oldMethodobj2 = class_getInstanceMethod(self, oldpasteViewselector2);
//        Method newMethodobj2 = class_getInstanceMethod(self, newpasteViewselector2);
//        
//        method_exchangeImplementations(newMethodobj2, oldMethodobj2);
        
    });
    
    
}



@end
