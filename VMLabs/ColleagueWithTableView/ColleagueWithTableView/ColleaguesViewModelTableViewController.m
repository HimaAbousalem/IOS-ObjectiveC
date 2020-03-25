//
//  ColleaguesViewModelTableViewController.m
//  ColleagueWithTableView
//
//  Created by Esraa Hassan on 3/7/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ColleaguesViewModelTableViewController.h"

@interface ColleaguesViewModelTableViewController ()

@end

@implementation ColleaguesViewModelTableViewController{
    NSMutableArray *males;
    NSMutableArray *females;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    males = [NSMutableArray new];
    females = [NSMutableArray new];
    
    [males addObject:@"Ahmed"];
    [males addObject:@"Ibrahim"];
    [males addObject:@"Yahya"];
    [males addObject:@"Ashraf"];
    
    [females addObject:@"Esraa"];
    [females addObject:@"Omnia"];
    [females addObject:@"Eman"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger numberOfRows = 0;
    switch (section) {
        case 0:
            numberOfRows = [males count];
            break;
        case 1:
            numberOfRows = [females count];
            break;
    }
    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [males objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text = [females objectAtIndex:indexPath.row];
            break;
    }
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
