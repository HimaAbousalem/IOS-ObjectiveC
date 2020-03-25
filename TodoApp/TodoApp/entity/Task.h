//
//  Task.h
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject <NSCoding>
    @property long taskId;
    @property NSString *name;
    @property NSString *desc;
    @property NSString *taskPriority;
    @property NSDate *creationDate;
    @property NSString *status;
@end
