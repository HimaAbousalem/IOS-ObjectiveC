//
//  ViewController.m
//  CopyingText
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


- (IBAction)copyingText:(UIButton *)sender {
    NSString *enteredText = [_editText text];
    [_label setText:enteredText];
}
@end
