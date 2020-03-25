//
//  ViewController.m
//  BounceBall
//
//  Created by JETS Mobile Lab on 3/9/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _ball.layer.cornerRadius =25;
    [self ballAnimation];
}

-(void) ballAnimation{
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[_ball]];
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[_ball]];
    UIDynamicItemBehavior *elasticityBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[_ball]];
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    elasticityBehavior.elasticity = 0.75;
    [self.animator addBehavior:gravity];
    [self.animator addBehavior:collision];
    [self.animator addBehavior:elasticityBehavior];
    [collision setCollisionDelegate:self];
    
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier{
    _ball.layer.backgroundColor = [UIColor blueColor].CGColor;
}

@end
