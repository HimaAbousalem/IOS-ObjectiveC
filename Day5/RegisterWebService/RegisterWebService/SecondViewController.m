//
//  SecondViewController.m
//  RegisterWebService
//
//  Created by JETS Mobile Lab on 3/11/20.
//  Copyright © 2020 ITI. All rights reserved.
//

#import "SecondViewController.h"
#import "ColleagueClass.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController{
    NSMutableArray *males, *females;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    males = [NSMutableArray new];
    females = [NSMutableArray new];
    ColleagueClass *col1 = [ColleagueClass new];
    col1.name =@"Ahmed";
    col1.age = 20;
    col1.email = @"ahmed@gmail.com";
    col1.address = @"address1";
    ColleagueClass *col2 = [ColleagueClass new];
    col2.name =@"Ibrahim";
    col2.age = 21;
    col2.email = @"ibrahim@gmail.com";
    col2.address = @"address2";
    ColleagueClass *col3 = [ColleagueClass new];
    col3.name =@"Yahya";
    col3.age = 20;
    col3.email = @"yahya@gmail.com";
    col3.address = @"address3";
    ColleagueClass *col4 = [ColleagueClass new];
    col4.name =@"Mona";
    col4.age = 20;
    col4.email = @"mona@gmail.com";
    col4.address = @"address4";
    ColleagueClass *col5 = [ColleagueClass new];
    col5.name =@"Esraaa";
    col5.age = 20;
    col5.email = @"esraa@gmail.com";
    col5.address = @"address5";
    
    [males addObject:col1];
    [males addObject:col2];
    [males addObject:col3];
    [females addObject:col4];
    [females addObject:col5];
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
            cell.textLabel.text = [[males objectAtIndex:indexPath.row] name];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png"]
                              placeholderImage:[UIImage imageNamed:@"placeholder.jpeg"]];
            break;
        case 1:
            cell.textLabel.text = [[females objectAtIndex:indexPath.row] name];
            [cell.imageView sd_setImageWithURL:[NSURL URLWithString:@"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT7WGOjShlnlpZJ8riRToRH6hGSiwITZ6aGr0r0xdwRuoyHBKWB"]
                              placeholderImage:[UIImage imageNamed:@"placeholder.jpeg"]];
            break;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    ThirdViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"thirdVC"];
    ColleagueClass *colleague;
    switch (indexPath.section) {
        case 0:
            colleague = [males objectAtIndex:indexPath.row];
            break;
            
        case 1:
            colleague = [females objectAtIndex:indexPath.row];
            break;
    }
    controller.data = colleague;
    [self.navigationController pushViewController:controller animated:NO];
    
}

@end
