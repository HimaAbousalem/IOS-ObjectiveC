//
//  ViewController.m
//  SwipeApplication
//
//  Created by JETS Mobile Lab on 3/9/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    recognizer.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:recognizer];
    
}
-(void) swipeLeft{
    SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"secondController"];
    [controller setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:controller animated:YES completion:nil]; 
}


@end
