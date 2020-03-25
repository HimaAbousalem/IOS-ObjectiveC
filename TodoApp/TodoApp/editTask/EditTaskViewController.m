//
//  EditTaskViewController.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "EditTaskViewController.h"

@interface EditTaskViewController ()

@end

@implementation EditTaskViewController{
    NSUserDefaults *defaults;
    UIAlertView *alert;
    NSArray *priorities, *statusData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    priorities = @[@"Low", @"Medium", @"High"];
    statusData = @[@"Todo", @"InProgress", @"Done"];
    defaults = [NSUserDefaults standardUserDefaults];
    _taskDescription.layer.borderWidth = 4.0f;
    _taskDescription.layer.borderColor = [[UIColor grayColor] CGColor];
    _taskName.text = _task.name;
    _taskDescription.text = _task.desc;
    
    if([_task.taskPriority isEqualToString:@"Low"]){
        [_taskPriority setSelectedSegmentIndex:0];
    }else if([_task.taskPriority isEqualToString:@"Medium"]){
        [_taskPriority setSelectedSegmentIndex:1];
    }else{
        [_taskPriority setSelectedSegmentIndex:2];
    }
    
    if([_task.status isEqualToString:@"Todo"]){
        [_taskStatus setSelectedSegmentIndex:0];
    }else if([_task.status isEqualToString:@"InProgress"]){
        [_taskStatus setSelectedSegmentIndex:1];
        [_taskStatus setEnabled:NO forSegmentAtIndex:0];
    }else{
        [_taskStatus setSelectedSegmentIndex:2];
        [_taskStatus setEnabled:NO forSegmentAtIndex:0];
        [_taskStatus setEnabled:NO forSegmentAtIndex:1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)editButton:(UIButton *)sender {
    alert = [[UIAlertView alloc] initWithTitle:@"Warrning"
                                        message:@"Are you sure you want to update!"
                                       delegate:self
                              cancelButtonTitle:nil
                             otherButtonTitles:@"Update", @"Cancel",nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:{
            _task.name =_taskName.text;
            _task.desc = _taskDescription.text;
            _task.taskPriority = [priorities objectAtIndex:[_taskPriority selectedSegmentIndex]];
            _task.status = [statusData objectAtIndex:[_taskStatus selectedSegmentIndex]];
            NSData *data = [NSKeyedArchiver archivedDataWithRootObject:_task];
            [defaults setObject:data forKey:[NSString stringWithFormat:@"TaskObject%ld", _task.taskId]];
            [self.navigationController popViewControllerAnimated:YES];
            break;
        }	
        case 1:
        default:
            break;
    }
}
@end
