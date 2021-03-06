//
//  AppDelegate.m
//  BaiduDot
//
//  Created by 毛健辉 on 16/4/6.
//  Copyright © 2016年 Mao. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "FirstViewController.h"
#import "HomeViewController.h"
#import "ThirdViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSArray *array=@[@"FirstViewController",@"HomeViewController",@"ThirdViewController"];
    NSArray *titleArray=@[@"智能导诊",@"百度医生",@"个人中心"];
    NSMutableArray *controllers=[[NSMutableArray alloc]init];
    for (int i=0; i<array.count; i++) {
        Class class=NSClassFromString(array[i]);
        UIViewController *vc=[[class alloc]init];
        UINavigationController *navi=[[UINavigationController alloc]initWithRootViewController:vc];
        navi.title=titleArray[i];
        [controllers addObject:navi];
    }
    
    self.window=[[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    MainViewController *mainVC=[[MainViewController alloc]init];
    mainVC.viewControllers=controllers;
    self.window.rootViewController=mainVC;
    mainVC.selectedIndex=1;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
