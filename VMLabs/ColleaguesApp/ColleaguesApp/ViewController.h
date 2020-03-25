//
//  ViewController.h
//  ColleaguesApp
//
//  Created by Esraa Hassan on 3/5/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
- (IBAction)nextButton:(UIButton *)sender;
- (IBAction)previousButton:(UIButton *)sender;


@end

