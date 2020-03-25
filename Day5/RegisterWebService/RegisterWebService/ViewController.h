//
//  ViewController.h
//  RegisterWebService
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDataDelegate, NSURLConnectionDelegate,UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *userNameET;
@property (weak, nonatomic) IBOutlet UITextField *passwordET;
- (IBAction)loginBtn:(UIButton *)sender;

- (IBAction)registerBtn:(UIButton *)sender;
@end

