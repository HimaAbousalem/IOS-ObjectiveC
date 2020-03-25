//
//  RetainCycleExample.h
//  RetainCycleTest
//
//  Created by Esraa Hassan on 3/6/20.
//  Copyright © 2020 Jets. All rights reserved.
//
@class Book;

#import <Foundation/Foundation.h>

@interface Student : NSObject{
   @public
    NSString *name;
    Book *book;
}

@end

@interface Book : NSObject{
    @public
    NSString *name;
    __weak Student *ownedBy;
}
@end
