//
//  ViewController.m
//  ColleagueAppV2
//
//  Created by Esraa Hassan on 3/7/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _name.text = _data.name;
    _address.text = _data.address;
    _email.text = _data.email;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
