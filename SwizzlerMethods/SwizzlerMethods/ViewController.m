//
//  ViewController.m
//  SwizzlerMethods
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ViewControllerCategory.h"
#import "UITextField+TextFieldCategory.h"
#import "UIResponder+UIResponderCategory.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFiledName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.textFiledName.delegate = self ;
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    NSLog(@"this is the before appear statement");

    [super viewWillAppear:animated];
    
    
    NSLog(@"this is the appear statement");
}
//
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
   // [self NewtouchesBegan2:touches withEvent:event];
    NSLog(@"this is the begin method ");
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"VCCCCC  THIS IS THE TEXT end EDIT NEWWWWW");

    return  true ;
}



- (void)textFieldDidBeginEditing:(UITextField *)textField {
   // [self newtextFieldDidBeginEditing:textField ];
    
    NSLog(@"VCCCCC  THIS IS THE TEXT BEGIN EDIT NEWWWWW");
    ///return true;
}


//- (BOOL)textField:(UITextField *)iTextField shouldChangeCharactersInRange:(NSRange)iRange replacementString:(NSString *)iString
//{
//
//    return true;
//}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
