//
//  UIViewController+ViewControllerCategory.m
//  SwizzlerMethods
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UIViewController+ViewControllerCategory.h"
#import "objc/runtime.h"

@implementation UIViewController (ViewControllerCategory)

-(void)new_viewWillAppear {
    [self new_viewWillAppear];
   
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleUpdatedData:) name:UITextViewTextDidChangeNotification object:self];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleEndeddData:) name:UITextFieldTextDidEndEditingNotification object:self];
    

}
-(void)handleEndeddData:(NSNotification *)notification {
    NSLog(@"recieved DID DJFLDJLFKJDKLFJ");
}


    -(void)handleUpdatedData:(NSNotification *)notification {
        NSLog(@"recieved DID CHAGNE ");
    }
//NSLog(@"THIS IS THE LOG PRINTED");


+(void)load {
    
    static dispatch_once_t once_token;
    
    dispatch_once( &once_token , ^{
        
        SEL oldMethodCalling = @selector(viewWillAppear:);
        SEL newMethodCalling = @selector(new_viewWillAppear);
        
        Method oldMethod = class_getInstanceMethod(self, oldMethodCalling);
        Method newMethod = class_getInstanceMethod(self, newMethodCalling);
        method_exchangeImplementations(newMethod, oldMethod);
    });
    
}



@end
