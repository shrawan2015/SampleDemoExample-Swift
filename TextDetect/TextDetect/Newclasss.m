//
//  Newclasss.m
//  TextDetect
//
//  Created by ShrawanKumar Sharma on 16/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "Newclasss.h"
#import <UIKit/UIKit.h>

@implementation Newclasss

-(void)notificationName {
    
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didHideEditMenu:) name:UIMenuControllerDidHideMenuNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didShowEditMenu:) name:UIMenuControllerDidShowMenuNotification object:nil];

}

-(void)didHideEditMenu:(NSNotification *)nstofication {
    NSLog(@"hide menu");
    
   // UITextField *TextField = (UITextField *)[self.view viewWithTag:5];
//    if (TextField.text != _textEdited) {
//        NSLog(@"this is pasted ");
//    }
//    else {
//        NSLog(@"this is not pasted");
//    }
    
}

-(void)didShowEditMenu:(NSNotification *)nstofication {
    
    NSLog(@"slkdfdjklfjkdlsfkl");

//
//    UITextField *TextField = (UITextField *)[self.view viewWithTag:5];
//    _textEdited = TextField.text;
//    
//    NSLog(@"show menu");
}
@end
