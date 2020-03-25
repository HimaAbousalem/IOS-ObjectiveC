//
//  ViewController.m
//  LoginUsingUserDefaults
//
//  Created by Esraa Hassan on 3/8/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"
#import "LoginSuccessfullyViewController.h"
@interface ViewController ()

@end

@implementation ViewController
NSUserDefaults *defaults;

+(void)initialize{
    defaults = [NSUserDefaults standardUserDefaults];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginAction:(UIButton *)sender {
    NSString *userName = _userName.text;
    NSString *password = _password.text;
    NSString *savedUserName = [defaults valueForKey:@"userName"];
    NSString *savedPassword = [defaults valueForKey:@"password"];
    if(![userName isEqualToString:savedUserName] || ![password isEqualToString:savedPassword]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login Faild" message:@"Wrong Email and password!" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }else{
        LoginSuccessfullyViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"loginController"];
        controller.data = [NSString stringWithFormat:@"Welcome %@", userName];
        [self.navigationController pushViewController:controller animated:NO];
    }
}

- (IBAction)registerAction:(UIButton *)sender {
    NSString *userName = _userName.text;
    NSString *password = _password.text;
    [defaults setValue:userName forKeyPath:@"userName"];
    [defaults setValue:password forKeyPath:@"password"];
    _loginFailed.text = @"Registered Successfully!";
}
@end
