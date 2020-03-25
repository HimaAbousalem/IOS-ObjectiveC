//
//  ViewController.h
//  HelloWorldApp
//
//  Created by JETS Mobile Lab on 3/5/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *helloText;
- (IBAction)changeName:(UIButton *)sender;

@end

