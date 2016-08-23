//
//  UITextField+TextFieldCategory.m
//  SwizzlerMethods
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "UITextField+TextFieldCategory.h"
#import "objc/runtime.h"


@implementation UITextField (TextFieldCategory)

-(void)newPasteMethod:(nullable id)sender{
    
    [self newPasteMethod:sender] ;
    NSLog(@"THIS IS THE PASTE METHOD ");
    
}

//
//-(void)newTextChangeMethod::(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
//    NSLog(@"this is the log")
//    
//}


- (BOOL)textField:(UITextField *)iTextField shouldChangeCharactersInRange2:(NSRange)iRange replacementString:(NSString *)iString
{
    

    [self textField:iTextField shouldChangeCharactersInRange2:iRange replacementString:iString];
    NSLog(@"this is the text field");
    return true;
}

-(void)textFieldDidChange :(UITextField *)theTextField{
    NSLog( @"text changed: %@", theTextField.text);
    NSLog(@"Tddsffdffdfd");

}


- (void)newtextFieldDidBeginEditing:(UITextField *)textField {
    [self newtextFieldDidBeginEditing:textField ];
   
    [textField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    
    NSLog(@"THIS IS THE TEXT BEGIN EDIT NEWWWWW");
    
}




+(void)load {
    
    static dispatch_once_t once_token ;
    
    dispatch_once( &once_token, ^ {
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
//        SEL oldTextView = @selector(textField:shouldChangeCharactersInRange:replacementString:);
//        SEL newTextView = @selector(textField:shouldChangeCharactersInRange2:replacementString:);
//        
//    
//        Method oldMethodText = class_getInstanceMethod(self, oldTextView);
//        Method newMethodText = class_getInstanceMethod(self, newTextView);
//        
//        method_exchangeImplementations(newMethodText, oldMethodText);
//        
        
        
        
        SEL oldTextBegin= @selector(textFieldDidBeginEditing:);
        SEL newTextBegin = @selector(newtextFieldDidBeginEditing:);
        
        
        Method oldMethodbEGIN = class_getInstanceMethod(self, oldTextBegin);
        Method newMethodbEGIN = class_getInstanceMethod(self, newTextBegin);
        
        method_exchangeImplementations(newMethodbEGIN, oldMethodbEGIN);

        
        
    });
    
    
}

@end
