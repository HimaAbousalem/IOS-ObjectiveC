//
//  ViewController.m
//  Validation
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)validation:(UIButton *)sender {
    NSString *data = [_inputTextView text];
    NSNumberFormatter *nf = [NSNumberFormatter new];
    if(![data isEqualToString:@""]){
        if ([nf numberFromString:data] != nil){
            [_outputLabel setText: @"This is a number!"];
            
        }else{
            [_outputLabel setText:@"This is a String!"];
        }
    }else{
        [_outputLabel setText:@"Please enter data!"];
    }
}
@end
