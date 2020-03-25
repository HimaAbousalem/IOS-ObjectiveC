//
//  AppDelegate.m
//  LifeCycle
//
//  Created by Esraa Hassan on 3/6/20.
//  Copyright © 2020 Jets. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    printf("application did finish lunching with options\n");
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application{
    printf("Application will resign active\n");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    printf("application did enter background\n");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    printf("application will enter foreground\n");
}


- (void)applicationDidBecomeActive:(UIApplication *)application{
    printf("application did become active\n");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    printf("application will terminate\n");
}


@end
