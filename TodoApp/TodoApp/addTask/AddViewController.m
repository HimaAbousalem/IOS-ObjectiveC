//
//  AddViewController.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "AddViewController.h"
#import "Task.h"

@interface AddViewController ()

@end

@implementation AddViewController{
    NSUserDefaults *defaults;
    Task *task;
    long count;
}
-(void) viewWillAppear:(BOOL)animated{
//     self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    defaults = [NSUserDefaults standardUserDefaults];
    task = [Task new];
    task.taskPriority = @"Low";
    _taskDescription.layer.borderWidth = 4.0f;
    _taskDescription.layer.borderColor = [[UIColor grayColor] CGColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)priority:(UISegmentedControl *)sender {
    NSInteger selectedPosition = [sender selectedSegmentIndex];
    printf("%ld",selectedPosition);
    switch (selectedPosition) {
        case 0:
            task.taskPriority = @"Low";
            break;
        case 1:
            task.taskPriority = @"Medium";
            break;
        case 2:
            task.taskPriority = @"High";
            break;
        default:
            task.taskPriority = @"Low";
            break;
    }
}
- (IBAction)addTask:(UIButton *)sender {
    if(![_taskName.text isEqualToString:@""] || ! [_taskDescription.text isEqualToString:@""]){
        task.name = _taskName.text;
        task.desc = _taskDescription.text;
        task.creationDate = [NSDate date];
        task.status = @"Todo";
        count = [self getCount];
        count++;
        task.taskId = count;
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:task];
        [defaults setInteger:count forKey:@"count"];
        [defaults setObject:data forKey:[NSString stringWithFormat:@"TaskObject%ld", count]];
    }
}

- (long)getCount{
        long value = [defaults integerForKey:@"count"];
    return value;
}
@end
