//
//  ImageTableViewController.m
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "ImageTableViewController.h"
#import "ViewController.h"
@interface ImageTableViewController ()

@end

@implementation ImageTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _imageArray = [NSMutableArray new];
    [_imageArray addObject:@"image1.jpg"];
    [_imageArray addObject:@"image2.jpg"];
    [_imageArray addObject:@"image4.jpg"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_imageArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
    
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    [cell.imageView setImage:[UIImage imageNamed:[_imageArray objectAtIndex:indexPath.row]]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_communication returnImage:[_imageArray objectAtIndex: indexPath.row]];
    [self dismissViewControllerAnimated:YES completion:nil];
}
    
@end
