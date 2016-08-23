//
//  NSObject+PasteObject.m
//  SwizzlerMethods
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "NSObject+PasteObject.h"



#import "objc/runtime.h"


@implementation NSObject (PasteObject)

//-(void)newPasteMethod:( id)sender{
//    [self newPasteMethod:sender] ;
//    NSLog(@"THIS IS THE PASTE METHOD ");
//    
//    
//}
//
//+(void)load {
//    
//    static dispatch_once_t once_token2 ;
//    
//    dispatch_once( &once_token2, ^ {
//        
//        SEL oldMethod = @selector(paste:);
//        SEL newMethod = @selector(newPasteMethod:);
//        
//        
//        Method oldMethdObj =  class_getInstanceMethod(self, oldMethod);
//        Method newMethodObj = class_getInstanceMethod(self, newMethod);
//        
//        
//        method_exchangeImplementations(newMethodObj,oldMethdObj);
//        
//        //        SEL oldpasteViewselector  = @selector(touchesBegan:withEvent:);
//        //        SEL newpasteViewselector  = @selector(NewtouchesBegan2:withEvent: );
//        //
//        //
//        //        Method oldMethodobj = class_getInstanceMethod(self, oldpasteViewselector);
//        //        Method newMethodobj = class_getInstanceMethod(self, newpasteViewselector);
//        //
//        //        method_exchangeImplementations(newMethodobj, oldMethodobj);
//        //
//        //
//        //
//        //        SEL oldpasteViewselector2  = @selector(touchesEnded:withEvent:);
//        //        SEL newpasteViewselector2  = @selector(NewtouchesEnd2:withEvent:);
//        //
//        //
//        //        Method oldMethodobj2 = class_getInstanceMethod(self, oldpasteViewselector2);
//        //        Method newMethodobj2 = class_getInstanceMethod(self, newpasteViewselector2);
//        //
//        //        method_exchangeImplementations(newMethodobj2, oldMethodobj2);
//        
//    });
//    
//}
@end
