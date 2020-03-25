//
//  ViewController.h
//  ColleagueAppV2
//
//  Created by Esraa Hassan on 3/7/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColleagueClass.h"
@interface ViewController : UIViewController
@property ColleagueClass *data;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *address;

@end

