//
//  ViewController.h
//  Calculator
//
//  Created by Esraa Hassan on 3/7/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNumber;
@property (weak, nonatomic) IBOutlet UITextField *secondNumber;
@property (weak, nonatomic) IBOutlet UILabel *answer;
- (IBAction)addButton:(UIButton *)sender;
- (IBAction)subButton:(UIButton *)sender;
- (IBAction)mulButton:(UIButton *)sender;
- (IBAction)divButton:(UIButton *)sender;

@end

