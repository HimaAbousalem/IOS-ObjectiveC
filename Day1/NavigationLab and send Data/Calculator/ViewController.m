//
//  ViewController.m
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


- (IBAction)sendData:(UIButton *)sender {
    NSString *data = _editText.text;
    SecondViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    controller.secondViewProtocol = self;
    controller.data = data;
    [self.navigationController pushViewController:controller animated:NO];
}

- (void)sendDataProtocol:(NSString *)data{
    _editText.text = data;
}

@end
