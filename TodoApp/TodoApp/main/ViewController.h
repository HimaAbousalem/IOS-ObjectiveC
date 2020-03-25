//
//  ViewController.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigatationProtocol.h"
@interface ViewController : UIViewController <UITabBarDelegate, UISearchBarDelegate, NavigatationProtocol>

@property (weak, nonatomic) IBOutlet UITabBar *tabBar;
@property (weak, nonatomic) IBOutlet UISearchBar *searchView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property long tabIndex;

@end

