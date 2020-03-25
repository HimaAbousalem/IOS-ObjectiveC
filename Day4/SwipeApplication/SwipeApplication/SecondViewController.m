//
//  SecondViewController.m
//  SwipeApplication
//
//  Created by JETS Mobile Lab on 3/9/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    recognizer.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:recognizer];
}

-(void) swipeRight{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
