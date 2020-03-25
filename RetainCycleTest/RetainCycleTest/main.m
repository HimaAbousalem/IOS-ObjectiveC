//
//  main.m
//  RetainCycleTest
//
//  Created by Esraa Hassan on 3/6/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "RetainCycleExample.h"

int main(int argc, const char * argv[]) {
    Student *student = [Student new];
    Book *book = [Book new];
    student->name = @"Ibrahim";
    student->book = book;
    book->name = @"Objective C";
    book->ownedBy = student;
    //book->ownedBy = nil;
    //book = nil;
    //student = nil;
    
    printf("The end of the program!\n");
    return 0;
}
