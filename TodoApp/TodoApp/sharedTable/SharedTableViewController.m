//
//  SharedTableViewController.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "SharedTableViewController.h"
#import "Task.h"
@interface SharedTableViewController ()

@end

@implementation SharedTableViewController{
    NSUserDefaults *defaults;
    NSMutableArray *returnedTasks;
    NSMutableArray *viewedTasks;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    defaults = [NSUserDefaults standardUserDefaults];
    returnedTasks = [NSMutableArray new];
    viewedTasks = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if(_tabIndex == 4){
        return 3;
    }
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_tasks count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    [cell.textLabel setText:[[_tasks objectAtIndex:indexPath.row] name]];
    [cell.detailTextLabel setText:[[_tasks objectAtIndex:indexPath.row] desc]];
    if([[[_tasks objectAtIndex:indexPath.row] taskPriority] isEqualToString:@"Low"]){
        [cell.imageView setImage: [UIImage imageNamed:@"low.png"]];
    }else if([[[_tasks objectAtIndex:indexPath.row] taskPriority] isEqualToString:@"Medium"]){
        [cell.imageView setImage: [UIImage imageNamed:@"mid.png"]];
    }else{
        [cell.imageView setImage: [UIImage imageNamed:@"high.png"]];
    }

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        long taskId = [[_tasks objectAtIndex:indexPath.row] taskId];
        [defaults removeObjectForKey:[NSString stringWithFormat:@"TaskObject%ld", taskId]];
        long index = indexPath.row;
        [_tasks removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];

    }
    [tableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_communication returnTask:[_tasks objectAtIndex:indexPath.row]];
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/
//-(void) getDataFromDefaults{
//    [returnedTasks removeAllObjects];
//    long count = [defaults integerForKey:@"count"];
//    for(long i = 1; i <= count ; i++){
//        NSData *data = [defaults objectForKey:[NSString stringWithFormat:@"TaskObject%ld", i]];
//        if(data!=nil){
//            [returnedTasks addObject:[NSKeyedUnarchiver unarchiveObjectWithData:data]];
//        }
//    }
//    [self customizeTodoList:@"Todo" :0];
//}
//-(void) customizeTodoList:(NSString*)name :(long)position{
//    [viewedTasks removeAllObjects];
//    for(int i = 0 ; i< [returnedTasks count]; i++){
//        if([[[returnedTasks objectAtIndex:i] status] isEqualToString:name]){
//            [viewedTasks addObject:[returnedTasks objectAtIndex:i]];
//        }
//    }
//    [self reloadTableViewData:position];
//}
//
//-(void) reloadTableViewData:(long) index{
//   _tasks = viewedTasks;
//    [self reloadData];
//}

@end
