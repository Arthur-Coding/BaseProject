//
//  AppDelegate.m
//  BaseProject
//
//  Created by ArthurShuai on 2017/3/2.
//  Copyright © 2017年 ArthurShuai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [LSRouter app:application didFinishLaunchingWithOptions:launchOptions];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    [LSRouter appWillResignActive:application];
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [LSRouter appDidEnterBackground:application];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    [LSRouter appWillEnterForeground:application];
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    [LSRouter appDidBecomeActive:application];
}
- (void)applicationWillTerminate:(UIApplication *)application {
    [LSRouter appWillTerminate:application];
}

@end
