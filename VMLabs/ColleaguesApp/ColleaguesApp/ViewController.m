//
//  ViewController.m
//  ColleaguesApp
//
//  Created by Esraa Hassan on 3/5/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"
#import "Colleague.h"
@interface ViewController ()

@end

@implementation ViewController
NSArray *colleagueArray;
Colleague *colleague1, *colleague2, *colleague3;
int counter = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    colleague1 = [Colleague new];
    colleague1.name = @"Ibrahim";
    colleague1.age = @"20";
    colleague1.email = @"hima.abousalem@gmail.com";
    colleague2 = [Colleague new];
    colleague2.name = @"Yahya";
    colleague2.age = @"20";
    colleague2.email = @"yahya@gmail.com";
    colleague3 = [Colleague new];
    colleague3.name = @"Abdelmalek";
    colleague3.age = @"20";
    colleague3.email = @"abdelmalek@gmail.com";
    colleagueArray = @[colleague1, colleague2, colleague3];
    [self printColleague];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)nextButton:(UIButton *)sender {
    counter++;
    if(counter>2){
        counter = 0;
    }
    [self printColleague];
}

- (IBAction)previousButton:(UIButton *)sender {
    counter--;
    if(counter<0){
        counter = 2;
    }
    [self printColleague];
}
-(void) printColleague{
    [_nameLabel setText:[[colleagueArray objectAtIndex:counter] name]];
    [_ageLabel setText:[[colleagueArray objectAtIndex:counter] age]];
    [_emailLabel setText:[[colleagueArray objectAtIndex:counter] email]];
}
@end
