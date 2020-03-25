//
//  Task.m
//  NoteApp
//
//  Created by Esraa Hassan on 3/23/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "Task.h"

@implementation Task

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeInteger:_taskId forKey:@"taskId"];
    [coder encodeObject:_name forKey:@"name"];
    [coder encodeObject:_desc forKey:@"desc"];
    [coder encodeObject:_taskPriority forKey:@"priority"];
    [coder encodeObject:_creationDate forKey:@"creationDate"];
    [coder encodeObject:_status forKey:@"status"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    _taskId = [coder decodeIntegerForKey:@"taskId"];
    _name = [coder decodeObjectForKey:@"name"];
    _desc = [coder decodeObjectForKey:@"desc"];
    _taskPriority = [coder decodeObjectForKey:@"priority"];
    _creationDate = [coder decodeObjectForKey:@"creationDate"];
    _status = [coder decodeObjectForKey:@"status"];
    return self;
}
@end
