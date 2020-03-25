//
//  ViewController.m
//  Calculator
//
//  Created by Esraa Hassan on 3/7/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (IBAction)addButton:(UIButton *)sender {
    if([self validateData:_firstNumber.text :_secondNumber.text]){
        long numberOne = [[_firstNumber text] longLongValue];;
        long numberTwo = [[_secondNumber text] longLongValue];
        _answer.text = [NSString stringWithFormat:@"%ld", numberOne + numberTwo];
    }
}

- (IBAction)subButton:(UIButton *)sender {
    if([self validateData:_firstNumber.text :_secondNumber.text]){
        long numberOne = [[_firstNumber text] longLongValue];;
        long numberTwo = [[_secondNumber text] longLongValue];
        _answer.text = [NSString stringWithFormat:@"%ld", numberOne - numberTwo];
    }
}

- (IBAction)mulButton:(UIButton *)sender {
    if([self validateData:_firstNumber.text :_secondNumber.text]){
        long numberOne = [[_firstNumber text] longLongValue];;
        long numberTwo = [[_secondNumber text] longLongValue];
        _answer.text = [NSString stringWithFormat:@"%ld", numberOne * numberTwo];
    }
}

- (IBAction)divButton:(UIButton *)sender {
    if([self validateData:_firstNumber.text :_secondNumber.text]){
        double numberOne = [[_firstNumber text] longLongValue];;
        double numberTwo = [[_secondNumber text] longLongValue];
        if(numberTwo!=0){
            _answer.text = [NSString stringWithFormat:@"%f", numberOne / numberTwo];
        }else{
            _answer.text = @"Error";
        }
    }
}
-(Boolean) validateData: (NSString*) firstNumber :(NSString*) secondNumber{
    return ![firstNumber isEqualToString:@""]&&![secondNumber isEqualToString:@""];
}
@end
