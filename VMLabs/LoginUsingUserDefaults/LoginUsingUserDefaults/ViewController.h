//
//  ViewController.h
//  LoginUsingUserDefaults
//
//  Created by Esraa Hassan on 3/8/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *userName;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)loginAction:(UIButton *)sender;
- (IBAction)registerAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *loginFailed;

@end

