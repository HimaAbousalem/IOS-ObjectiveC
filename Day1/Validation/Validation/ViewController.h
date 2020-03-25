//
//  ViewController.h
//  Validation
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputTextView;
- (IBAction)validation:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

