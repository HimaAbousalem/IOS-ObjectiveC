//
//  ProfileViewController.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
@interface ProfileViewController : UIViewController
    @property (weak, nonatomic) IBOutlet UIImageView *image;
    @property (weak, nonatomic) IBOutlet UILabel *name;
    @property (weak, nonatomic) IBOutlet UILabel *age;
    @property (weak, nonatomic) IBOutlet UILabel *lat;
    @property (weak, nonatomic) IBOutlet UILabel *lng;
    @property User *user;
@end
