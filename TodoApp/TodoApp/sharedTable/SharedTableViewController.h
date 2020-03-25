//
//  SharedTableViewController.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigatationProtocol.h"
@interface SharedTableViewController : UITableViewController
@property NSMutableArray *tasks;
@property long tabIndex;
@property id<NavigatationProtocol> communication;
@end
