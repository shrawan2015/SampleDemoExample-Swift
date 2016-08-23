//
//  ViewController.m
//  TextDetect
//
//  Created by ShrawanKumar Sharma on 12/08/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldOutlet;
- (IBAction)textFieldAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *buttonAction;

@property(nonatomic) BOOL pressing;

@property NSTimer *timeZone ;

@property (strong,nonatomic) NSString * textEdited;
@end

/*
 
 When it first receives touchesBegan:withEvent:, record the time.
 When it receives touchesEnded:withEvent:, start an NSTimer (the lift timer) that sends the gesture recognizer a cancel message (e.g. cancelRecognition) after maximumLiftTime.
 When it receives touchesBegan:withEvent: when there's a start time, cancel the lift timer (if any).
 The cancelRecognition will transition to the failed state.

 
 */
@implementation ViewController


//-(void)didHideEditMenu:(NSNotification *)nstofication {
//    NSLog(@"hide menu");
//    
//    UITextField *TextField = (UITextField *)[self.view viewWithTag:5];
//    if (TextField.text != _textEdited) {
//        NSLog(@"this is pasted ");
//    }
//    else {
//        NSLog(@"this is not pasted");
//    }
//    
//}
//
//-(void)didShowEditMenu:(NSNotification *)nstofication {
//    
//    UITextField *TextField = (UITextField *)[self.view viewWithTag:5];
//    _textEdited = TextField.text;
//    
//    NSLog(@"show menu");
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.userInteractionEnabled = YES;
   // _textFieldOutlet.delegate = self;
    
    
    Newclasss *class = [[Newclasss alloc] init];
   
    [class notificationName];
    
    // observer checks if we're back from the background
   //[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(myMethod) name:UIApplicationWillEnterForegroundNotification object:nil];
    
    
    
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didHideEditMenu:) name:UIMenuControllerDidHideMenuNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didShowEditMenu:) name:UIMenuControllerDidShowMenuNotification object:nil];

    // Do any additional setup after loading the view, typically from a nib.
}



-(void)myMethod {
    NSLog(@"this is the backgroundState");
    
    
}

-(void) paste:(id)sender{
    NSLog(@"paste button was pressed do something");
}

- (void) textViewDidBeginEditing:(UITextView *) textView {
    // Your code here
}
//
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = [[event allTouches] anyObject];
//
//    _timeZone = [NSTimer scheduledTimerWithTimeInterval: 2.0
//                                         target: self
//                                       selector:@selector(onTick:)
//                                       userInfo: nil repeats:NO];    if ([[touch.view class] isSubclassOfClass:[UITextField class]]) {
//      
//        NSLog(@"this is the starting point");
//    }
//    
//
//    NSLog(@"this is the starting point");
//
//}

-(void)onTick:(NSTimer *)timer {
/// NSLog(@"this is the timer complete");
}





//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
//    
//    UITouch *touch = [[event allTouches] anyObject];
//    CGPoint touchLocation = [touch locationInView:touch.view];
//    
//    if ([[touch.view class] isSubclassOfClass:[UITextField class]]) {
//        NSLog(@"this is the ended point");
//        
//    }
//    
//}
//- (void)touchesCancelled:(nullable NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event{
//   
//    UITouch *touch = [[event allTouches] anyObject];
//    CGPoint touchLocation = [touch locationInView:touch.view];
//    
//    if ([[touch.view class] isSubclassOfClass:[UITextField class]]) {
//        //NSLog(@"this is the starting point");
//    }
//    
//}
//
//- (void)touchesEstimatedPropertiesUpdated:(NSSet * _Nonnull)touches NS_AVAILABLE_IOS(9_1)
//{
//    
//}

//- (void)pressesBegan:(NSSet<UIPress *> *)presses withEvent:(nullable UIPressesEvent *)event NS_AVAILABLE_IOS(9_0);
//{
//    NSLog(@"this is the press key ");
//    
//}
//

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//new

- (void)longPress:(UIEvent *)event {
    NSLog(@"long press  print long press ");
    
}

- (void):(NSSet *)touches withEvent:(UIEvent *)event {
    
    [super touchesBegan:touches withEvent:event];
   
    NSLog(@"touch begin ");

    self.pressing = YES;
    [self performSelector:@selector(longPress:) withObject:event afterDelay:4];
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event{
    [super touchesMoved:touches withEvent:event];

    
}

- (void)touchesCancelled:(nullable NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event{
   
    [super touchesCancelled:touches withEvent:event];

    
}
//- (void)paste:(nullable id)sender NS_AVAILABLE_IOS(3_0){
//   
//    NSLog(@"this is paste");
//    
//}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *theTouch = [touches anyObject];
    
   NSArray <UIGestureRecognizer *> *gestureRecognizers = [touches anyObject];
    
    NSLog(@"%@",gestureRecognizers);

    
    NSLog(@"%f",theTouch.timestamp);
    
    if ([theTouch tapCount] == 2  && [self becomeFirstResponder]) {
        
        // selection management code goes here...
        
        // bring up edit menu.
        UIMenuController *theMenu = [UIMenuController sharedMenuController];
        //CGRect selectionRect = CGRectMake (currentSelection.x, currentSelection.y, SIDE, SIDE);
       // [theMenu setTargetRect:selectionRect inView:self];
        [theMenu setMenuVisible:YES animated:YES];
        
    }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    BOOL retValue = NO;
    //ColorTile *theTile = [self colorTileForOrigin:currentSelection];
    return true;
//    if (action == @selector(paste:) )
//        retValue = (theTile == nil) &&
//        [[UIPasteboard generalPasteboard] containsPasteboardTypes:
//         [NSArray arrayWithObject:ColorTileUTI]];
//    else if ( action == @selector(cut:) || action == @selector(copy:) )
//        retValue = (theTile != nil);
//    else
//        retValue = [super canPerformAction:action withSender:sender];
//    return retValue;
}
//
//
////- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
////    [super touchesEnded:touches withEvent:event];
////    NSLog(@"touch ended");
////
////    [NSObject cancelPreviousPerformRequestsWithTarget:self];
////    self.pressing = NO;
////}

- (IBAction)textFieldAction:(id)sender {
    
}
@end
