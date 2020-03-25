//
//  ViewController.m
//  HelloWorldApp
//
//  Created by JETS Mobile Lab on 3/5/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeName:(UIButton *)sender {
    [_helloText setText:@"Hello World!"]
}
@end
