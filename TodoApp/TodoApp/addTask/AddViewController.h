//
//  AddViewController.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *taskName;
- (IBAction)priority:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UITextView *taskDescription;
- (IBAction)addTask:(UIButton *)sender;
-(long) getCount;
@end
