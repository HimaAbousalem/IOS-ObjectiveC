//
//  ViewController.h
//  Calculator
//
//  Created by JETS Mobile Lab on 3/7/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SendDataProtocol.h"

@interface ViewController : UIViewController <SendDataProtocol>
@property (weak, nonatomic) IBOutlet UITextField *editText;

- (IBAction)sendData:(UIButton *)sender;

@end

