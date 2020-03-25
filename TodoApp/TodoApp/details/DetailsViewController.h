//
//  DetailsViewController.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
@interface DetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *taskName;
@property (weak, nonatomic) IBOutlet UILabel *taskPriority;
@property (weak, nonatomic) IBOutlet UITextView *taskDescription;
@property (weak, nonatomic) IBOutlet UILabel *taskStatus;
- (IBAction)editButton:(UIButton *)sender;

@property Task* task;

@end
