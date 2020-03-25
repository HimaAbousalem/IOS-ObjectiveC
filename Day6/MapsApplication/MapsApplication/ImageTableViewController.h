//
//  ImageTableViewController.h
//  MapsApplication
//
//  Created by Esraa Hassan on 3/22/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommunicationProtocol.h"
@interface ImageTableViewController : UITableViewController
    @property NSMutableArray *imageArray;
    @property id<CommunicationProtocol> communication;
@end
