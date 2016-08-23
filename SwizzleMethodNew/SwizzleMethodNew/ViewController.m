//
//  ViewController.m
//  SwizzleMethodNew
//
//  Created by ShrawanKumar Sharma on 17/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "ViewController.h"
#import "UIResponder+ResponderCategory.h"
//#import "UITextField+TextCatage.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textViewOutlet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",_textViewOutlet.text);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
