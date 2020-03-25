//
//  LoginSuccessfullyViewController.m
//  LoginUsingUserDefaults
//
//  Created by Esraa Hassan on 3/8/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "LoginSuccessfullyViewController.h"

@interface LoginSuccessfullyViewController ()

@end

@implementation LoginSuccessfullyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _message.text = _data;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
