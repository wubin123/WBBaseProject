//
//  AppDelegate+Category.m
//  WBBaseProject
//
//  Created by 吴斌 on 2017/6/27.
//  Copyright © 2017年 吴斌. All rights reserved.
//

#import "AppDelegate+Category.h"

/*! 用RDVTabBarController，使用此头文件 */
#import <RDVTabBarController.h>
#import <RDVTabBarItem.h>
#import "BaseNavigationController.h"

#import "HomeViewController.h"
#import "DiscoverViewController.h"
#import "MessageViewController.h"
#import "MyViewController.h"

@implementation AppDelegate (Category)

/**
 *   创建TabVC
 */
- (void)wb_createTabbar{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self setupViewControllers];
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
}

#pragma mark - ***** 使用RDVTabBarController 设置
- (void)setupViewControllers
{
    UIViewController *firstVC = [[HomeViewController alloc] init];
    UIViewController *firstNaviVC = [[BaseNavigationController alloc] initWithRootViewController:firstVC];
    
    UIViewController *secondVC = [[DiscoverViewController alloc] init];
    UIViewController *secondNaviVC = [[BaseNavigationController alloc] initWithRootViewController:secondVC];

    UIViewController *thirdVC = [[MessageViewController alloc] init];
    UIViewController *thirdNaviVC = [[BaseNavigationController alloc] initWithRootViewController:thirdVC];
    
    UIViewController *fourVC = [[MyViewController alloc] init];
    UIViewController *fourNaviVC = [[BaseNavigationController alloc] initWithRootViewController:fourVC];
  
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController setViewControllers:@[firstNaviVC,secondNaviVC,thirdNaviVC,fourNaviVC]];
    self.viewController = tabBarController;
    
    [self customizeTabBarForController:tabBarController];
}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController
{
    NSArray *tabBarItemImages = @[@"tabbar_home", @"tabbar_message_center", @"tabbar_discover", @"tabbar_profile"];
    NSArray *titlesArray = @[@"首页", @"消息", @"发现", @"我的"];
    
    NSInteger index = 0;
    NSDictionary *textAttributes = nil;

    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
        UIImage *selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",[tabBarItemImages objectAtIndex:index]]];
        
        UIImage *unselectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedImage withFinishedUnselectedImage:unselectedImage];
        item.title = [titlesArray objectAtIndex:index];
        textAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize:12],
                           NSForegroundColorAttributeName: [UIColor orangeColor]
                           };
        [item setSelectedTitleAttributes:textAttributes];
        index ++;
    }
    
}

@end
