//
//  ThirdViewController.m
//  RegisterWebService
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _name.text = _data.name;
    _address.text = _data.address;
    _email.text = _data.email;
}


@end
