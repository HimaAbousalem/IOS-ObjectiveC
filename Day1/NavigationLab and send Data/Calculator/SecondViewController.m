//
//  SecondViewController.m
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                                 style:UIBarButtonItemStylePlain target:self action: @selector(doneClicked)];
    [self.navigationItem setRightBarButtonItem:doneItem];
    [_receivedData setText:_data];
}

-(void) doneClicked{
    [_secondViewProtocol sendDataProtocol:@"Welcome Back"];
    [self.navigationController popViewControllerAnimated:NO];
}
@end
