//
//  EditTaskViewController.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
@interface EditTaskViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *taskName;
@property (weak, nonatomic) IBOutlet UISegmentedControl *taskPriority;
@property (weak, nonatomic) IBOutlet UISegmentedControl *taskStatus;
@property (weak, nonatomic) IBOutlet UITextView *taskDescription;
- (IBAction)editButton:(UIButton *)sender;
@property Task *task;

@end
