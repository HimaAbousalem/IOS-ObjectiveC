//
//  NavigatationProtocol.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/24/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"

@protocol NavigatationProtocol <NSObject>
-(void) returnTask:(Task*) task;


@end
