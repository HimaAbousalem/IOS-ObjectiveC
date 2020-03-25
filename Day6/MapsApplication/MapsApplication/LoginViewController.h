//
//  LoginViewController.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <NSURLConnectionDataDelegate, NSURLConnectionDelegate,UIAlertViewDelegate>
    @property (weak, nonatomic) IBOutlet UITextField *passwordText;
    - (IBAction)loginAction:(UIButton *)sender;
    - (IBAction)registerAction:(UIButton *)sender;
    
@end
