//
//  ViewController.h
//  BounceBall
//
//  Created by JETS Mobile Lab on 3/9/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property (strong, nonatomic) IBOutlet UIView *ball;
@property (strong, nonatomic) UIDynamicAnimator *animator;
@end

