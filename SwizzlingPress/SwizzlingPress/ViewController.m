//
//  ViewController.m
//  SwizzlingPress
//
//  Created by ShrawanKumar Sharma on 18/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSTimer *timezonER2;

}
@property (weak, nonatomic) IBOutlet UITextField *textFieldChagne;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//     timezonER2 = [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(longPress2:) userInfo:nil repeats:YES];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)longPress2:(UIEvent *)event {
    
    NSLog(@"this is t22222he long press");
    
    //    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Long Presssss"
    //                                                    message:@"Long Press"
    //                                                   delegate:self
    //                                          cancelButtonTitle:@"OK"
    //                                          otherButtonTitles:nil];
    //    [alert show];
    
    
}
-(void)viewWillAppear:(BOOL)animated{

   // _textFieldChagne.delegate=self;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
