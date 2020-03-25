//
//  ThirdViewController.h
//  RegisterWebService
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColleagueClass.h"
NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (weak, nonatomic) IBOutlet UILabel *email;

@property ColleagueClass *data;

@end

NS_ASSUME_NONNULL_END
