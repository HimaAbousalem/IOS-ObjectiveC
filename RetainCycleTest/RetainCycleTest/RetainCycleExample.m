//
//  RetainCycleExample.m
//  RetainCycleTest
//
//  Created by Esraa Hassan on 3/6/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "RetainCycleExample.h"

@implementation Student

-(void)dealloc{
    printf("Class Student deallocated!\n");
}
@end

@implementation Book
-(void) dealloc{
    printf("Class Book deallocated!\n");
}
@end
