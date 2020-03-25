//
//  DetailsViewController.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "DetailsViewController.h"
#import "EditTaskViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _taskDescription.layer.borderWidth = 4.0f;
    _taskDescription.layer.borderColor = [[UIColor grayColor] CGColor];
}
- (void)viewWillAppear:(BOOL)animated{
    _taskName.text = _task.name;
    _taskDescription.text = _task.desc;
    _taskPriority.text = _task.taskPriority;
    _taskStatus.text = _task.status;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)editButton:(UIButton *)sender {
    EditTaskViewController *editController = [self.storyboard instantiateViewControllerWithIdentifier:@"editVC"];
    editController.task = _task;
    [self.navigationController pushViewController:editController animated:true];
}
@end
