//
//  ViewController.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ViewController.h"
#import "SharedTableViewController.h"
#import "DetailsViewController.h"
#import "Task.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSUserDefaults *defaults;
    NSMutableArray *returnedTasks;
    NSMutableArray *viewedTasks;
    SharedTableViewController *sharedTableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    returnedTasks = [NSMutableArray new];
    viewedTasks = [NSMutableArray new];
    defaults = [NSUserDefaults standardUserDefaults];
    //configure tableView
    sharedTableView = [SharedTableViewController new];
    sharedTableView.communication = self;
    _tableView.delegate = sharedTableView;
    _tableView.dataSource = sharedTableView;
    _searchView.delegate = self;
    _tabBar.delegate = self;
}
- (void)viewWillAppear:(BOOL)animated{
    [self getDataFromDefaults];
}

-(void) getDataFromDefaults{
    [returnedTasks removeAllObjects];
    long count = [defaults integerForKey:@"count"];
    for(long i = 1; i <= count ; i++){
        NSData *data = [defaults objectForKey:[NSString stringWithFormat:@"TaskObject%ld", i]];
        if(data!=nil){
            [returnedTasks addObject:[NSKeyedUnarchiver unarchiveObjectWithData:data]];
        }
    }
    [self customizeTodoList:@"Todo" :0];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSUInteger selectedPosition = [[tabBar items] indexOfObject:item];
    printf("%ld", selectedPosition);
    [self switchBetweenTabs:selectedPosition];
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
        [viewedTasks removeAllObjects];
        if(searchText.length == 0){
            [self switchBetweenTabs:_tabIndex];
        }
        for(int i = 0; i < [returnedTasks count]; i++){
            if([[[[returnedTasks objectAtIndex:i] name] lowercaseString] containsString:[searchText lowercaseString]]){
                [viewedTasks addObject:[returnedTasks objectAtIndex:i]];
            }
        }
    [self reloadTableViewData:_tabIndex];
}

-(void) customizeTodoList:(NSString*)name :(long)position{
    [viewedTasks removeAllObjects];
    for(int i = 0 ; i< [returnedTasks count]; i++){
        if([[[returnedTasks objectAtIndex:i] status] isEqualToString:name]){
            [viewedTasks addObject:[returnedTasks objectAtIndex:i]];
        }
    }
    [self reloadTableViewData:position];
}

-(void) reloadTableViewData:(long) index{
    sharedTableView.tasks = viewedTasks;
    sharedTableView.tabIndex = index;
    [_tableView reloadData];
}

-(void) switchBetweenTabs:(long) position{
    switch (position) {
        case 0:
            [self customizeTodoList:@"Todo" :0];
            _tabIndex =0;
            break;
        case 1:
            [self customizeTodoList:@"InProgress" :1];
            _tabIndex =1;
            break;
        case 2:
            [self customizeTodoList:@"Done" :2];
            _tabIndex =2;
            break;
        case 3:{
            _tabIndex =3;
            NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc]
                                                initWithKey: @"creationDate" ascending: NO];
            [viewedTasks removeAllObjects];
            for(int i = 0 ;i < [returnedTasks count] ;i++){
                [viewedTasks addObject:[returnedTasks objectAtIndex:i]];
            }
            [viewedTasks sortUsingDescriptors:@[sortDescriptor]];
            [self reloadTableViewData:3];
            break;
        }
        case 4:
            _tabIndex =4;
            [self reloadTableViewData:4];
            break;
        default:
            [self customizeTodoList:@"Todo" :0];
            break;
    }
}

- (void)returnTask:(Task *)task{
    DetailsViewController *details = [self.storyboard instantiateViewControllerWithIdentifier:@"detailsVC"];
    
    details.task = task;
    [self.navigationController pushViewController:details animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
