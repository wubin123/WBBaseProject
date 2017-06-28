//
//  AppDelegate.m
//  WBBaseProject
//
//  Created by 吴斌 on 2017/6/26.
//  Copyright © 2017年 吴斌. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self wb_createTabbar];
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application{
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application{
}


@end
