//
//  SecondViewController.h
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SendDataProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property id<SendDataProtocol>secondViewProtocol;
@property NSString *data;
@property (weak, nonatomic) IBOutlet UILabel *receivedData;

@end

NS_ASSUME_NONNULL_END
